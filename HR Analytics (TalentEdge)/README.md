# TalentEdge Corp — HR Employee Analytics SQL Project

A complete SQL project built on a fictional HR analytics use case for TalentEdge Corp, showcasing real-world database design, data modeling, and workforce insights using MySQL.

---

##  Overview

TalentEdge Corp is a rapidly expanding technology and e-commerce services company operating across six major cities in India. Over the past three financial years, the organization has experienced significant growth, scaling its workforce from 300 to 1,200 employees. While this expansion reflects strong business performance, it has also introduced complex workforce challenges related to employee retention, compensation fairness, and operational efficiency.

As the organization grows, managing human capital effectively has become critical. Leadership now requires data-driven insights to understand workforce dynamics, optimize hiring strategies, and improve employee satisfaction and retention.

---

##  Problem Statement

Despite its growth, TalentEdge Corp is facing a serious attrition challenge. The company reported a **22% voluntary attrition rate in FY 2023–24**, significantly higher than the industry benchmark of 12%. This gap represents not only a competitive disadvantage but also a substantial financial burden. Each employee exit costs the company approximately **1.5 times the annual salary**, factoring in recruitment expenses, onboarding efforts, productivity loss, and the erosion of institutional knowledge.

In addition to attrition, two critical concerns have emerged from internal analysis:

- **Gender Pay Gap:** Female engineers in product and platform teams earn, on average, **11% less** than their male counterparts in similar roles, raising concerns about pay equity and organizational fairness.

- **Loss of High Performers:** Employees with consistently high performance ratings (≥ 4.5) are leaving the organization within six months at a rate **three times higher** than the company average. This trend signals a failure to retain top talent, which can directly impact innovation and business growth.

To address these issues, the analytics team has been tasked with analyzing four years of HR data to answer key business questions related to attrition, compensation, performance, hiring efficiency, and organizational structure. The findings will support leadership decisions ahead of the upcoming board review.

---

## Database

**Database Name** : talentedge_db  
**Tool Used**     : MySQL Workbench  
**SQL Version**   : MySQL 8.0  

---

## Tables

| Table                  | Description                                      |
|-----------------------|--------------------------------------------------|
| departments           | Department details, budget, and location         |
| employees             | Employee master data with reporting hierarchy    |
| performance_reviews   | Employee performance ratings                     |
| leaves                | Leave and absenteeism records                    |
| attrition             | Employee exit data and reasons                   |
| hiring                | Recruitment pipeline and candidate stages        |

---

## Analysis Queries

| #  | Query Name                         | Business Purpose                                      |
|----|----------------------------------|------------------------------------------------------|
| 1  | Attrition Rate by Department     | Identify departments with high employee turnover     |
| 2  | Attrition by Tenure Band         | Understand when employees are most likely to leave   |
| 3  | Salary Distribution             | Analyze compensation across job roles                |
| 4  | Gender Pay Gap                  | Detect pay inequality across genders                |
| 5  | High Performers vs Salary       | Identify underpaid top performers                   |
| 6  | Org Hierarchy                   | Visualize reporting structure                       |
| 7  | Manager Attrition Impact        | Evaluate managers based on team attrition           |
| 8  | Hiring Funnel Conversion        | Track candidate drop-offs                           |
| 9  | Recruitment Source Performance  | Measure hiring channel effectiveness                |
| 10 | Monthly Headcount Trend         | Monitor hiring vs attrition trends                  |
| 11 | Budget Utilisation              | Compare salary cost vs department budget            |
| 12 | Leave Absenteeism              | Analyze leave patterns                             |

---

## Query Documentation (Detailed Explanation)

### 1. Attrition Rate by Department
**Purpose:** Identify departments with the highest turnover.  
**Logic:** Combines employee and attrition data using joins and calculates attrition percentage.  
**Insight:** Helps HR prioritize retention strategies.

---

### 2. Attrition by Tenure Band
**Purpose:** Determine when employees are most likely to leave.  
**Logic:** Uses `DATEDIFF` and `CASE WHEN` to group employees into tenure categories.  
**Insight:** Early attrition indicates onboarding or engagement issues.

---

### 3. Salary Distribution by Job Title
**Purpose:** Analyze salary structure across roles.  
**Logic:** Uses aggregate functions (`MIN`, `AVG`, `MAX`) and calculates salary range.  
**Insight:** Identifies compensation gaps.

---

### 4. Gender Pay Gap by Job Title
**Purpose:** Detect pay disparity across genders.  
**Logic:** Conditional aggregation to calculate average salary difference.  
**Insight:** Supports diversity and pay equity initiatives.

---

### 5. High Performers vs Salary
**Purpose:** Identify compensation mismatch.  
**Logic:** Compares employee salary with peer average and performance ratings.  
**Insight:** Flags underpaid high performers and overpaid low performers.

---

### 6. Organizational Hierarchy
**Purpose:** Visualize reporting structure.  
**Logic:** Uses self-joins to create multi-level hierarchy.  
**Insight:** Helps understand leadership structure.

---

### 7. Manager Attrition Impact
**Purpose:** Measure manager effectiveness.  
**Logic:** Calculates attrition within teams under each manager.  
**Insight:** Identifies managers with high turnover.

---

### 8. Hiring Funnel Conversion
**Purpose:** Track candidate journey.  
**Logic:** Groups candidates by stage and calculates percentages.  
**Insight:** Highlights recruitment bottlenecks.

---

### 9. Recruitment Source Performance
**Purpose:** Evaluate hiring channels.  
**Logic:** Compares applications, hires, and time-to-hire metrics.  
**Insight:** Optimizes sourcing strategy.

---

### 10. Monthly Headcount Trend
**Purpose:** Monitor workforce growth.  
**Logic:** Compares hires vs exits month-wise.  
**Insight:** Tracks organizational expansion or contraction.

---

### 11. Budget Utilisation
**Purpose:** Analyze financial efficiency.  
**Logic:** Compares total salaries with department budgets.  
**Insight:** Identifies overspending or underutilization.

---

### 12. Leave Absenteeism
**Purpose:** Understand leave patterns.  
**Logic:** Aggregates leave days and categorizes leave types.  
**Insight:** Detects absenteeism trends and workforce health.

---

## ⚙️ How to Run

**Step 1 →** Open MySQL Workbench  
**Step 2 →** Run `01_schema.sql` (create database & tables)  
**Step 3 →** Run `02_data.sql` (insert data)  
**Step 4 →** Run `03_analysis.sql` (execute queries)  

---

## 🧠 Key Concepts Used

- JOINS (INNER, LEFT, SELF JOIN)  
- GROUP BY & AGGREGATIONS  
- FOREIGN KEYS & RELATIONAL DESIGN  
- DATE FUNCTIONS (`DATEDIFF`, `DATE_FORMAT`)  
- CASE WHEN (conditional logic)  
- SUBQUERIES & CORRELATED QUERIES  
- NULL HANDLING (`NULLIF`)  

---

##  Key Findings

- High attrition observed in early tenure (0–2 years)  
- Certain managers contribute to higher employee exits  
- Gender pay gap exists in technical roles  
- High performers show compensation mismatch (flight risk)  
- LinkedIn and referrals are top hiring sources  
- Hiring funnel shows drop-offs at interview stage  
- Some departments exceed budget utilization  
- Leave patterns indicate department-level absenteeism trends  

---

##  Author

**Neeraj Thakur**  
tneeraj80@gmail.com
