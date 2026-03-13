# 🚲 Cyclistic Bike-Share Case Study (Dec 2023 – Jan 2025)

**Author:** Nikki Carlson  
**Tools:** R (tidyverse, lubridate, janitor), Tableau, RMarkdown  
**Status:** Completed project

---

## 📌 Project Overview

This case study analyzes **14 months of Cyclistic bike-share trip data** (Dec 2023 – Jan 2025) containing over **6.2 million ride records**.  

The goal is to identify behavioral differences between **casual riders and annual members** in order to support data-driven marketing strategies that increase membership conversions.

---

## 🔗 Project Links

📊 **Interactive Tableau Dashboard**  
https://public.tableau.com/app/profile/nikki.carlson2355/viz/CyclisticUsageInsights/CyclisticUserBehaviorAnalysis2024  

📄 **Full RMarkdown Report (RPubs)**  
https://rpubs.com/Nikki0686/1334937  

---

## 🔍 Business Questions

This analysis focuses on three key questions:

* How do casual and member riders differ in their riding patterns?
* When do peak usage times occur by hour, day, and season?
* What behavioral trends can support targeted marketing and rider conversion?

---

## 🪚 Data Cleaning

The dataset required several preparation steps before analysis:

* Combined **14 monthly CSV files** (Dec 2023 – Jan 2025)
* Standardized inconsistent timestamp formats
* Filtered rides **under 3 minutes** or **over 24 hours**
* Removed invalid or missing station coordinate records
* Engineered analytical features including:
  * ride_length (minutes)
  * hour_of_day
  * day_of_week
  * season
  * week_start

The final dataset contains approximately **5.99 million valid ride records**.

---

## 📊 Visual Analysis

The Tableau dashboard highlights key usage patterns including:

* Peak ride hours by rider type
* Ride duration comparisons (member vs casual)
* Day-of-week riding behavior
* Seasonal ride volume trends
* Monthly ridership patterns

---

## 🧠 Key Findings

| Insight | Business Relevance |
|-------|----------------|
| Casual riders peak on weekends and midday | Suggests recreational usage patterns |
| Members ride consistently during weekday commuting hours | Indicates commuter-focused behavior |
| Casual rides tend to last longer | Recreational riders may benefit from flexible membership offers |
| Summer shows the highest casual ridership | Seasonal promotions may improve membership conversion |

---

## 🗺️ Strategic Recommendations

* Launch **weekend promotions** targeting recreational riders
* Offer **seasonal or short-term membership plans**
* Use **post-ride conversion offers** for frequent casual riders
* Highlight commuter savings in **in-app membership messaging**

---

## 🔄 Data Pipeline

1. **Data Ingestion**  
   Load 14 monthly CSV files from the Divvy dataset.

2. **Cleaning & Transformation**
   * Timestamp standardization  
   * Ride length filtering  
   * Feature engineering

3. **Export**
   * Create Tableau-ready summary datasets
   * Export cleaned dataset for reproducibility

4. **Visualization**
   * Build interactive dashboard in Tableau

---

## 📂 Repository Structure
