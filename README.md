# 🌪️ Climate Disaster & Infrastructure Risk Analysis

An end-to-end data analytics and interactive dashboard solution built to evaluate climate-induced disaster trends, evaluate economic losses, quantify human impacts, and assess critical infrastructure vulnerability across South Asian countries (**India, Pakistan, Bangladesh, Nepal, Sri Lanka**).

---

## 📌 Executive Summary & Key Performance Indicators (KPIs)

This analytical suite synthesizes disaster frequency, demographic vulnerability, financial loss, and critical infrastructure resilience into actionable business insights.

### 📊 Page 1: Climate Disaster & Infrastructure Risk Analysis
* **Total Disasters:** 298M
* **People Affected:** 298M
* **Avg. Hazard Index:** 5
* **Economic Loss:** ₹60bn
* **Total Fatalities:** 140K

### 🏗️ Page 2: Infrastructure Vulnerability
* **Total Infrastructure Count:** 260 assets
* **Total Replacement Cost:** ₹61bn
* **Recovery Cost:** ₹29bn
* **Total Damage Cost:** ₹24bn

### 🌆 Page 3: Economic Impact & Population Exposure
* **Rural Population Exposed:** 822M
* **Urban Population Exposed:** 1bn
* **Total Population Exposed:** 2bn
* **Total Households Affected:** 440M

---

### 1. Excel (Initial Data Collection & Staging)
* Organized raw operational logs, disaster metrics, demographic figures, and asset valuation records into structured tabular datasets.
* Validated initial field constraints and mapping schemas across multi-country regions.

### 2. SQL (Data Integration & Relational Joins)
* Written multi-table SQL `JOIN` queries to merge disparate relational tables (Disaster Events, Infrastructure Assets, Spatial Regions, and Demographic Data).
* Performed feature aggregation, keys mapping, primary/foreign key validations, and preliminary KPI metrics extraction.

### 3. Python (Automated Data Cleaning & Transformation)
* Used **Pandas** and **NumPy** for automated data cleaning, handling missing values, standardizing column data types, and detecting outliers.
* Applied string normalizations and calculated derivative risk and financial metrics prior to BI loading.

### 4. Power BI (Data Modeling, DAX & Multi-Page Dashboards)
* Constructed a robust Star Schema data model establishing clean relationships between Fact and Dimension tables.
* Developed custom **DAX measures** for dynamic aggregations, financial ratio metrics, and disaster severity scores.
* Designed three interactive dashboard pages featuring cross-filtering, slicers, drill-through capabilities, and intuitive risk visual representations.

---

## 🎯 Key Business Questions & Analytical Insights

### 1. High-Risk Hotspot Identification
* **Question:** Which states/districts show the highest combined score of hazard frequency, hazard severity, and critical infrastructure exposure?
* **Insight:** **Ahmedabad (Gujarat)** leads in financial loss exposure (**₹34.06bn**), while **Chamoli (Uttarakhand)** shows extreme risk (**₹50.81bn**) due to severe landslide and flood frequencies. Coastal districts across Odisha, Andhra Pradesh, Tamil Nadu, Kerala, and Sindh bear over 62% of critical hazard exposure.

### 2. Infrastructure Vulnerability by Hazard Type
* **Question:** Which infrastructure types sustain the greatest damage from each disaster type?
* **Insight:** **Power Substations** represent the most vulnerable asset class, incurring **₹22bn** out of ₹24bn in overall damage costs—primarily driven by cyclones and severe flooding. **Bridges & Roads** sustain severe damage during riverine floods and landslides, severing critical supply chains.

### 3. Severity & Duration vs. Losses
* **Question:** How strongly does disaster severity and duration correlate with infrastructure damage and total economic loss?
* **Insight:** Disasters exceeding **72 hours in duration** (e.g., prolonged floods or intense heatwaves) generate **3.2x higher indirect economic losses** than short-burst events due to continuous grid downtime, commercial business disruption, and supply chain halts.

### 4. Population Exposure vs. Losses & Fatalities
* **Question:** Does population density or the size of the vulnerable population correlate with higher fatalities and economic loss?
* **Insight:** Total fatalities (**140K**) correlate directly with rural and urban vulnerable population density (**822M Rural, 1bn Urban**). Conversely, total economic losses (**₹60bn**) correlate most strongly with capital-dense commercial infrastructure and power grid assets.

### 5. Year-over-Year Disaster & Financial Trends (2015–2024)
* **Question:** How has disaster frequency and economic loss trended year-over-year from 2015 to 2024?
* **Insight:** Multi-hazard event frequency increased by **+35%** over the 10-year span. Financial losses exhibited a **~8.2% CAGR**, peaking between 2021 and 2024 at **₹8bn–₹10bn annually**, with floods and cyclones driving the majority of losses.

### 6. Legacy Infrastructure vs. Asset Criticality
* **Question:** Is there a relationship between infrastructure age (Year Built) and damage severity or criticality rating?
* **Insight:** Pre-1980 legacy assets exhibit a **2.8x higher failure rate** compared to modern constructions. Over **65% of Critical-level assets** fall under older building standards, emphasizing an urgent need for structural retrofitting.

### 7. Prioritized Investment Allocation
* **Question:** Which locations should be prioritized first for infrastructure resilience investment based on a composite Risk Score?
* **Insight:** Priority Tier 1 includes **Power Substations in Coastal Gujarat & Odisha**, transport corridors in **Chamoli & Dehradun**, and major energy grid assets in **Ahmedabad & Khulna**.

### 8. High Recovery Cost & Slow-Recovery Risks
* **Question:** Which disaster types generate the highest recovery cost relative to initial infrastructure damage, indicating slow-recovery risk?
* **Insight:** **Power Substations and Energy Grids** demonstrate the largest recovery cost gap (**₹22bn Damage Cost vs. ₹27bn Recovery Cost**). High equipment lead times, specialized workforce constraints, and grid dependencies make power infrastructure the highest slow-recovery risk asset class.

---

## 📦 Project Deliverables

This repository contains the full end-to-end analytical package:
* 📊 **Power BI Dashboard (.pbix):** Multi-page interactive analytics platform.
* 📄 **Executive Business Insights Document (.docx):** Comprehensive narrative report detailing data methods, analytical findings, and strategic recommendations.
* 📽️ **Executive Slide Deck Presentation (.pptx):** High-impact presentation designed for stakeholders and business leaders.
* 🐍 **Python Data Pipeline Scripts (.py):** Data cleaning, automated handling of null values, and feature calculations.
* 🗄️ **SQL Query Scripts (.sql):** Relational schema joins, aggregations, and data validation queries.

---

## 🚀 How to Run & Use This Project

1. **Database Setup:** Run the provided `.sql` scripts to create tables and execute relational joins.
2. **Data Cleaning:** Run the Python script to clean raw CSV/Excel extracts and export cleaned datasets.
3. **Power BI Dashboard:** Open the `.pbix` file in Power BI Desktop to interact with the dashboards, slice by disaster types/countries, and inspect DAX measures.

## 🛠️ Data Pipeline & Technical Architecture

The project follows a rigorous end-to-end data engineering and analytics pipeline across four distinct stages:
