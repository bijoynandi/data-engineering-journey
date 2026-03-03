# 📚 DATA ENGINEERING BOOKS - READING GUIDE
**~/Documents/Data-Engineering/Learning/books/README.md**

---

## 🗂️ YOUR LIBRARY

```
books/
├── 1-Learning-SQL-Beaulieu.pdf
├── 2-Python-for-Data-Analysis-McKinney.pdf
├── 3-Fundamentals-of-Data-Engineering-Reis-Housley.pdf
├── 4-Data-Pipelines-Pocket-Reference-Densmore.pdf
├── 5-Data-Pipelines-Apache-Airflow-Harenslak-deRuiter.pdf
├── 6-Designing-Data-Intensive-Applications-Kleppmann.pdf
├── 7-The-Data-Warehouse-Toolkit-Kimball.pdf
├── 8-Advanced-Analytics-with-Spark-Ryza-et-al.pdf
├── 9-Google-BigQuery-Definitive-Guide-Lakshmanan-Tigani.pdf
├── 10-Streaming-Systems-Akidau-et-al.pdf
└── README.md  ← YOU ARE HERE
```

---

## ⏱️ WHEN TO READ EACH BOOK

```
Month 1-2:  Book 1  ← YOU'RE HERE NOW!
Month 3:    Book 2
Month 4-5:  Books 3, 4, 5
Month 5-6:  Book 7
Month 7+:   Book 6  (after getting hired!)
Month 7-9:  Book 8
Month 10+:  Book 9
Month 13+:  Book 10
```

---

