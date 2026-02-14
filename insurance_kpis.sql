-- =========================================
-- Insurance Cost Analysis - KPIs (SQLite)
-- =========================================

-- 1) Überblick: Grundlegende Kennzahlen
SELECT
    COUNT(*)                AS n_customers,
    ROUND(AVG(charges), 2)  AS avg_charges,
    ROUND(MIN(charges), 2)  AS min_charges,
    ROUND(MAX(charges), 2)  AS max_charges
FROM insurance;


-- 2) Kosten nach Raucherstatus
SELECT
    smoker,
    COUNT(*)               AS n_customers,
    ROUND(AVG(charges), 2) AS avg_charges,
    ROUND(SUM(charges), 2) AS total_charges
FROM insurance
GROUP BY smoker
ORDER BY avg_charges DESC;


-- 3) Kosten nach Region
SELECT
    region,
    COUNT(*)               AS n_customers,
    ROUND(AVG(charges), 2) AS avg_charges,
    ROUND(SUM(charges), 2) AS total_charges
FROM insurance
GROUP BY region
ORDER BY avg_charges DESC;


-- 4) Altersgruppen
SELECT
    CASE
        WHEN age < 30 THEN 'Under 30'
        WHEN age BETWEEN 30 AND 39 THEN '30–39'
        WHEN age BETWEEN 40 AND 49 THEN '40–49'
        WHEN age BETWEEN 50 AND 59 THEN '50–59'
        ELSE '60+'
    END AS age_group,
    COUNT(*)               AS n_customers,
    ROUND(AVG(charges), 2) AS avg_charges
FROM insurance
GROUP BY age_group
ORDER BY age_group;


-- 5) Kombination: Altersgruppe × Raucherstatus
SELECT
    CASE
        WHEN age < 30 THEN 'Under 30'
        WHEN age BETWEEN 30 AND 39 THEN '30–39'
        WHEN age BETWEEN 40 AND 49 THEN '40–49'
        WHEN age BETWEEN 50 AND 59 THEN '50–59'
        ELSE '60+'
    END AS age_group,
    smoker,
    COUNT(*)               AS n_customers,
    ROUND(AVG(charges), 2) AS avg_charges
FROM insurance
GROUP BY age_group, smoker
ORDER BY age_group, smoker;


-- 6) BMI-Kategorien
SELECT
    CASE
        WHEN bmi < 18.5 THEN 'Underweight'
        WHEN bmi BETWEEN 18.5 AND 24.9 THEN 'Normal'
        WHEN bmi BETWEEN 25 AND 29.9 THEN 'Overweight'
        ELSE 'Obese'
    END AS bmi_category,
    COUNT(*)               AS n_customers,
    ROUND(AVG(charges), 2) AS avg_charges
FROM insurance
GROUP BY bmi_category
ORDER BY avg_charges DESC;