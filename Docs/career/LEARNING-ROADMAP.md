# 🚀 DATA ENGINEERING LEARNING ROADMAP
## Bijoy Nandi's Journey to Data Engineer

**Start Date:** March 10, 2026 (Week 2 of March)
**Target Completion:** End of August 2026 (~6 months)
**Goal:** Junior Data Engineer Position (Remote)

---

## 📅 TIMELINE OVERVIEW

```
March 10 - April 30:  SQL Mastery (7 weeks)
May 1 - May 31:        Python for DE (4 weeks)  
June 1 - June 30:      Apache Airflow (4 weeks)
July 1 - July 31:      dbt (Data Build Tool) (4 weeks)
August 1 - August 31:  Portfolio Polish + Applications

September 17-25:       Moving to Ghaziabad, UP
October:               Settling down + Final prep
November:              Resume, applications, INTERVIEWS
December 2026:         JOB OFFERS! 🎯
```

---

## 🎯 PHASE 1: SQL MASTERY (7 weeks)
### March 10 - April 30, 2026

### Week 1-2: SQL Foundation Review

**Resources:**
- ✅ Review your 600 pages of handwritten SQL notes
- ✅ Baraa's 30h SQL course (weak areas only)
  - URL: https://youtu.be/SSKVgrwhzus

**Focus Areas:**
- Window Functions (your strength!)
- CTEs and Subqueries
- Indexes and Performance
- Data Warehouse concepts (Medallion architecture)

**Time:** 15-20 hours total

---

### Week 3-5: Luke's SQL for Data Engineering

**Primary Resource:**
- ✅ Luke Barousse's SQL for DE (14.5 hours)
  - URL: https://youtu.be/UjhFbq4uU2Y
  - GitHub: https://lukeb.co/sql-de-github

**What You'll Learn:**
- SQL & Dataset Setup
- Basic Keywords
- Comparison & Logical Operators
- Wildcards & Aliases
- Arithmetic Operators
- Aggregate Functions
- Terminal & Local DuckDB
- VS Code Integration
- Data Modeling (Part 1 & 2)
- JOINs
- Order of Execution

**Advanced Topics:**
- Data Types
- DDL & DML
- Subqueries and CTEs
- CASE Expressions
- Date Functions
- SET Operators
- Text & NULL Functions
- Window Functions
- Nested Functions

**Projects:**
1. **Project #1: Exploratory Data Analysis**
   - In-Demand Skills analysis
   - Highest Paying Skills
   - Most Optimal Skills
   - README.md + GitHub

2. **Project #2: Data Warehouse & ETL Pipeline** ⭐
   - Build Data Warehouse
   - Build Flat Table Mart
   - Build Skills Mart
   - Build Priority Mart
   - Production-level ETL!

**Time:** 40-50 hours

---

### Week 6-7: Baraa's Data Warehouse Project (Optional)

**Resource:**
- ✅ Baraa's DWH Project (4.5 hours)
  - Full Bronze → Silver → Gold implementation
  - Medallion Architecture
  - Real production patterns

**Topics Covered:**
- Data Architecture Design
- Naming Conventions
- Git Repository Setup
- Bronze Layer (Raw data ingestion)
- Silver Layer (Data cleaning & transformation)
- Gold Layer (Star Schema modeling)
- Dimension Tables (Customers, Products)
- Fact Tables (Sales)
- Data Catalog
- Data Flow Documentation

**Time:** 15-20 hours

**Note:** Do this if you finish Luke's projects early. If time is tight, Luke's Project #2 is sufficient!

---

