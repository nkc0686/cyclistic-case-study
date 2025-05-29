# 🚲 Cyclistic Bike-Share Case Study (Dec 2023 – Jan 2025)

**Author:** Nikkole (Nikki) Carlson  
**Last Updated:** May 2025  
**Tools Used:** R (tidyverse, lubridate, janitor), Tableau, RMarkdown

---

## 📌 Project Overview

This case study analyzes over **6.2 million ride records** from Cyclistic, a fictional bike-share program in Chicago. The goal is to uncover behavioral differences between **casual riders and annual members** in order to support the company’s marketing strategy: **convert more casual riders into long-term members.**

---

## 🔍 Key Questions

- How do casual and member riders differ in terms of ride time, day, and season?
- What trends can Cyclistic use to inform targeted promotions?
- When and where are the highest usage patterns occurring?

---

## 🧹 Data Cleaning Summary

- Merged 14 months of `.csv` trip data (Dec 2023 – Jan 2025)
- Standardized inconsistent timestamps and formats
- Filtered rides outside expected duration (under 3 minutes or over 24 hours)
- Removed bad station data (e.g., locations in Lake Michigan)
- Created new fields for **ride length**, **season**, **hour of day**, and **week start**

---

## 📊 Visualizations

An interactive Tableau dashboard was created to visualize key time-based trends:

- Peak ride hours by rider type
- Ride length distribution by member vs. casual
- Weekly usage trends and seasonal volume
- Day-of-week and time-of-day comparisons

📷 **Dashboard Preview:**  
![Tableau Dashboard Screenshot](Tableau_Dashboard_Cyclist_Data.png)

🌐 **Live Dashboard (Tableau Public):**  
[View Dashboard](https://public.tableau.com/app/profile/nikki.carlson2355/viz/CyclisticUsageInsights/CyclisticUserBehaviorAnalysis2024)
 
📄 View Full RMarkdown Report  
Published to RPubs for full transparency and reproducibility:  
🔗 [Cyclistic Case Study – RMarkdown Report (RPubs)](https://rpubs.com/Nikki0686/1312027)

---

## 🧠 Key Findings

| Insight                             | Business Relevance              |
|-------------------------------------|----------------------------------|
| Casual riders prefer weekends/midday | Market toward recreational users |
| Members ride weekday mornings        | Align with commuter incentives   |
| Summer usage spikes sharply          | Ideal for seasonal campaigns     |
| Top casual stations = tourist zones  | Use geotargeted marketing        |

---

## 🧭 Strategic Recommendation

To increase membership conversion, Cyclistic should:
- Run **in-app promotions** during casual-heavy weekend hours
- Focus marketing around **tourist locations** in summer
- Incentivize weekday use for casual riders to create routine behavior

---

## 🔮 Future Enhancements

- Incorporate **demographic overlays** (age, gender, zip code)
- Use **time-series forecasting** to predict seasonal surges
- Explore **anomaly detection** to flag outliers or misuse

---

## 🗂️ Files Included

- `cyclistic_case_study.Rmd` – full RMarkdown analysis
- `bike_lake_michigan_chicago.png` – intro visual
- `Tableau_Dashboard_Cyclist_Data.png` – dashboard preview image
- Optional HTML or PDF knit output

---

## 👋 Contact

Feel free to reach out with questions or feedback:  
📧 nkc0686@yahoo.com  
🔗 [LinkedIn](https://www.linkedin.com/in/nikkicarlson)

---


