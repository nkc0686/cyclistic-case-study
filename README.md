# 🚲 Cyclistic Bike-Share Case Study (Dec 2023 – Jan 2025)

**Author:** Nikkole (Nikki) Carlson
**Last Updated:** July 2025
**Tools Used:** R (tidyverse, lubridate, janitor), Tableau, RMarkdown
**🌟 Status:** Completed | 📁 Repository organized and documented for employer review

---

## 📌 Project Overview

This case study analyzes 14 months of Cyclistic bike-share trip data (Dec 2023 – Jan 2025) totaling over 6.2 million records. The goal is to identify behavior patterns between casual and member riders to support a data-driven marketing strategy that increases memberships.

---

## 🔍 Key Business Questions

* How do casual and member riders differ in ride time, day, and season?
* When are the peak usage times, and how do they vary by rider type?
* What trends can support targeted promotions or rider conversion?

---

## 🪚 Data Cleaning Summary

* Combined 14 monthly .csv files (Dec 2023 – Jan 2025)
* Standardized inconsistent timestamps (mix of 12-hour and 24-hour formats)
* Filtered rides under 3 minutes or over 24 hours
* Removed invalid station coordinates (e.g., in Lake Michigan or buildings)
* Engineered key features:

  * Ride length (in minutes)
  * Hour of day, day of week, and season
  * Week start and ride date
* Cleaned column names and rider labels for consistency

---

## 📊 Visualizations

An interactive Tableau dashboard showcases:

* ⏰ Peak ride hours by rider type
* ⌛ Ride duration by user type (box plot)
* 📅 Weekly and seasonal usage patterns
* ↑ Hour-of-day and day-of-week trends

### 🖼️ Dashboard Preview

View the full interactive dashboard on Tableau Public: Cyclistic User Behavior Analysis 2024

---

## 🌐 Live Project Links

* 🔗 [Interactive Tableau Dashboard](https://public.tableau.com/app/profile/nikki.carlson2355/viz/CyclisticUsageInsights/CyclisticUserBehaviorAnalysis2024)
* 📄 [Full RMarkdown Report on RPubs](https://rpubs.com/Nikki0686/1312027)

---

## 🧠 Key Findings

| Insight                                    | Business Relevance                            |
| ------------------------------------------ | --------------------------------------------- |
| Casual riders peak on weekends and midday  | Target recreational users with weekend promos |
| Members ride mostly on weekday mornings    | Align campaigns with commuter habits          |
| Summer has highest casual usage            | Offer seasonal membership incentives          |
| Tourist hotspots show most casual activity | Use geo-targeted ads and signage              |

---

## 🗺️ Strategic Recommendations

* Launch weekend discounts and in-app promos near tourist areas
* Offer flexible trial memberships during summer events
* Use weekday commuter incentives
* Send post-ride nudges to frequent casual riders to promote conversion

---

## 🤮 Future Enhancements

* Merge with demographic overlays (age, ZIP code)
* Add seasonal demand forecasting
* Use anomaly detection to flag misuse or outliers

---

## 📂 Project Files

### Scripts

* `scripts/cyclistic_case_study.R` – Main R script (cleaning, transformation, and CSV export)

### Visual Assets

* `visuals/bike_lake_michigan_chicago.png` – Chicago lakefront image for report intro
* `screenshots/Tableau_Dashboard_Cyclist_Data.png` – Dashboard screenshot

### Summary Data for Tableau (in `/data/summary/`)

* `tableau_top20_station_map.csv`
* `tableau_ride_length_histogram.csv`
* `tableau_weekly_summary.csv`
* `tableau_hourly_by_date.csv`
* `tableau_dayofweek_summary.csv`
* `tableau_ride_length_boxplot.csv`
* `tableau_ride_length_box_summary.csv`
* `tableau_bike_preference_summary.csv`
* `tableau_top10_station_combined.csv`

> ⚠️ **Note:** Raw data files (\~6.2M rows) are not stored in this repo due to size.
> Download them from the [Divvy Trip Data Portal](https://divvy-tripdata.s3.amazonaws.com/index.html)

---

## 📅 Report Access

* View the full report on RPubs: [https://rpubs.com/Nikki0686/1312027](https://rpubs.com/Nikki0686/1312027)
*  Explore the interactive Tableau dashboard:
https://public.tableau.com/app/profile/nikki.carlson2355/viz/CyclisticUsageInsights/CyclisticUserBehaviorAnalysis2024
* *(Optional)* HTML/PDF version available upon request
