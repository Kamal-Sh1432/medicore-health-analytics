
   # **DATA VALIDATION & QUALITY CHECKS**
   ## **Project: Patient Operations & Revenue Analytics Platform**
   ## **Purpose: Ensure data reliability for analytics & reporting**


### **1. CHECK FOR DUPLICATE APPOINTMENTS**


SELECT
    appointment_id,
    COUNT(*) AS record_count
FROM healthcare_analytics.fact_appointments
GROUP BY appointment_id
HAVING COUNT(*) > 1;



## **2. CHECK FOR NULL CRITICAL KEYS**

SELECT
    COUNT(*) AS missing_keys_count
FROM healthcare_analytics.fact_appointments
WHERE appointment_id IS NULL
   OR patient_id IS NULL
   OR doctor_id IS NULL
   OR department_id IS NULL
   OR hospital_id IS NULL;


## **3. INVALID APPOINTMENT STATUS VALUES**

SELECT DISTINCT
    appointment_status
FROM healthcare_analytics.fact_appointments
WHERE appointment_status NOT IN ('Attended', 'No-Show', 'Cancelled');


## **4. NEGATIVE OR INVALID WAIT TIMES**

SELECT
    appointment_id,
    wait_time_minutes
FROM healthcare_analytics.fact_appointments
WHERE wait_time_minutes < 0;


## **5. REVENUE ANOMALY CHECK**

SELECT
    appointment_id,
    revenue_amount
FROM healthcare_analytics.fact_appointments
WHERE revenue_amount < 0;


## **6. ORPHAN RECORD CHECK (DIMENSION INTEGRITY)**

SELECT
    COUNT(*) AS orphan_patient_records
FROM healthcare_analytics.fact_appointments f
LEFT JOIN dim_patient p
    ON f.patient_id = p.patient_id
WHERE p.patient_id IS NULL;


## **7. PREDICTIVE SCORE RANGE VALIDATION**

SELECT
    appointment_id,
    no_show_risk_score
FROM healthcare_analytics.fact_appointments
WHERE no_show_risk_score < 0
   OR no_show_risk_score > 1;