## 📖 BOOK 1: Learning SQL
**Author:** Alan Beaulieu (O'Reilly)
**When:** Month 1-2 (NOW!)
**Level:** Beginner → Intermediate

### What This Book Teaches:
- SQL fundamentals with depth
- Joins, subqueries, aggregations
- Indexes and performance basics
- MySQL/MariaDB focused (concepts transfer to PostgreSQL)

### How to Read It:
```
Week 1:  Chapters 1-4  (SELECT, filtering, table types)
Week 2:  Chapters 5-7  (Queries, sets, grouping)
Week 3:  Chapters 8-10 (Joins, subqueries, CTEs)
Week 4:  Chapters 11-14 (Conditional, transactions, indexes)
```

### How to Use It Alongside Luke's Course:
```
1. Watch Luke's video on topic X
2. Open this book to same topic
3. Read deeper explanation
4. Practice in DuckDB/PostgreSQL
5. Repeat!
```

### Key Chapters to NOT Skip:
- Chapter 5: Querying Multiple Tables (JOINs!)
- Chapter 9: Subqueries
- Chapter 11: Conditional Logic (CASE!)
- Chapter 13: Indexes (essential for performance!)

### Practice After Each Chapter:
```bash
# Open DuckDB and practice!
duckdb ~/Documents/Data-Engineering/Data/practice.duckdb

# Or PostgreSQL
psql -U postgres -h localhost -d postgres
```

---

## 📖 BOOK 2: Python for Data Analysis
**Author:** Wes McKinney (O'Reilly, 3rd Edition)
**When:** Month 3
**Level:** Beginner → Intermediate

### Why Special:
- Written by the **CREATOR of pandas**!
- Most authoritative pandas reference
- Real-world data manipulation patterns

### How to Read It:
```
Week 1:  Chapters 1-4  (Python basics, IPython, NumPy)
Week 2:  Chapters 5-7  (pandas core: Series, DataFrame)
Week 3:  Chapters 8-10 (Data wrangling, plotting)
Week 4:  Chapters 11-13 (Time series, advanced topics)
```

### Key Chapters for Data Engineering:
- Chapter 5: Getting Started with pandas (CORE!)
- Chapter 7: Data Cleaning and Preparation (CRITICAL!)
- Chapter 8: Data Wrangling (JOIN, MERGE, RESHAPE)
- Chapter 11: Time Series (very common in pipelines!)

### Don't Read:
- Chapter 9 (plotting) - not for data engineering!
- Chapter 12 (advanced) - save for later

### Practice:
```bash
# Use analytics conda environment for this book!
conda activate analytics
jupyter lab
# Create: ~/Documents/Data-Engineering/Notebooks/exploration/book2-practice.ipynb
```

---

## 📖 BOOK 3: Fundamentals of Data Engineering
**Author:** Joe Reis & Matt Housley (O'Reilly, 2022)
**When:** Month 4-5 (MOST IMPORTANT BOOK!)
**Level:** Intermediate

### Why THIS Is THE Most Important Book:
- Not a tool book (no "how to use Airflow")
- Concepts + Architecture + Thinking
- Teaches you to THINK like a data engineer
- Every chapter = lifetime experience!

### How to Read It:
```
Month 4, Week 1:   Part 1 - Chapters 1-3  (What is DE? Lifecycle!)
Month 4, Week 2:   Part 2 - Chapters 4-6  (Storage, ingestion)
Month 5, Week 1:   Part 2 - Chapters 7-9  (Transformation, serving)
Month 5, Week 2:   Part 3 - Chapters 10-11 (Security, future)
```

### Read This Way:
```
1. Read chapter once (understand concepts)
2. Write notes in your own words
3. Ask: "How does this apply to my projects?"
4. Re-read key sections after tool practice
5. This book makes MORE sense after hands-on work!
```

### Key Concepts to Deeply Understand:
- The Data Engineering Lifecycle (Chapter 2)
- Source Systems (Chapter 5)
- Storage (Chapter 6)
- Ingestion (Chapter 7)
- Transformation (Chapter 8)
- Serving Data (Chapter 9)

### Note:
> This book is not about HOW to use tools.
> It's about WHY we build what we build.
> Read it slowly. Think. Reflect. Apply.

---

## 📖 BOOK 4: Data Pipelines Pocket Reference
**Author:** James Densmore (O'Reilly)
**When:** Month 4-5 (alongside Book 3)
**Level:** Intermediate

### Why Read It:
- Thin, fast read (200 pages!)
- Practical patterns for pipelines
- Tool-agnostic concepts
- Perfect companion to Airflow book

### How to Read It:
```
Week 1: Read cover to cover (it's short!)
Week 2: Re-read relevant chapters as you build
```

### Use As:
- Quick reference during pipeline building
- Pattern library for common problems
- Bridge between theory (Book 3) and practice (Book 5)

---

## 📖 BOOK 5: Data Pipelines with Apache Airflow
**Author:** Harenslak & de Ruiter (Manning)
**When:** Month 4 (YOU HAVE THIS!)
**Level:** Intermediate

### How to Read It:
```
Month 4:
Week 1:  Chapters 1-3  (Airflow basics, first DAG!)
Week 2:  Chapters 4-6  (Scheduling, dependencies)
Week 3:  Chapters 7-9  (Operators, connections)
Week 4:  Chapters 10-12 (Production, monitoring)
```

### CRITICAL: Read Alongside Practice!
```
1. Read chapter
2. IMMEDIATELY write a DAG
3. Run it in your Airflow instance
4. Debug, iterate, understand
5. Never read without practicing!
```

### Key Chapters:
- Chapter 2: Anatomy of a DAG (CORE!)
- Chapter 5: Defining dependencies (ESSENTIAL!)
- Chapter 7: Communicating with external systems
- Chapter 11: Best practices (DON'T SKIP!)

---

## 📖 BOOK 6: Designing Data-Intensive Applications
**Author:** Martin Kleppmann (O'Reilly)
**When:** Month 7+ (AFTER getting hired!)
**Level:** Advanced - THE LEGENDARY BOOK!

### Why It's Legendary:
- Every senior data engineer has read this
- Teaches distributed systems thinking
- Database internals, replication, consistency
- NOT a tool book - pure concepts!

### How to Read It:
```
This book CANNOT be rushed.
Read 1 chapter per week minimum.
Take notes. Think deeply.

Part 1: Foundations of Data Systems (Chapters 1-3)
Part 2: Distributed Data (Chapters 5-9)  ← Most important!
Part 3: Derived Data (Chapters 10-12)
```

### Read This When:
- You're working as a Junior Data Engineer
- You're debugging production issues
- You want to understand WHY databases work
- You want to become Senior Engineer

### Note:
> Don't rush this book.
> Read it. Sleep on it. Come back.
> Some chapters will take a week to absorb.
> THAT'S OKAY. This is lifetime experience.

---

## 📖 BOOK 7: The Data Warehouse Toolkit
**Author:** Ralph Kimball (Wiley, 3rd Edition)
**When:** Month 5-6 (dbt phase)
**Level:** Intermediate → Advanced

### Why Still Relevant in 2026:
- Published in 2013 but TIMELESS
- Dimensional modeling concepts never change
- Foundation for dbt work
- Star schema, slowly changing dimensions, fact tables

### How to Read It:
```
Month 5:
Chapter 1:  Data Warehousing, Business Intelligence (READ FIRST!)
Chapter 2:  Retail Sales (understand star schema!)
Chapter 3:  Inventory Systems (slowly changing dimensions!)

Month 6:
Chapter 5:  Procurement
Chapter 18: Handling Late Arriving Dimensions
Chapter 19: ETL Subsystems

Skip: Industry-specific chapters (4, 6, 7, 8, etc.)
      unless they match your job industry!
```

### Key Concepts:
- Star Schema vs Snowflake Schema
- Fact Tables vs Dimension Tables
- Slowly Changing Dimensions (SCD Types 1, 2, 3)
- Conformed Dimensions
- These concepts ARE dbt in practice!

---

## 📖 BOOK 8: Advanced Analytics with Spark
**Author:** Ryza, Laserson, Owen, Wills (O'Reilly)
**When:** Month 7-9 (Spark learning phase)
**Level:** Advanced (YOU HAVE THIS!)

### How to Read It:
```
First: Master PySpark basics (not from this book!)
Then: Use this book for advanced patterns

Chapter 2:  Introduction to Data Analysis with Scala/Spark
Chapter 3:  Recommender Systems (Collaborative Filtering)
Chapter 4:  Predicting Forest Cover with Decision Trees
Chapter 5:  Anomaly Detection with K-Means
```

### Note:
> This book assumes PySpark knowledge!
> Learn basics first from official docs
> Then use this for real-world patterns

---

## 📖 BOOK 9: Google BigQuery: The Definitive Guide
**Author:** Lakshmanan & Tigani (O'Reilly)
**When:** Month 10-12 (Cloud/GCP phase)
**Level:** Advanced (YOU HAVE THIS!)

### How to Read It:
```
Month 10:
Chapter 1:  What is BigQuery?
Chapter 2:  Query Essentials
Chapter 3:  Data Types, Functions, Operators

Month 11:
Chapter 4:  Loading Data into BigQuery
Chapter 5:  Storing Data in BigQuery
Chapter 8:  Performance and Cost Optimization  ← IMPORTANT!

Month 12:
Chapter 9:  Data Analytics
Chapter 10: Data Engineering Pipelines
```

### Prerequisite:
- Cloud platform basics (AWS first, then GCP)
- SQL mastery (you'll have this!)
- Data pipeline experience (you'll have this!)

---

## 📖 BOOK 10: Streaming Systems
**Author:** Tyler Akidau, Slava Chernyak, Reuven Lax (O'Reilly)
**When:** Month 13-14 (Kafka phase!)
**Level:** Advanced

### How to Read It:
```
Month 13 (alongside Kafka basics):
Chapter 1:  Streaming 101 (What is streaming? WHY it matters!)
Chapter 2:  The What, Where, When, and How of Data Processing
Chapter 3:  Watermarks (understand late data!)

Month 14 (alongside Kafka advanced):
Chapter 4:  Advanced Windowing
Chapter 5:  Exactly-Once and Side Effects
Chapter 6:  Streams and Tables
Chapter 7:  The Practicalities of Persistent State
```

### Key Concepts to Understand Deeply:
- Event time vs Processing time (CRITICAL!)
- Watermarks (how to handle late-arriving data!)
- Windowing (tumbling, sliding, session windows)
- Triggers and accumulation modes

### Prerequisite:
- Kafka basics (producers, consumers, topics)
- Basic Spark Streaming knowledge
- Data pipeline experience (you'll have this!)

### Note:
> This is a DENSE book.
> Chapter 1 alone will take several re-reads.
> That's completely normal - this is advanced theory.
> Real understanding comes after Kafka practice!

---

## 🧠 HOW TO READ TECHNICAL BOOKS (MASTER APPROACH)

### The Bijoy Method:
```
1. PREVIEW (10 minutes)
   - Read table of contents
   - Read chapter summaries
   - Understand what's ahead

2. FIRST READ (Active reading)
   - Read with pencil/notes open
   - Mark confusing parts
   - Write questions as you go

3. PRACTICE (Immediately!)
   - Never finish a chapter without coding
   - Use your actual setup (DuckDB/PostgreSQL)
   - Apply to your projects

4. NOTES (In your own words!)
   - Summarize chapter in 5 bullet points
   - Write in ~/Documents/Data-Engineering/Docs/
   - Your words, not book's words!

5. REVIEW (Weekly)
   - Re-read your notes
   - Not the whole book!
   - Build retention over time
```

### What NOT to Do:
```
❌ Read without practicing
❌ Try to finish fast
❌ Read chapters you don't need yet
❌ Copy notes word-for-word
❌ Read multiple books simultaneously
❌ Read ahead of your learning phase
```

### Signs You Actually Understand:
```
✅ You can explain it without the book
✅ You can apply it to a new problem
✅ You can teach it to someone else
✅ You know WHERE to look when you forget
✅ You connect it to what you already know
```

---

## 📝 NOTES STRUCTURE (Recommended)

**Create a notes file for each book:**
```bash
# Create notes directory
mkdir -p ~/Documents/Data-Engineering/Docs/book-notes

# Create notes file for each book
touch ~/Documents/Data-Engineering/Docs/book-notes/01-learning-sql-notes.md
touch ~/Documents/Data-Engineering/Docs/book-notes/02-python-data-analysis-notes.md
touch ~/Documents/Data-Engineering/Docs/book-notes/03-fundamentals-de-notes.md
# etc.
```

**Notes template:**
```markdown
# Book: [Title]
# Author: [Author]
# Started: [Date]
# Completed: [Date]

## Chapter X: [Title]
### Key Concepts:
- Concept 1
- Concept 2

### My Understanding (in my own words):
[Write here]

### Questions I Have:
- Question 1

### How I Applied This:
[Project/practice notes]

### Code Examples:
\`\`\`python
# Your practice code here
\`\`\`
```

---

## 💚 REMEMBER

> *"These are not books, these are lifetime experiences."*

Read slowly.
Practice immediately.
Understand deeply.
Buy hardcopies when you can.

**Every page is an investment in your future!** 💙

---