### 📝 Deliverables - SQL Phase:
- ✅ 2 GitHub Projects (Luke's #1 and #2)
- ✅ Comprehensive README files
- ✅ Clean, documented SQL code
- ✅ Understanding of Data Warehouse concepts

---

## 🐍 PHASE 2: PYTHON FOR DATA ENGINEERING (4 weeks)
### May 1 - May 31, 2026

### Week 1: Baraa's Python Beginner Course

**Resource:**
- ✅ Baraa's 13h Python Course
  - URL: https://youtu.be/Rq5gJVxz55Q?si=f_aJnoBvTnsYui--

**Topics (All 8 Chapters):**
1. Python Fundamentals
2. Strings
3. Numbers
4. Logic & Operators
5. Conditional Statements
6. Loops
7. Data Structures (Lists, Tuples, Sets, Dicts)
8. Functions

**Learning Style:**
- ✅ Hand-drawn visuals (Baraa's specialty!)
- ✅ Handwritten notes (your preference!)
- ✅ Built-in challenges (practice immediately!)
- ✅ Complete each chapter before moving on

**Time:** 15-20 hours

---

### Week 2: Luke's Python for Data Analytics

**Resource:**
- ✅ Luke's Python Course (11 hours)
  - URL: https://youtu.be/wUSDVGivd-8?si=kxl7a1wUogIXbnXP

**Focus Areas:**
- ✅ NumPy Intro
- ✅ Pandas (CRITICAL!)
  - Intro, Inspection, Cleaning, Analysis
  - Accessing Data
  - Data Cleaning
  - Data Management
  - Pivot Tables
  - Index Management
  - Merge DataFrames
  - Concat DataFrames
  - Exporting Data
  - Applying Functions
  - Explode

**SKIP:**
- Matplotlib deep dive (not DE-critical)
- Seaborn (nice to have, not essential)

**DO:**
- All pandas sections
- All exercises
- Final project

**Time:** 15-20 hours

---

### Week 3: Python for DE Specific

**Resources:**
- ✅ Dr. Chuck's Python for Everybody (specific sections)
  - Reading Files (3:27:33)
  - Databases section (9:20:44) ← VERY IMPORTANT!
  - Code samples: emaildb.py, tracks.py

**Topics to Practice:**

**A. File Handling:**
```python
# CSV processing
import csv
import pandas as pd

# JSON processing  
import json

# Read CSV
df = pd.read_csv('data.csv')

# Write JSON
data.to_json('output.json')
```

**B. Database Connections:**
```python
# PostgreSQL connection
import psycopg2

conn = psycopg2.connect(
    host="localhost",
    database="mydb",
    user="postgres",
    password="password"
)

# Execute queries
cur = conn.cursor()
cur.execute("SELECT * FROM table")
results = cur.fetchall()
```

**C. pandas → PostgreSQL:**
```python
from sqlalchemy import create_engine

engine = create_engine('postgresql://user:pass@localhost/db')
df.to_sql('table_name', engine, if_exists='replace')
```

**Time:** 10-15 hours

---

### Week 4: Python ETL Project

**Goal:** Build complete ETL pipeline

**Project Structure:**
```
python-etl-project/
├── data/
│   ├── raw/           # Source CSV files
│   ├── processed/     # Transformed data
│   └── logs/          # Process logs
├── src/
│   ├── extract.py     # Data extraction
│   ├── transform.py   # Data transformation
│   ├── load.py        # Data loading
│   └── main.py        # Orchestration
├── config/
│   └── config.yaml    # Configuration
├── tests/
│   └── test_etl.py    # Unit tests
├── README.md          # Documentation
└── requirements.txt   # Dependencies
```

**Pipeline Features:**
- ✅ Extract data from multiple CSV files
- ✅ Transform using pandas
  - Data cleaning
  - Type validation
  - Missing value handling
  - Business logic application
- ✅ Load to PostgreSQL
  - Error handling
  - Transaction management
  - Logging
  - Success/failure tracking

**Documentation:**
- Clear README.md
- Setup instructions
- Usage examples
- Architecture diagram (Draw.io)

**Time:** 15-20 hours

---

### 📝 Deliverables - Python Phase:
- ✅ 1 GitHub Project (Python ETL Pipeline)
- ✅ Production-ready code
- ✅ Error handling & logging
- ✅ Comprehensive documentation

---

## ⚡ PHASE 3: APACHE AIRFLOW (4 weeks)
### June 1 - June 30, 2026

### Week 1-2: Learning Airflow

**Resources:**

**1. Marc Lamberti (Primary)**
- YouTube: "Apache Airflow Marc Lamberti"
- He's THE Airflow expert!
- Free tutorials + comprehensive courses

**2. Official Airflow Documentation**
- https://airflow.apache.org/docs/
- Tutorials section
- Best practices

**3. FreeCodeCamp (if available)**
- Search: "Apache Airflow freecodecamp"

**Topics to Master:**

**A. Core Concepts:**
- What is Airflow?
- Architecture & Components
- DAGs (Directed Acyclic Graphs)
- Operators (Bash, Python, SQL, etc.)
- Tasks & Dependencies
- XComs (cross-communication)

**B. Practical Skills:**
- Installing Airflow
- Configuration
- Creating DAGs
- Scheduling (cron expressions)
- Monitoring & Logging
- Connection Management
- Variable & Secret Management

**C. Advanced Topics:**
- TaskFlow API
- Dynamic DAGs
- Sensors
- Trigger Rules
- Branching
- SubDAGs

**Time:** 25-30 hours

---

### Week 3-4: Airflow Project

**Goal:** Build orchestrated ETL pipeline

**Project: Daily Sales Data Pipeline**

**Architecture:**
```
Extract → Transform → Load → Validate → Alert
```

**DAG Structure:**
```python
# daily_sales_etl_dag.py

Tasks:
1. extract_data
   - Pull from multiple sources
   - API, CSV, Database

2. validate_extraction
   - Check data quality
   - Row counts, nulls

3. transform_data  
   - Clean & standardize
   - Apply business rules
   
4. load_to_staging
   - Load to staging table
   
5. transform_to_mart
   - Create analytics tables
   
6. data_quality_check
   - Validate final results
   
7. send_success_email
   - Notify completion

8. send_failure_email (on error)
   - Alert on failures
```

**Features:**
- ✅ Daily scheduling
- ✅ Multiple data sources
- ✅ Data quality checks
- ✅ Error handling
- ✅ Email alerts (success/failure)
- ✅ Logging & monitoring
- ✅ Retry logic
- ✅ SLA monitoring

**Documentation:**
- DAG diagram
- Setup guide
- Configuration details
- Troubleshooting

**Time:** 20-25 hours

---

### 📝 Deliverables - Airflow Phase:
- ✅ 1 GitHub Project (Airflow DAG)
- ✅ Production-ready orchestration
- ✅ Complete documentation
- ✅ Monitoring & alerting setup

---

## 🔧 PHASE 4: DBT (DATA BUILD TOOL) (4 weeks)
### July 1 - July 31, 2026

### Week 1-2: Learning dbt

**Resources:**

**1. dbt Official Documentation (Primary)**
- https://docs.getdbt.com/
- Getting Started
- Best Practices
- Jinja & Macros

**2. dbt Labs YouTube**
- Official dbt Labs channel
- Coalesce conference talks
- Best practices videos

**3. Data with Baraa (if available)**
- Check for dbt content

**Topics to Master:**

**A. Core Concepts:**
- What is dbt?
- Models (SQL files)
- Sources & Seeds
- Tests (data quality)
- Documentation
- Materializations (view, table, incremental)
- Ref & Source functions

**B. Project Structure:**
```
dbt_project/
├── models/
│   ├── staging/      # Raw → Clean
│   ├── intermediate/ # Business logic
│   └── marts/        # Final tables
├── tests/
├── macros/
├── seeds/
└── dbt_project.yml
```

**C. Advanced Topics:**
- Jinja templating
- Macros (reusable code)
- Incremental models
- Snapshots (SCD Type 2)
- Hooks (pre/post-operations)
- Packages

**Time:** 25-30 hours

---

### Week 3-4: dbt Project

**Goal:** Build transformation pipeline

**Project: Data Warehouse Transformations**

**Architecture: Medallion + dbt**
```
Bronze (Raw) → Silver (Staging) → Gold (Marts)
                    ↑
                   dbt
```

**Models Structure:**
```
models/
├── staging/
│   ├── stg_customers.sql
│   ├── stg_products.sql
│   └── stg_orders.sql
│
├── intermediate/
│   ├── int_customer_orders.sql
│   └── int_product_sales.sql
│
└── marts/
    ├── finance/
    │   └── fct_sales.sql
    └── marketing/
        ├── dim_customers.sql
        └── customer_lifetime_value.sql
```

**Features:**
- ✅ Source freshness checks
- ✅ Data quality tests
  - Unique
  - Not null
  - Accepted values
  - Relationships
- ✅ Custom tests
- ✅ Documentation
  - Auto-generated docs
  - Column descriptions
  - Model lineage
- ✅ Incremental loads
- ✅ Macros for reusability

**Time:** 20-25 hours

---

### 📝 Deliverables - dbt Phase:
- ✅ 1 GitHub Project (dbt transformations)
- ✅ Tests on all models
- ✅ Complete documentation
- ✅ Data lineage diagram

---

## 🎨 PHASE 5: PORTFOLIO POLISH (4 weeks)
### August 1 - August 31, 2026

### Week 1: Individual Project Polish

**Task:** Review and enhance all 4 projects

**For Each Project:**
1. **Code Quality**
   - Clean, readable code
   - Consistent formatting
   - Comments where needed
   - No debug code left

2. **README Enhancement**
   - Clear project description
   - Architecture diagram
   - Setup instructions
   - Usage examples
   - Technologies used
   - Challenges faced
   - Future improvements

3. **Visual Assets**
   - Architecture diagrams (Draw.io)
   - Screenshots
   - Data flow diagrams
   - Results/outputs

4. **GitHub Polish**
   - Proper .gitignore
   - Requirements.txt / environment.yml
   - Professional commit messages
   - Topics/tags added

---

### Week 2: Capstone Project (Combined)

**Goal:** Demonstrate mastery of all tools

**Project: End-to-End Data Engineering Pipeline**

**Architecture:**
```
Source Systems
     ↓
Extract (Python)
     ↓
Orchestrate (Airflow DAG)
     ↓
Load (PostgreSQL)
     ↓
Transform (dbt)
     ↓
Analytics (SQL queries)
     ↓
Documentation & Monitoring
```

**Features:**
- ✅ Multiple data sources (CSV, API, Database)
- ✅ Python extraction scripts
- ✅ Airflow orchestration (daily schedule)
- ✅ PostgreSQL data warehouse
- ✅ dbt transformations (Bronze → Silver → Gold)
- ✅ Data quality tests
- ✅ Monitoring & alerting
- ✅ Complete documentation

**This Project Shows:**
- Full DE pipeline
- All tools integrated
- Production-ready approach
- Problem-solving skills
- Documentation ability

---

### Week 3: GitHub Profile & Resume

**GitHub Profile Setup:**
1. **Profile README** (bijoynandi repo)
   - Introduction
   - Tech stack
   - Current focus
   - Contact info

2. **Pinned Repositories**
   - Pin your 5 best projects
   - Order by impressiveness

3. **Profile Picture**
   - Use "BN" logo (professional!)

4. **Profile Completeness**
   - Bio: "Aspiring Data Engineer | SQL · Python · Airflow · dbt"
   - Location: India
   - Website: LinkedIn profile

**Resume Creation:**
- Use Codebasics Resume Checklist
- ATS-friendly format
- Skills section (SQL, Python, PostgreSQL, DuckDB, Airflow, dbt, Git, Linux)
- Projects section (5 projects with links)
- Education (B.Sc., ECIL-ECIT Diploma)
- Keep it to 1 page!

---

### Week 4: LinkedIn & Application Prep

**LinkedIn Updates:**
1. Update headline
2. Add projects to Featured section
3. Update skills
4. Write posts about your journey
5. Connect with Data Engineers

**Application Materials:**
1. Cover letter template
2. List of target companies
3. Job search strategy
4. Interview prep plan

---

### 📝 Final Portfolio:
```
Portfolio:
1. SQL: Data Warehouse & ETL (Luke's Project #2)
2. Python: ETL Pipeline
3. Airflow: Orchestrated Pipeline
4. dbt: Data Transformations
5. Capstone: End-to-End DE Pipeline

All projects:
✅ On GitHub with professional READMEs
✅ Clean, documented code
✅ Architecture diagrams
✅ Demonstrate real DE skills
```

---

## 📍 POST-LEARNING PHASE
### September - December 2026

### September 17-25: Moving to Ghaziabad
- Physical move
- Setup new home
- Settle in

### October: Final Prep
- Quick revision of all concepts
- Review portfolio projects
- Update resume (final version)
- Practice SQL/Python challenges
- Mock interviews

### November - December: JOB HUNT
- Apply to 50+ companies
- LinkedIn outreach
- Networking
- Interviews
- OFFERS! 🎯

---

## 📚 COMPLETE RESOURCE LIST

### SQL:
- ✅ Your 600 pages of notes
- ✅ Baraa's 30h SQL: https://youtu.be/SSKVgrwhzus
- ✅ Luke's SQL for DE: https://youtu.be/UjhFbq4uU2Y
- ✅ Baraa's DWH Project (4.5h)
- ⭐ (Optional) Caleb Curry Database Design

### Python:
- ✅ Baraa's 13h Python Beginner
- ✅ Luke's Python for Data Analytics
- ✅ Dr. Chuck's Python (Databases section): https://youtu.be/8DvywoWv6fI

### Airflow:
- ✅ Marc Lamberti YouTube
- ✅ Official Airflow Docs: https://airflow.apache.org/docs/

### dbt:
- ✅ Official dbt Docs: https://docs.getdbt.com/
- ✅ dbt Labs YouTube

### Tools & Setup:
- PostgreSQL 18.1
- DuckDB 1.4.4
- Python 3.13
- Fedora Linux KDE Plasma
- VS Code
- Git & GitHub
- DataGrip
- Draw.io

---

## 🎯 SUCCESS METRICS

### By End of August 2026:
- ✅ 5 portfolio projects on GitHub
- ✅ Strong SQL skills (advanced queries, DW concepts)
- ✅ Python for DE (pandas, database connections, ETL)
- ✅ Airflow orchestration (DAGs, scheduling)
- ✅ dbt transformations (models, tests, docs)
- ✅ Professional GitHub profile
- ✅ ATS-friendly resume
- ✅ Updated LinkedIn

### By End of December 2026:
- ✅ Junior Data Engineer job offer
- ✅ Remote position
- ✅ Using skills learned
- ✅ Supporting Maa financially
- ✅ Building career

---

## 💪 LEARNING PHILOSOPHY

**"Complete Cycles"** - Your Natural Style:
- Finish one topic completely before moving to next
- No jumping around
- Deep, focused learning
- Handwritten notes for retention
- Practice immediately
- Build project to solidify

**70% Rule:**
- Learn 70% of skills needed
- Get hired
- Learn remaining 30% on the job
- Continue growing

---

## 📅 DAILY SCHEDULE (Recommended)

**Study Days: 6 days/week (Monday-Saturday)**
**Rest: Sunday (review notes, light practice)**

**Daily Schedule:**
```
Morning (7:00 AM - 12:00 PM):
- Breakfast ✅
- Learning (4 hours)
- Break every 90 minutes

Afternoon (1:00 PM - 2:00 PM):
- Lunch ✅
- Rest

Afternoon (2:00 PM - 6:00 PM):
- Practice/Projects (3-4 hours)
- Hands-on coding

Evening (6:00 PM - 8:00 PM):
- Review notes
- Plan next day
- Dinner ✅

Night (8:00 PM - 10:30 PM):
- Family time
- Relax
- Sleep ✅
```

**Weekly Hours:** 40-50 hours
**Sustainable and focused!**

---

## 🎓 REMEMBER

**You're not starting from zero:**
- 600 pages of SQL notes
- Multiple Python courses completed
- Hardware & networking background (ECIL-ECIT)
- Linux mastery
- Self-directed learner
- 39 years of life experience

**You're PIVOTING, not starting!**

**This roadmap accounts for:**
- Your learning style (complete cycles)
- Your strengths (systematic thinking)
- Your timeline (6 months learning + move + job hunt)
- Your goal (Remote Data Engineer)

---

## 🚀 LET'S GO!

**March 10, 2026:** Start SQL
**August 31, 2026:** Portfolio complete
**December 2026:** DATA ENGINEER BIJOY! 💼

**DATA ENGINEERING ALL THE WAY!** 🎯

---

*Last Updated: February 25, 2026*
*Next Review: March 1, 2026 (Production System Day)*
