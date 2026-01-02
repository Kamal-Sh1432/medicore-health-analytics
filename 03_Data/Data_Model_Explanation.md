## **Data Model Overview**

The analytics solution is built on a **star-schema-based logical data model**, with appointments as the core business event.

---

## **Fact Table**
### healthcare_analytics.fact_appointments

This table represents the **atomic grain** of the model:
- One row per appointment per scheduled slot

It serves as the foundation for:
- No-show analysis
- Wait time tracking
- Doctor utilization
- Revenue and leakage analysis
- Predictive no-show modeling

---

## **Logical Dimensions**
The following dimensions are logically derived from the data model:

- **Patient** (age group, behavior)
- **Doctor** (specialization, employment type, utilization)
- **Department**
- **Hospital**
- **Date / Time Slot**

These dimensions enable flexible slicing and drill-down across dashboards.

---

## **Analytical Views**
Several analytical views were created in Power BI to simplify reporting and improve performance:

- vw_department_performance
- vw_doctor_utilization
- vw_hospital_performance
- vw_patient_behavior
- vw_slot_wait_analysis
- vw_executive_kpis

These views are **derived aggregations** built on top of the fact table and are used exclusively for BI consumption.

---

## **Predictive Integration**
Predictive outputs are generated at the **appointment level** and linked using `appointment_id`, enabling risk-based operational decisions without altering the core fact table.

---

## **Design Rationale**
Appointments were selected as the fact table because all key KPIs and predictive insights originate from appointment-level behavior.

This design ensures:
- Consistent metric calculation
- High BI performance
- Scalability for future enhancements
