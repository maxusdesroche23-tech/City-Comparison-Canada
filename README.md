# City Comparison in Canada (2021)

This project analyzes and compares key socio-economic indicators across major Canadian cities using 2021 datasets.  
The goal is to help visualize differences in income, rent, job availability, cost of living, and general affordability.

---

## 📌 Overview

This analysis focuses on understanding which cities offer a better balance between **income, rent, inflation, and economic growth**.  
All data used corresponds to **2021**, with the option to add an evolution section comparing income vs. inflation over time.

The project aims to answer:

- How do Canadian cities compare in cost of living?
- Which cities are more affordable when factoring income and rent?
- What economic categories differ the most across regions?

---

## 🏙️ Cities Included

Top 10 cities selected for comparison:

- Toronto  
- Montreal  
- Vancouver  
- Calgary  
- Edmonton  
- Winnipeg  
- Ottawa  
- Quebec City  
- Halifax  
- Moncton *(replacing Hamilton)*

These cities were chosen due to population size, economic activity, and data availability.

---

## 📊 Data Sources

All datasets follow 2021 data from:

- **Statistics Canada**
- **Government of Canada Open Data**
- **City-level municipal open data portals**

Included variables:

- Median household income  
- Average monthly rent  
- Labour force participation  
- Employment rate  
- Occupations by category  
- Population and demographic indicators  
- Cost of living components  
- Inflation (optional extension)

---

## 📁 Project Structure
City-Comparison-Canada/
│
├── data/ # All raw .csv datasets (2021)
├── notebooks/ # R or Python notebooks for analysis
├── scripts/ # Data cleaning and processing scripts
├── visuals/ # Exported plots and charts (PNG, PDF)
└── README.Rmd # Source file to generate README and PDF


---

## 🧠 Methods

The analysis includes:

### **1. Data cleaning & standardization**
- Removing missing values  
- Harmonizing city names across datasets  
- Converting all values to comparable units (income, rent, etc.)

### **2. Statistical comparison**
- Mean, median, and variance across cities  
- Ranking tables (income, rent, affordability)

### **3. Affordability Index**

A core metric used:
Disposable Income = Median Income – (Average Rent × 12


This gives a direct measure of *how much income remains* after housing costs.

### **4. Visualizations**
- Bar charts comparing income and rent  
- Scatterplots of affordability vs. population  
- Rankings by economic indicators  
- Optional: Inflation vs income evolution (future update)

---

## 📝 How to Use README.Rmd

The file `README.Rmd` contains:

- The full Markdown structure  
- Code chunks for graphs  
- The instructions to generate the PDF version  

To knit:

1. Open the file in RStudio  
2. Install required packages (`tidyverse`, `ggplot2`, `knitr`, etc.)  
3. Click **Knit** → generates HTML/PDF automatically

---

## 🎯 Project Objective

To provide a clear and data-driven comparison that helps answer:

- Which Canadian cities offer a better quality of life?
- How does rent affect affordability across regions?
- Are smaller cities like Moncton becoming more competitive?
- How do income and housing costs interact?

This project is also designed as part of a **data analytics portfolio**, demonstrating skills in:

- Data processing  
- Visualization  
- Comparative analysis  
- R Markdown reporting  
- Reproducible research  

---

## 📬 Author

**Max Desroches**  
2025





# City-Comparison-Canada
