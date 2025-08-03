# 📜 Scripts Folder - Cyclistic Case Study

This folder contains R scripts used to clean, transform, and summarize Divvy trip data (Dec 2023–Jan 2025) for Tableau visualization.

## 🧪 Script Purpose

**`cyclistic_data_prep.R`**

- Loads all monthly Divvy trip files from `data/raw/`
- Parses and cleans timestamps
- Filters out outlier rides (less than 3 or over 1440 minutes)
- Creates new time-based features (`season`, `hour_of_day`, `day_of_week`, etc.)
- Generates multiple summary files and exports them to `data/summary/`:
  - Weekly, monthly, and seasonal summaries
  - Hourly breakdown by date
  - Ride length boxplot data and summary
  - Histogram of ride lengths
  - Station usage rankings (Top 10/20)

## 📂 File Structure

- `data/raw/` – Place public Divvy CSVs here ([Download link](https://divvy-tripdata.s3.amazonaws.com/index.html))
- `data/summary/` – Script-generated summary outputs
- `visuals/` – Contains static plot images (e.g., violin plot)

## 💡 Notes

- All visualizations are Tableau-ready
- Raw CSVs are not stored in the repository (due to size); see the download link above
- Output summaries are used in the final Tableau dashboard

## 🛠️ Requirements

Ensure the following R packages are installed:

```r
install.packages(c("tidyverse", "lubridate", "readr", "janitor", "ggplot2", "leaflet"))
