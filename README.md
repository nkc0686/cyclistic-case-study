# 🚲 Cyclistic Bike-Share Case Study (Dec 2023 – Jan 2025)

**Author:** Nikkole (Nikki) Carlson  
**Last Updated:** May 2025  
**Tools Used:** R (tidyverse, lubridate, janitor), Tableau, RMarkdown

---

## 📌 Project Overview

This case study analyzes over **6.2 million ride records** from Cyclistic, a fictional bike-share program in Chicago. The goal is to uncover behavioral differences between casual riders and annual members to support a data-driven marketing strategy: **convert more casual riders into long-term members.**

---

## 🔍 Key Questions

- How do casual and member riders differ in ride time, day, and season?
- When and where are the highest usage patterns occurring?
- What trends can Cyclistic use to inform targeted promotions?

---

## 🧹 Data Cleaning Summary

- Merged 14 months of `.csv` trip data (Dec 2023 – Jan 2025)
- Standardized inconsistent timestamps (12hr/24hr mix)
- Filtered rides <3 minutes or >24 hours
- Removed invalid locations (e.g., stations in Lake Michigan)
- Created new fields: ride length, season, hour of day, week start

---

## 📊 Visualizations

An interactive Tableau dashboard was created to visualize time-based usage patterns:

- Peak ride hours by rider type
- Ride duration distribution (members vs. casual)
- Weekly and seasonal ride trends
- Day-of-week usage breakdown

📷 **Dashboard Preview:**  
*(See image: `Tableau_Dashboard_Cyclist_Data.png`)*

---

## 🌐 Live Links

- 🔗 [Interactive Tableau Dashboard](https://public.tableau.com/app/profile/nikki.carlson2355/viz/CyclisticUsageInsights/CyclisticUserBehaviorAnalysis2024)
- 📄 [Full RMarkdown Report on RPubs](https://rpubs.com/Nikki0686/1312027)

---

## 🧠 Key Findings

| Insight                                 | Business Relevance                      |
|----------------------------------------|------------------------------------------|
| Casual riders prefer weekends/midday   | Market toward recreational users         |
| Members ride weekday mornings          | Align with commuter incentives           |
| Summer usage spikes sharply            | Plan seasonal membership campaigns       |
| Casual hotspots = tourist areas        | Use geo-targeted ads during tourist season |

---

## 🧭 Strategic Recommendations

To increase casual-to-member conversion:

- Offer in-app promotions during weekend afternoons
- Target ads near tourist zones during summer
- Incentivize weekday riding to build commuter habits

---

## 🔮 Future Enhancements

- Add demographic overlays (age, zip code)
- Apply time-series forecasting for seasonal trends
- Use anomaly detection for ride pattern irregularities

---

## 🗂️ Files Included

- `cyclistic_case_study.Rmd` – full analysis code
- `bike_lake_michigan_chicago.png` – intro image
- `Tableau_Dashboard_Cyclist_Data.png` – dashboard preview
- *(Optional)* `.html` knit of RMarkdown for local viewing

---

## 👋 Contact

Feel free to connect or reach out:

📧 nkc0686@yahoo.com  
🔗 [LinkedIn Profile](https://linkedin.com/in/nikkole-carlson-20a58046)
