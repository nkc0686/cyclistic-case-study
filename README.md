# 🚲 Cyclistic Bike-Share Case Study (Dec 2023 – Jan 2025)

**Author:** Nikkole (Nikki) Carlson  
**Last Updated:** May 2025  
**Tools Used:** R (tidyverse, lubridate, janitor), Tableau, RMarkdown

---

## 📌 Project Overview

This case study analyzes over **6.2 million ride records** from Cyclistic, a fictional bike-share program in Chicago. The analysis explores behavioral differences between casual riders and annual members to support a **data-driven marketing strategy** aimed at increasing long-term membership.

---

## 🔍 Key Questions

- How do casual and member riders differ in ride time, day, and season?
- When and where are the highest usage patterns occurring?
- What trends can Cyclistic use to inform targeted promotions?

---

## 🧹 Data Cleaning Summary

- Merged 14 months of `.csv` trip data (Dec 2023 – Jan 2025)
- Standardized inconsistent timestamps (12hr/24hr format)
- Filtered rides under 3 minutes or over 24 hours
- Removed invalid stations (e.g., located in Lake Michigan)
- Engineered new fields: ride length, season, hour of day, week start

---

## 📊 Visualizations

An interactive Tableau dashboard highlights time-based usage trends:

- ⏰ Peak ride hours by rider type  
- ⏳ Ride duration distribution (member vs. casual)  
- 📅 Weekly and seasonal trends  
- 📈 Day-of-week and time-of-day usage patterns  

**🖼️ Dashboard Preview:**  
`Tableau_Dashboarrd_Cyclist_Dashboard_Pic.png`

---

## 🌐 Live Links

- 🔗 [Interactive Tableau Dashboard](https://public.tableau.com/app/profile/nikki.carlson2355/viz/CyclisticUsageInsights/CyclisticUserBehaviorAnalysis2024)  
- 📄 [Full RMarkdown Report on RPubs](https://rpubs.com/Nikki0686/1312027)

---

## 🧠 Key Findings

| Insight                            | Business Relevance                         |
|------------------------------------|---------------------------------------------|
| Casual riders prefer weekends/midday | Target recreational users with weekend promos |
| Members ride weekday mornings       | Align campaigns with commuter patterns       |
| Summer usage spikes sharply         | Run seasonal membership campaigns            |
| Casual hotspots = tourist areas     | Use geo-targeted ads in summer zones         |

---

## 🧭 Strategic Recommendations

- Offer **in-app promotions** during weekend afternoons
- Target **ads near tourist hotspots** during summer
- Incentivize **weekday riding** to build commuter habits

---

## 🔮 Future Enhancements

- Add demographic overlays (age, zip code)
- Use time-series forecasting for seasonal trends
- Apply anomaly detection to flag outliers or misuse

---

## 🗂️ Files Included

- `cyclistic_case_study.Rmd` — full R code for analysis and cleaning  
- `bike_lake_michigan_chicago.png` — intro visual used in report  
- `Tableau_Dashboard_Cyclist_Data.png` — dashboard preview screenshot  
- *(Optional)* `Cyclistic-Bike-Share-Case-Study.html` — knit output for offline viewing  

### 📁 Data Summaries (for Tableau)

Located in the `/data` folder:

- `tableau_top20_station_map.csv` – Top 20 end stations for bar chart  
- `tableau_ride_length_histogram.csv` – Ride length summary binned for histogram  
- `tableau_weekly_rides.csv` – Weekly ride volume for time trend  
- `tableau_hourly_usage.csv` – Hourly ride volume by rider type  

> ❗ **Note:** Original Divvy trip data is not included due to size (6.2M+ records).  
> Source: [Divvy Bike Share Open Data](https://divvy-tripdata.s3.amazonaws.com/index.html)

---

## 👋 Contact

📧 nkc0686@yahoo.com  
🔗 [LinkedIn](https://linkedin.com/in/nikkole-carlson-20a58046)  
🔗 [GitHub Profile](https://github.com/nkc0686)


