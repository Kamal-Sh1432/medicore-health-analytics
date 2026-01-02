# **BUSINESS QUERIES**
## **Project: Patient Operations & Revenue Analytics Platform**
## **Purpose: Executive KPIs, RCA insights, and dashboard support**
  

## **1. APPOINTMENT VOLUME & STATUS OVERVIEW**
   Business Question:
   How many appointments are completed, no-shows, or cancelled?

SELECT
    appointment_status,
    COUNT(*) AS appointment_count
FROM healthcare_analytics.fact_appointments
GROUP BY appointment_status;


## **2. NO-SHOW RATE (RCA: High No-Show Percentage)**
   Business Question:
   What is the overall no-show rate?

SELECT
    ROUND(
        SUM(CASE WHEN appointment_status = 'No-Show' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS no_show_percentage
FROM healthcare_analytics.fact_appointments;


## **3. NO-SHOW RATE BY DEPARTMENT**
   Business Question:
   Which departments contribute most to no-shows?

SELECT
    d.department_name,
    COUNT(*) AS total_appointments,
    SUM(CASE WHEN f.appointment_status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(
        SUM(CASE WHEN f.appointment_status = 'No-Show' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS no_show_percentage
FROM healthcare_analytics.fact_appointments f
JOIN dim_department d
    ON f.department_id = d.department_id
GROUP BY d.department_name
ORDER BY no_show_percentage DESC;


## **4. AVERAGE PATIENT WAIT TIME (RCA: Excessive Wait Time)**
   Business Question:
   What is the average wait time overall?

SELECT
    ROUND(AVG(wait_time_minutes), 2) AS avg_wait_time_minutes
FROM healthcare_analytics.fact_appointments
WHERE appointment_status = 'Attended';


## **5. WAIT TIME BY TIME SLOT**
   Business Question:
   Which slots experience the highest delays?

SELECT
    slot_type,
    ROUND(AVG(wait_time_minutes), 2) AS avg_wait_time_minutes
FROM healthcare_analytics.fact_appointments
WHERE appointment_status = 'Attended'
GROUP BY slot_type
ORDER BY avg_wait_time_minutes DESC;


/* ---------------------------------------------------------
   6. DOCTOR UTILIZATION (RCA: Uneven Utilization)
   Business Question:
   How evenly are appointments distributed across doctors?
--------------------------------------------------------- */

SELECT
    d.doctor_id,
    d.specialization,
    COUNT(f.appointment_id) AS total_appointments
FROM healthcare_analytics.fact_appointments f
JOIN dim_doctor d
    ON f.doctor_id = d.doctor_id
WHERE f.appointment_status = 'Attended'
GROUP BY d.doctor_id, d.specialization
ORDER BY total_appointments DESC;


## **7. REVENUE LEAKAGE (RCA: Revenue Loss)**
   Business Question:
   How much revenue is lost due to no-shows?

SELECT
    ROUND(SUM(revenue_amount), 2) AS revenue_lost
FROM healthcare_analytics.fact_appointments
WHERE appointment_status = 'No-Show';


## **8. REVENUE BY HOSPITAL**
   Business Question:
   Which hospitals generate the highest revenue?

SELECT
    h.hospital_name,
    ROUND(SUM(f.revenue_amount), 2) AS total_revenue
FROM healthcare_analytics.fact_appointments f
JOIN dim_hospital h
    ON f.hospital_id = h.hospital_id
WHERE f.appointment_status = 'Attended'
GROUP BY h.hospital_name
ORDER BY total_revenue DESC;


## **9. PREDICTIVE RISK DISTRIBUTION**
   Business Question:
   How many appointments fall into each risk category?

SELECT
    risk_category,
    COUNT(*) AS appointment_count
FROM healthcare_analytics.fact_appointments
GROUP BY risk_category
ORDER BY appointment_count DESC;


## **10. HIGH-RISK NO-SHOW IMPACT**
   Business Question:
   How much potential revenue is at risk from high-risk appointments?

SELECT
    COUNT(*) AS high_risk_appointments,
    ROUND(SUM(revenue_amount), 2) AS potential_revenue_at_risk
FROM healthcare_analytics.fact_appointments
WHERE risk_category = 'High';
