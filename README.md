# healthcare-analytics-excel-sql-powerbi
Healthcare Analytics Dashboard analyzing 10K patient records to uncover insights on diagnoses, follow-up rates (49.84%), treatment costs, and 5M revenue. Built interactive KPIs and visualizations to support data-driven decision-making and optimize healthcare operations.

# Project Overview
This project analyzes healthcare data of 10K patients to generate actionable insights on diagnosis trends, follow-up rates, treatment costs, and overall revenue performance. An interactive dashboard was built to support data-driven decision-making in healthcare operations.

# Business Problem / Objective
The objective of this project is to:
Monitor hospital performance using KPIs
Analyze common diagnoses and patient demographics
Evaluate follow-up engagement rate
Understand treatment cost distribution
Support revenue optimization strategies

# Dataset Description
This project uses a relational healthcare dataset consisting of five interconnected tables: Patient, Doctor, Visit, Treatments, and Lab Results. The data represents hospital operations, patient interactions, medical treatments, and diagnostic outcomes.
  # Dataset Structure
Patient     – Contains demographic details such as Patient ID, age, gender, race, blood type, medical history, and insurance information.
Doctor      – Includes doctor details such as Doctor ID, name, specialty, and department.
Visit       – Stores visit-level information including visit date, reason for visit, status, and associated patient & doctor IDs.
Treatments  – Contains treatment type, cost, and visit linkage for financial analysis.
Lab Results – Includes diagnostic test names and result status (Normal, Abnormal, Pending).
  # Data Relationships
One Patient can have multiple Visits.
Each Visit is associated with one Doctor.
Each Visit can include multiple Treatments and Lab Results.
# Tools & Technologies Used
Excel (Data Handling & Cleaning)
SQL (Data Querying & KPI Calculation)
Power BI (Dashboard Development)
Data Visualization Techniques
KPI Analysis

# Dashboard Preview
<img width="1366" height="768" alt="Screenshot (130)" src="https://github.com/user-attachments/assets/c69074ac-ca09-4388-87fe-69203eb15fca" />
<img width="1366" height="768" alt="Screenshot (131)" src="https://github.com/user-attachments/assets/b6738135-944b-492e-af82-b73e14034e5e" />

# Key Insights
10K Patients | 10K Visits | 1K Doctors – Balanced operational scale
Avg Age: 48.94 yrs – High chronic & diagnostic care demand
Follow-Up Rate: 49.84% – Moderate retention, improvement scope
Cancellation Rate: 32.66% – Operational inefficiency & revenue risk
Peak Month: August (898 visits, 474K revenue) | Lowest: April (775 visits, 411K revenue)
10K Lab Tests | 33.54% Pending – Diagnostic delays observed
Top Revenue Treatments: Vaccination & Surgery
Most Demanded Specialty: General Medicine (21.7%)
Treatment Success Rate: ~33% (Lower in Diabetes & Hypertension)
Total Revenue: 5.25M – Optimization opportunity in chronic care

# Strategic Recommendations
Reduce appointment cancellations and improve follow-up adherence through automated reminder systems and structured patient engagement.
Strengthen chronic disease management programs to improve treatment success rates and long-term patient outcomes.
Optimize lab operations to minimize pending results and enhance clinical decision-making speed.
Leverage EMR analytics to identify high-risk patients and enable proactive healthcare interventions.
Improve cost efficiency and align pricing strategies to ensure sustainable revenue growth.




Each Visit can include multiple Treatments and Lab Results.
