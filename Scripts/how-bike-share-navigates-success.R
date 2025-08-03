# Cyclistic Bike-Share Case Study
# ===============================
# Goal: Analyze member vs. casual rider behavior to support marketing strategy

# 📦 Load required libraries
library(tidyverse)
library(lubridate)
library(readr)
library(janitor)
library(ggplot2)
library(leaflet)

# 📁 Load and combine monthly trip data from public CSVs
files <- list.files("data/raw/", pattern = "*divvy-tripdata.csv", full.names = TRUE)

# 🌐 Data Source: https://divvy-tripdata.s3.amazonaws.com/index.html
combined_data_df_cleaned <- files %>%
  map(read_csv) %>%
  keep(~"started_at" %in% names(.)) %>%
  map_dfr(~ .x %>%
    mutate(
      started_at = parse_date_time(started_at, orders = c("ymd HMS", "mdy HMS", "mdY HMS", "Ymd HMS")),
      ended_at   = parse_date_time(ended_at,   orders = c("ymd HMS", "mdy HMS", "mdY HMS", "Ymd HMS")),
      ride_length = as.numeric(difftime(ended_at, started_at, units = "mins")),
      day_of_week = weekdays(as.Date(started_at)),
      hour_of_day = hour(started_at),
      season = case_when(
        month(started_at) %in% c(12, 1, 2) ~ "Winter",
        month(started_at) %in% c(3, 4, 5) ~ "Spring",
        month(started_at) %in% c(6, 7, 8) ~ "Summer",
        TRUE ~ "Fall"
      )
    )
  ) %>%
  filter(!is.na(ride_length) & ride_length >= 3 & ride_length <= 1440) %>%
  mutate(
    member_casual = as.factor(member_casual),
    season        = factor(season, levels = c("Winter", "Spring", "Summer", "Fall")),
    day_of_week   = factor(day_of_week, levels = c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")),
    ride_date     = as.Date(started_at),
    week_start    = floor_date(ride_date, unit = "week")
  )

# Optional: Save cleaned dataset (excluded from GitHub due to size)
# saveRDS(combined_data_df_cleaned, file = "data/processed/combined_data_df_cleaned.rds")

# 🧰 Helper Functions -----------------------------------------------------

create_time_summary <- function(df, time_unit = "week", export_name = NULL) {
  summary_df <- df %>%
    mutate(period = floor_date(started_at, unit = time_unit)) %>%
    group_by(period, member_casual) %>%
    summarise(
      total_rides     = n(),
      avg_ride_length = round(mean(ride_length, na.rm = TRUE), 2),
      .groups = "drop"
    )
  if (!is.null(export_name)) write_csv(summary_df, file.path("data/summary", paste0(export_name, ".csv")))
  return(summary_df)
}

create_seasonal_summary <- function(df, export_name = NULL) {
  df %>%
    group_by(season, member_casual) %>%
    summarise(
      total_rides     = n(),
      avg_ride_length = round(mean(ride_length, na.rm = TRUE), 2),
      .groups = "drop"
    ) %>%
    { if (!is.null(export_name)) write_csv(., file.path("data/summary", paste0(export_name, ".csv"))); . }
}

create_hourly_by_date_summary <- function(df, export_name = NULL) {
  df %>%
    filter(!is.na(ride_date)) %>%
    group_by(ride_date, season, hour_of_day, member_casual) %>%
    summarise(
      total_rides     = n(),
      avg_ride_length = round(mean(ride_length, na.rm = TRUE), 2),
      .groups = "drop"
    ) %>%
    { if (!is.null(export_name)) write_csv(., file.path("data/summary", paste0(export_name, ".csv"))); . }
}

create_dayofweek_summary <- function(df, export_name = NULL) {
  df %>%
    group_by(week_start, day_of_week, member_casual) %>%
    summarise(
      total_rides     = n(),
      avg_ride_length = round(mean(ride_length, na.rm = TRUE), 2),
      .groups = "drop"
    ) %>%
    { if (!is.null(export_name)) write_csv(., file.path("data/summary", paste0(export_name, ".csv"))); . }
}

# 📊 Export Tableau Summaries --------------------------------------------

create_seasonal_summary(combined_data_df_cleaned, "tableau_seasonal_summary")
create_hourly_by_date_summary(combined_data_df_cleaned, "tableau_hourly_by_date")
create_dayofweek_summary(combined_data_df_cleaned, "tableau_dayofweek_summary")
create_time_summary(combined_data_df_cleaned, "week",  "tableau_weekly_summary")
create_time_summary(combined_data_df_cleaned, "month", "tableau_monthly_summary")

# 🚲 Bike type preference summary
bike_pref_summary <- combined_data_df_cleaned %>%
  group_by(member_casual, rideable_type) %>%
  summarise(count = n(), .groups = "drop") %>%
  group_by(member_casual) %>%
  mutate(percentage = round(count / sum(count) * 100, 1))
write_csv(bike_pref_summary, "data/summary/tableau_bike_preference_summary.csv")

# 📦 Boxplot summary data
ride_length_box_data <- combined_data_df_cleaned %>%
  filter(ride_length <= 90) %>%
  select(ride_id, member_casual, season, ride_date, ride_length)
write_csv(ride_length_box_data, "data/summary/tableau_ride_length_boxplot.csv")

ride_length_box_summary <- combined_data_df_cleaned %>%
  filter(ride_length <= 90) %>%
  group_by(season, member_casual) %>%
  summarise(
    count  = n(),
    min    = min(ride_length),
    q1     = quantile(ride_length, 0.25),
    median = median(ride_length),
    q3     = quantile(ride_length, 0.75),
    max    = max(ride_length),
    .groups = "drop"
  )
write_csv(ride_length_box_summary, "data/summary/tableau_ride_length_box_summary.csv")

# 📉 Ride length histogram
ride_length_histogram <- combined_data_df_cleaned %>%
  filter(ride_length <= 90) %>%
  mutate(
    ride_length_bin = cut(ride_length, breaks = seq(0, 90, by = 5), include.lowest = TRUE, right = FALSE)
  ) %>%
  group_by(ride_length_bin, member_casual) %>%
  summarise(count = n(), .groups = "drop")
write_csv(ride_length_histogram, "data/summary/tableau_ride_length_histogram.csv")

# 🗺️ Station usage for bar & map
station_usage_base <- combined_data_df_cleaned %>%
  filter(!is.na(start_station_name) & !is.na(start_lat) & !is.na(end_lat)) %>%
  select(member_casual, start_station_name, start_lat, start_lng,
         end_station_name, end_lat, end_lng) %>%
  pivot_longer(
    cols = c(start_station_name, end_station_name),
    names_to = "station_role", values_to = "station_name"
  ) %>%
  mutate(
    lat = ifelse(station_role == "start_station_name", start_lat, end_lat),
    lng = ifelse(station_role == "start_station_name", start_lng, end_lng)
  ) %>%
  select(member_casual, station_name, lat, lng) %>%
  group_by(member_casual, station_name, lat, lng) %>%
  summarise(ride_count = n(), .groups = "drop") %>%
  arrange(member_casual, desc(ride_count))

top_station_usage <- station_usage_base %>% group_by(member_casual) %>% slice_max(ride_count, n = 10)
write_csv(top_station_usage, "data/summary/tableau_top10_station_combined.csv")

top_station_usage_map <- station_usage_base %>% group_by(member_casual) %>% slice_max(ride_count, n = 20)
write_csv(top_station_usage_map, "data/summary/tableau_top20_station_map.csv")

# 🎻 Violin Plot – Save PNG (for Tableau or markdown)
ggplot(ride_length_box_data, aes(x = member_casual, y = ride_length, fill = member_casual)) +
  geom_violin(trim = FALSE, alpha = 0.7) +
  stat_summary(fun = "median", geom = "point", shape = 23, size = 2, fill = "white") +
  labs(
    title = "Ride Length Distribution by Rider Type",
    y = "Ride Length (minutes)", x = "Rider Type"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

ggsave("visuals/ride_length_violin_plot.png", width = 7, height = 5, dpi = 300)

cat("✅ All station summary files exported successfully on", format(Sys.time(), "%Y-%m-%d %H:%M:%S"), "\n")

