# MediCore Health Analytics  
### End-to-End Healthcare Analytics & Predictive BI Platform

---

## Project Overview

This project represents a **real-world healthcare analytics engagement**, designed to improve **patient operations, revenue protection, and clinical capacity planning** through data-driven insights and predictive analytics.

The solution demonstrates **end-to-end analytics delivery** — from business problem identification and root cause analysis to SQL-driven insights, Power BI dashboards, and AI-based actioning.

> **Important Note (NDA Compliance):**  
> The organization name **“MediCore Health Services Pvt. Ltd.”** is used **for reference purposes only**.  
> All data has been **anonymized and masked** to comply with confidentiality and NDA obligations, while preserving real business logic and decision-making outcomes.

---

## Business Problems Addressed

Healthcare leadership was facing multiple operational and financial challenges:

- High **appointment no-show rates**
- Excessive **patient wait times**
- **Revenue leakage** due to missed appointments
- Uneven **doctor utilization**
- Lack of **proactive, data-driven decision-making**

This project was built to **diagnose root causes** and enable **measurable operational improvements**.

---

## Solution Approach 

The solution was delivered using an **Agile / Scrum methodology**, with insights and dashboards released incrementally across sprints.

### Key Approach Highlights
- Business-first problem framing (CEO / COO perspective)
- Root Cause Analysis (RCA) before dashboard development
- Appointment-level data modeling
- SQL-driven KPI validation
- Power BI dashboards designed for **decision-making**, not just reporting
- Predictive analytics to enable **proactive intervention**

---

## Data Model & Architecture

- **Core Fact Table:** Appointment-level data  
- **Grain:** One row per appointment per scheduled slot  
- **Analytical Views:** Power BI–based aggregation views for performance and usability  
- **Predictive Layer:** AI-based no-show risk scoring at appointment level  

**Reference Folder:**
03_Data/

├── Data_Model_Explanation.md

└── PowerBI_Model_View.png


---

## Dashboards Delivered (8 Total)

The project includes **8 Power BI dashboards**, each designed to answer a specific business question:

### Executive Performance Overview  
**Audience:** CEO, COO  
- Total appointments and trends  
- No-show percentage  
- Average patient wait time  
- Total revenue  
- Doctor utilization percentage  

---

### Revenue Leakage & Recovery  
**Audience:** Finance Head, Leadership  
- Revenue leakage percentage  
- Revenue lost due to no-shows  
- Recoverable revenue (medium-risk appointments)  

---

### Appointment Flow & Bottlenecks  
**Audience:** Operations Head  
- Department-level wait time bottlenecks  
- No-show rate by slot type  
- Average wait time by slot  
- Doctor utilization vs patient wait time  

---

###  Doctor Utilization & Capacity Planning  
**Audience:** Medical Director, Operations  
- Doctor utilization % by individual doctor  
- Doctor load vs daily capacity  
- Utilization vs no-show relationship  
- Utilization by employment type (Full-Time vs Visiting)  

---

### AI No-Show Prediction & Actioning  
**Audience:** Leadership, Operations  
- Elevated-risk appointments  
- Prediction confidence distribution  
- Risk bucket distribution (Low / Medium)  
- Actual vs predicted no-show outcomes  

---

### Patient Behavior & Risk Segmentation  
**Audience:** Operations, CX Teams  
- No-show rate trend across age groups  
- Patient volume by age group  
- No-show comparison by patient segment  

---

### Agile Delivery & Analytics Adoption Summary  
**Audience:** Leadership  
- Sprints completed  
- Dashboards delivered  
- Stakeholders impacted  
- Sprint-wise dashboard delivery  
- Sprint-wise reduction in no-show rate  

---

### Management Action & Business Impact  
**Audience:** CEO, COO  
- Appointments requiring intervention  
- Revenue at risk  
- Primary operational bottlenecks  
- Expected business impact (next 90 days)  
- Action items with ownership  

**Reference Folder:**
06_Dashboards/

├── Dashboard_Overview.md

└── Dashboard_Screenshots/


---

## SQL & Data Validation

SQL was used extensively to:
- Calculate executive KPIs
- Support Root Cause Analysis (RCA)
- Validate data quality before reporting

**Reference Folder:**
04_SQL/

├── Business_Queries.sql

└── Data_Validation.sql

---

## Predictive Analytics (AI No-Show Model)

- Appointment-level no-show risk prediction  
- Risk scoring between **0 and 1**, grouped into Low / Medium categories  
- Used to identify **appointments requiring proactive intervention**  
- Enables **revenue recovery without increasing capacity**

Predictive insights are embedded directly into Power BI dashboards to support operational action.

---

## Business Impact (Projected)

Based on analytics and AI-driven interventions:

- **8–12% reduction in appointment no-shows**
- **₹5.2M+ potential revenue recovery**
- Reduced patient wait times
- Improved doctor workload balance
- Shift from reactive reporting to **proactive decision-making**

---

## Repository Structure

MediCore-Health-Analytics/

├── 01_Business_Context/

│ ├── BRD.md

│ ├── FRD.md

│ ├── SRS.md

│ └── RCA_Patient_Operations_and_Revenue.md

│
├── 03_Data/

│ ├── Data_Model_Explanation.md

│ └── PowerBI_Model_View.png

│
├── 04_SQL/

│ ├── Business_Queries.sql

│ └── Data_Validation.sql

│
├── 06_Dashboards/

│ ├── Dashboard_Overview.md

│ └── Dashboard_Screenshots/

│
└── README.md


---

## Data Confidentiality & NDA Compliance

This project reflects **real-world healthcare analytics and business scenarios** derived from an **actual enterprise engagement**.

To comply with **NDA and confidentiality obligations**:
- The company name is used for reference purposes only  
- All sensitive and identifiable information has been anonymized or masked  
- Business logic and analytical outcomes remain realistic and enterprise-grade  

This work demonstrates **practical decision-making**, not hypothetical or academic examples.

---

## Author

**Kamal Sharma**  
**Senior Business Analyst | Analytics Consultant**

This project reflects hands-on experience in **enterprise analytics delivery**, combining business analysis, SQL, Power BI, and predictive analytics.

---

## Why This Project Matters

This engagement demonstrates how analytics goes beyond dashboards to:
- Solve real operational problems  
- Support leadership-level decisions  
- Deliver measurable business value  

---
