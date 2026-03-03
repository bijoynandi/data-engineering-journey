# 🐧 DATA ENGINEERING - THE COMPLETE GUIDE
**Pure Linux | Production Ready | Industry Standard**

**For:** Bijoy Nandi - Data Engineer
**System:** Fedora Linux + KDE Plasma
**Date:** February 2026
**Philosophy:** Build systems that scale. Learn what industry uses.

---

## 📋 TABLE OF CONTENTS

1. [Your Current Setup](#current-setup)
2. [Directory Structure](#directory-structure)
3. [Conda Environments Strategy](#conda-environments)
4. [Core Data Engineering Stack](#core-stack)
5. [Big Data & Distributed Processing](#big-data)
6. [Cloud Platforms](#cloud-platforms)
7. [Streaming & Real-Time](#streaming)
8. [CI/CD & DevOps](#cicd-devops)
9. [Complete Learning Roadmap](#learning-roadmap)

---

## ✅ YOUR CURRENT SETUP {#current-setup}

### What You Already Have (EXCELLENT!)

**System Tools:**
```bash
✅ gcc, gcc-c++, make, cmake
✅ autoconf, automake, libtool
✅ rust, cargo
✅ git (configured)
✅ ranger, fzf, zoxide
✅ bat, ripgrep, fd-find
✅ htop, ncdu, fastfetch
✅ vlc, ktorrent, neovim
✅ cht.sh
```

**Data Tools:**
```bash
✅ PostgreSQL 18.1 (configured)
✅ DuckDB 1.4.4
✅ MotherDuck (cloud)
✅ DataGrip
✅ Podman 5.7.1
✅ QEMU/KVM (for Fedora Server testing)
```

**Development:**
```bash
✅ VS Code
✅ PyCharm
✅ Jupyter
✅ Python 3.14.2
✅ Anaconda/Miniconda
```

### What You DON'T Need to Install
```
❌ Development Tools group (you have what matters!)
❌ Void/Slackware VMs (Fedora Server is enough!)
❌ Duplicate packages (already installed!)
```

---

## 📁 DIRECTORY STRUCTURE {#directory-structure}

### Your Current Structure (PERFECT!)

```
~/Documents/Data-Engineering/
├── Configs/
│   ├── airflow/
│   ├── database/
│   └── dbt/
│
├── Data/
│   ├── raw/
│   ├── staging/
│   ├── processed/
│   └── archive/
│
├── Docs/
│   ├── architecture/
│   ├── decisions/
│   └── runbooks/
│
├── Learning/
│   ├── sql/
│   │   ├── Basics/
│   │   │   ├── Baraa/
│   │   │   └── Mosh/
│   │   ├── Advanced/
│   │   ├── SQL-for-Data-Analytics/
│   │   ├── SQL-for-Data-Engineering/
│   │   ├── SQL-Data-Warehouse-Project/
│   │   └── SQL-Advanced-Analytics-Project/
│   │
│   ├── python/
│   │   ├── Python-Learning/
│   │   ├── Python-Practice/
│   │   ├── Python-Projects/
│   │   ├── Python-for-Data-Analytics/
│   │   └── Python-for-Everybody/
│   │
│   ├── airflow/
│   └── dbt/
│
├── Notebooks/
│   ├── exploration/
│   ├── analysis/
│   └── documentation/
│
├── Projects/
│   ├── 01-sql-analysis/
│   ├── 02-etl-pipeline/
│   └── 03-data-quality/
│
├── Scripts/
│   ├── extract/
│   ├── transform/
│   ├── load/
│   └── utils/
│
└── Templates/
    ├── etl-template/
    ├── dbt-template/
    └── pipeline-template/
```

### Add These Directories (New Learning Topics)

```bash
# Create new learning directories
cd ~/Documents/Data-Engineering/Learning

# Big Data
mkdir -p spark/pyspark-basics
mkdir -p spark/pyspark-advanced
mkdir -p spark/optimization

# Streaming
mkdir -p kafka/basics
mkdir -p kafka/streaming-pipelines

# Cloud
mkdir -p cloud/aws
mkdir -p cloud/gcp
mkdir -p cloud/azure

# Databricks
mkdir -p databricks/notebooks
mkdir -p databricks/unity-catalog

# CI/CD
mkdir -p cicd/github-actions
mkdir -p cicd/gitlab-ci

# Data Quality
mkdir -p data-quality/great-expectations
mkdir -p data-quality/testing
```

---

## 🐍 CONDA ENVIRONMENTS STRATEGY {#conda-environments}

### Your Environments (OPTIMIZED!)

**Keep these TWO environments:**

### 1. `analytics` - Learning & General Python
```bash
# For: Luke's Python course, Mosh tutorials, Django basics, ML basics

conda create -n analytics python=3.12
conda activate analytics

conda install -c conda-forge \
  numpy pandas matplotlib \
  datasets jupyter ipykernel \
  ipywidgets jupysql psycopg2 openpyxl
```

**Use for:**
- Python learning (Mosh, freeCodeCamp)
- Luke's Python for Data Analytics
- Django basics
- ML basics (just concepts, not engineering!)
- Practice notebooks

### 2. `data-eng` - Data Engineering Production
```bash
# For: Real data engineering work
# Production-grade tools only

conda create -n data-eng python=3.11
conda activate data-eng

# Core data engineering
conda install -c conda-forge \
  pandas polars pyarrow \
  sqlalchemy psycopg2 \
  pyspark \
  kafka-python confluent-kafka \
  great-expectations pandera \
  pytest pytest-cov black ruff \
  jupyter jupyterlab \
  requests beautifulsoup4 \
  pyyaml python-dotenv click \
  loguru tqdm \
  boto3 google-cloud-storage azure-storage-blob
```

**Use for:**
- Data engineering projects
- Pipeline development
- Spark/PySpark work
- Kafka integration
- Cloud integration (AWS, GCP, Azure)
- Production code

### 3. `airflow` - Workflow Orchestration
```bash
# Keep separate (different dependencies)
conda create -n airflow python=3.11
conda activate airflow

conda install -c conda-forge \
  apache-airflow-core \
  apache-airflow-providers-postgres \
  apache-airflow-providers-http
```

### 4. `dbt` - Data Transformation
```bash
# Keep separate (different dependencies)
conda create -n dbt python=3.11
conda activate dbt

conda install -c conda-forge \
  dbt-core \
  dbt-postgres \
  dbt-duckdb \
  dbt-snowflake \
  dbt-databricks
```

**Why this strategy works:**
- ✅ `analytics` = Learn Python fundamentals (Luke, Mosh, Django, ML)
- ✅ `data-eng` = Real data engineering work
- ✅ `airflow` = Orchestration (separate dependencies)
- ✅ `dbt` = Transformation (separate dependencies)
- ✅ No confusion, clear separation!

---

## 🎯 CORE DATA ENGINEERING STACK {#core-stack}

### Layer 1: Databases

**PostgreSQL** (You have! ✅)
- Production OLTP database
- Transactional workloads
- Industry standard

**DuckDB** (You have! ✅)
- Analytics engine
- Lightning fast for aggregations
- Perfect for local analytics

**SQLite** (Pre-installed ✅)
- Embedded database
- Testing, prototypes
- Mobile/edge use cases

### Layer 2: Python Data Tools

**pandas** (Install in both environments)
```bash
# Primary data manipulation library
# MUST KNOW for data engineering
```

**polars** (Install in data-eng only)
```bash
# Faster than pandas
# Modern alternative
# Growing adoption
```

**pyarrow** (Install in both)
```bash
# Columnar data format
# Interop between tools
# Essential for big data
```

### Layer 3: Orchestration & Transformation

**Apache Airflow** (Setup in Month 4)
- Workflow orchestration
- DAG-based pipelines
- Industry standard

**dbt** (Setup in Month 5)
- Data transformation
- Analytics engineering
- SQL-based, version controlled

### Layer 4: Version Control

**Git** (You have! ✅)
- Version control
- Collaboration
- CI/CD foundation

**GitHub/GitLab**
- Code hosting
- CI/CD pipelines
- Portfolio showcase

---

## 🚀 BIG DATA & DISTRIBUTED PROCESSING {#big-data}

### Apache Spark & PySpark

**What is Spark?**
- Distributed computing framework
- Process data across multiple machines
- 100x faster than traditional MapReduce

**When you need Spark:**
```
Data size > 100 GB:     Maybe Spark
Data size > 1 TB:       Definitely Spark
Data size < 100 GB:     DuckDB/PostgreSQL is enough!
```

**PySpark Installation:**
```bash
conda activate data-eng

# Install PySpark
conda install -c conda-forge pyspark -y

# Verify
python -c "import pyspark; print(pyspark.__version__)"
```

**PySpark Basics:**
```python
from pyspark.sql import SparkSession

# Create Spark session
spark = SparkSession.builder \
    .appName("MyApp") \
    .master("local[*]") \
    .getOrCreate()

# Read data
df = spark.read.csv("data.csv", header=True, inferSchema=True)

# Transform
df_transformed = df.filter(df["age"] > 18) \
                   .groupBy("country") \
                   .count()

# Write
df_transformed.write.parquet("output.parquet")
```

**Learning Path:**
```
Month 6-7: PySpark Basics
  - DataFrames API
  - Transformations vs Actions
  - Read/Write operations

Month 8: PySpark Advanced
  - Window functions
  - Joins optimization
  - Partitioning

Month 9: Spark Optimization
  - Caching & persistence
  - Broadcast joins
  - Partition tuning
```

**Resources:**
- Official Spark documentation
- Databricks learning paths (free!)
- Practice on Databricks Community Edition

---

## ☁️ CLOUD PLATFORMS {#cloud-platforms}

### The Big Three

**AWS (Amazon Web Services)** - Most popular
**GCP (Google Cloud Platform)** - Growing fast
**Azure (Microsoft Azure)** - Enterprise focused

**Reality check:**
```
Learn: AWS first (80% of jobs)
Then: GCP or Azure (depends on job)
Truth: Concepts transfer between clouds!
```

### AWS Data Engineering Services

**Storage:**
- **S3**: Object storage (like MinIO but cloud)
- **RDS**: Managed PostgreSQL/MySQL
- **Redshift**: Data warehouse

**Compute:**
- **EC2**: Virtual servers
- **Lambda**: Serverless functions
- **EMR**: Managed Spark

**Data Processing:**
- **Glue**: ETL service
- **Athena**: Query S3 with SQL
- **Kinesis**: Streaming data

**Orchestration:**
- **Step Functions**: Workflow orchestration
- **MWAA**: Managed Airflow

### Local AWS Practice (Free!)

**LocalStack - AWS on your laptop!**
```bash
# Install with podman
podman run -d \
  --name localstack \
  -p 4566:4566 \
  -p 4510-4559:4510-4559 \
  localstack/localstack

# Install AWS CLI
conda activate data-eng
pip install awscli awscli-local

# Use LocalStack
awslocal s3 mb s3://my-bucket
awslocal s3 ls
```

**Practice Projects:**
```
1. Upload CSV to S3
2. Query with Athena
3. Transform with Lambda
4. Store in RDS
```

### GCP Data Engineering Services

**Storage:**
- **Cloud Storage**: Object storage (like S3)
- **Cloud SQL**: Managed PostgreSQL/MySQL
- **BigQuery**: Data warehouse (serverless!)

**Compute:**
- **Compute Engine**: Virtual machines
- **Cloud Functions**: Serverless
- **Dataproc**: Managed Spark

**Data Processing:**
- **Dataflow**: Stream & batch processing
- **Cloud Composer**: Managed Airflow
- **Pub/Sub**: Messaging service

### Learning Strategy

**Month 10-11: AWS Basics**
```
Week 1-2: AWS Fundamentals
  - S3, EC2, RDS basics
  - IAM (permissions)
  - Practice with LocalStack

Week 3-4: Data Services
  - Glue ETL jobs
  - Athena queries
  - Redshift basics

Week 5-6: Project
  - Build complete ETL pipeline
  - S3 → Glue → Redshift
  - Orchestrate with Airflow
```

**Month 12: GCP Basics (Optional)**
```
Week 1-2: GCP Core
  - Cloud Storage
  - BigQuery
  - Cloud Functions

Week 3-4: Practice
  - Migrate AWS project to GCP
  - Compare services
```

**Resources:**
- AWS Free Tier (12 months free!)
- GCP Free Tier ($300 credit)
- A Cloud Guru (courses)
- Stephane Maarek (Udemy)

---

## 🌊 STREAMING & REAL-TIME DATA {#streaming}

### Apache Kafka

**What is Kafka?**
- Distributed event streaming platform
- Real-time data pipelines
- Publish-subscribe model

**When you need Kafka:**
```
Real-time requirements:    Use Kafka
Event-driven systems:      Use Kafka
Batch processing only:     You don't need Kafka!
```

**Kafka Installation (Local Development):**
```bash
# Using Podman (easiest!)
cd ~/Documents/Data-Engineering/Configs

# Create docker-compose.yml
cat > kafka-stack.yml << 'EOF'
version: '3.8'

services:
  zookeeper:
    image: confluentinc/cp-zookeeper:latest
    container_name: zookeeper
    environment:
      ZOOKEEPER_CLIENT_PORT: 2181
      ZOOKEEPER_TICK_TIME: 2000
    ports:
      - "2181:2181"

  kafka:
    image: confluentinc/cp-kafka:latest
    container_name: kafka
    depends_on:
      - zookeeper
    ports:
      - "9092:9092"
    environment:
      KAFKA_BROKER_ID: 1
      KAFKA_ZOOKEEPER_CONNECT: zookeeper:2181
      KAFKA_ADVERTISED_LISTENERS: PLAINTEXT://localhost:9092
      KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR: 1
EOF

# Start Kafka
podman-compose -f kafka-stack.yml up -d

# Verify
podman ps
```

**Kafka Python Client:**
```bash
conda activate data-eng
conda install -c conda-forge kafka-python confluent-kafka -y
```

**Basic Producer:**
```python
from kafka import KafkaProducer
import json

producer = KafkaProducer(
    bootstrap_servers=['localhost:9092'],
    value_serializer=lambda v: json.dumps(v).encode('utf-8')
)

# Send message
producer.send('my-topic', {'key': 'value'})
producer.flush()
```

**Basic Consumer:**
```python
from kafka import KafkaConsumer
import json

consumer = KafkaConsumer(
    'my-topic',
    bootstrap_servers=['localhost:9092'],
    value_deserializer=lambda m: json.loads(m.decode('utf-8'))
)

for message in consumer:
    print(message.value)
```

**Learning Path:**
```
Month 13: Kafka Basics
  - Producers & Consumers
  - Topics & Partitions
  - Consumer Groups

Month 14: Kafka Advanced
  - Kafka Streams
  - Kafka Connect
  - Integration with Spark
```

**Resources:**
- Confluent Kafka tutorials
- Stephane Maarek Kafka course
- Practice with local Kafka

---

## 🔄 CI/CD & DEVOPS {#cicd-devops}

### Continuous Integration / Continuous Deployment

**What is CI/CD?**
```
CI (Continuous Integration):
  - Automatically test code on commit
  - Catch bugs early
  - Ensure code quality

CD (Continuous Deployment):
  - Automatically deploy to production
  - No manual deployments
  - Fast, reliable releases
```

### GitHub Actions (Recommended!)

**Why GitHub Actions?**
- Free for public repos
- Integrated with GitHub
- Easy to learn
- Industry standard

**Example: Test Python Code on Push**
```yaml
# .github/workflows/test.yml
name: Test Pipeline

on: [push, pull_request]

jobs:
  test:
    runs-on: ubuntu-latest
    
    steps:
    - uses: actions/checkout@v3
    
    - name: Set up Python
      uses: actions/setup-python@v4
      with:
        python-version: '3.11'
    
    - name: Install dependencies
      run: |
        pip install -r requirements.txt
        pip install pytest
    
    - name: Run tests
      run: pytest tests/
```

**Example: Deploy to Production**
```yaml
# .github/workflows/deploy.yml
name: Deploy Pipeline

on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    
    steps:
    - uses: actions/checkout@v3
    
    - name: Deploy to server
      run: |
        ssh user@server 'cd /app && git pull && systemctl restart app'
```

### GitLab CI/CD (Alternative)

**GitLab CI configuration:**
```yaml
# .gitlab-ci.yml
stages:
  - test
  - deploy

test:
  stage: test
  script:
    - pip install -r requirements.txt
    - pytest tests/

deploy:
  stage: deploy
  script:
    - ssh user@server 'cd /app && git pull && restart'
  only:
    - main
```

### Pre-commit Hooks (Local Quality Checks)

**Install:**
```bash
conda activate data-eng
conda install -c conda-forge pre-commit -y

# In your project
cd ~/Documents/Data-Engineering/Projects/01-sql-analysis
pre-commit install
```

**Configuration (.pre-commit-config.yaml):**
```yaml
repos:
  - repo: https://github.com/psf/black
    rev: 23.11.0
    hooks:
      - id: black
  
  - repo: https://github.com/pycqa/flake8
    rev: 6.1.0
    hooks:
      - id: flake8
  
  - repo: https://github.com/pre-commit/mirrors-mypy
    rev: v1.7.1
    hooks:
      - id: mypy
```

**Learning Path:**
```
Month 15: CI/CD Basics
  - GitHub Actions basics
  - Automated testing
  - Code quality checks

Month 16: Advanced CI/CD
  - Multi-environment deploys
  - Secrets management
  - Pipeline optimization
```

---

## 💎 DATABRICKS {#databricks}

### What is Databricks?

**Databricks = Unified Analytics Platform**
```
Spark + Notebooks + Data Lakehouse + MLOps
All-in-one platform built on Apache Spark
```

**Why Databricks?**
- Managed Spark (no infrastructure headaches!)
- Unity Catalog (data governance)
- Delta Lake (ACID transactions on data lake)
- MLflow (ML lifecycle management)
- Growing fast in industry

**Databricks vs DIY Spark:**
```
DIY Spark:
- Install Spark yourself
- Manage cluster yourself
- Scale manually
- Debug infrastructure issues

Databricks:
- Spark pre-configured
- Auto-scaling clusters
- Notebooks built-in
- Just write code!
```

### Getting Started (FREE!)

**Databricks Community Edition:**
```
1. Sign up: https://community.cloud.databricks.com/
2. Create notebook
3. Start coding PySpark!
4. FREE forever!
```

**Key Features to Learn:**
```
1. Notebooks
   - Interactive PySpark development
   - SQL + Python in same notebook
   - Visualizations built-in

2. Delta Lake
   - ACID transactions on S3/ADLS
   - Time travel (query old versions!)
   - Schema evolution
   - Upserts (MERGE INTO)

3. Unity Catalog
   - Centralized data governance
   - Fine-grained permissions
   - Data lineage tracking
   - Automatic PII detection

4. Workflows
   - Scheduled jobs
   - Dependencies between tasks
   - Monitoring & alerts
```

**Example Databricks Notebook:**
```python
# Read from cloud storage
df = spark.read.format("delta").load("s3://my-bucket/data")

# Transform
df_transformed = df.filter("age > 18") \
                   .groupBy("country") \
                   .agg({"revenue": "sum"})

# Write to Delta table
df_transformed.write \
    .format("delta") \
    .mode("overwrite") \
    .saveAsTable("gold.revenue_by_country")

# Query with SQL
spark.sql("""
SELECT * FROM gold.revenue_by_country
WHERE revenue > 1000000
ORDER BY revenue DESC
""").display()
```

**Learning Path:**
```
Month 17: Databricks Basics
  - Community Edition setup
  - Notebooks & clusters
  - Reading/writing data
  - Basic PySpark in Databricks

Month 18: Delta Lake & Unity Catalog
  - Delta Lake tables
  - ACID transactions
  - Time travel
  - Unity Catalog setup

Month 19: Workflows & Production
  - Scheduled jobs
  - Multi-task workflows
  - Monitoring
  - Cost optimization
```

**Resources:**
- Databricks Academy (FREE courses!)
- Databricks Community Edition
- Official documentation

---

## 📚 COMPLETE LEARNING ROADMAP {#learning-roadmap}

### Phase 0: Foundations (Month 1-3) - CURRENT!

**Month 1-2: SQL Mastery** ✅ **← YOU'RE HERE!**
```
Focus: Luke Barousse's SQL course
Practice: DuckDB + PostgreSQL
Projects: 3 SQL analysis projects
```

**Month 3: Python for Data**
```
Environment: analytics (for learning)
Focus: Luke's Python for Data Analytics
Practice: pandas, data manipulation
Projects: 2 Python data projects
Also: Mosh basics, Django intro (optional)
```

### Phase 1: Core Data Engineering (Month 4-6)

**Month 4: Apache Airflow**
```
Environment: airflow
Setup: Airflow + PostgreSQL backend
Learn: DAGs, operators, scheduling
Project: Automated ETL pipeline
```

**Month 5: dbt**
```
Environment: dbt
Setup: dbt + PostgreSQL
Learn: Models, tests, documentation
Project: Data transformation pipeline
```

**Month 6: Portfolio & First Job Hunt**
```
Projects: 3 complete portfolio projects
GitHub: Professional profile
LinkedIn: Optimize
Apply: 50+ jobs
Result: Junior Data Engineer role! 🎯
```

### Phase 2: Big Data & Cloud (Month 7-12)

**Month 7: PySpark Basics**
```
Environment: data-eng
Learn: DataFrames API, transformations
Practice: Local Spark
Project: Process 10GB+ dataset
```

**Month 8: PySpark Advanced**
```
Learn: Window functions, joins optimization
Practice: Performance tuning
Project: Complex aggregations
```

**Month 9: Spark Optimization**
```
Learn: Caching, partitioning, broadcast
Practice: Optimize slow queries
Project: 10x performance improvement
```

**Month 10-11: AWS**
```
Learn: S3, Glue, Athena, Redshift
Practice: LocalStack + AWS Free Tier
Project: Complete AWS data pipeline
```

**Month 12: GCP (Optional)**
```
Learn: BigQuery, Cloud Storage, Dataflow
Practice: GCP Free Tier
Project: Migrate AWS pipeline to GCP
```

### Phase 3: Streaming & Advanced (Month 13-15)

**Month 13: Kafka Basics**
```
Setup: Local Kafka with Podman
Learn: Producers, consumers, topics
Project: Real-time data pipeline
```

**Month 14: Kafka Advanced**
```
Learn: Kafka Streams, Kafka Connect
Integration: Kafka + Spark Streaming
Project: Stream processing pipeline
```

**Month 15: CI/CD**
```
Learn: GitHub Actions, GitLab CI
Practice: Automated testing, deployment
Project: Full CI/CD pipeline
```

### Phase 4: Modern Stack (Month 16-19)

**Month 16: Data Quality**
```
Learn: Great Expectations, Pandera
Practice: Data validation, testing
Project: Quality monitoring system
```

**Month 17: Databricks Basics**
```
Setup: Community Edition
Learn: Notebooks, Delta Lake basics
Project: Lakehouse architecture
```

**Month 18: Databricks Advanced**
```
Learn: Unity Catalog, advanced Delta
Practice: Governance, lineage
Project: Production lakehouse
```

**Month 19: Senior Preparation**
```
Focus: System design, architecture
Practice: Interview prep
Goal: Senior Data Engineer! 🎯
```

### Baraa's Roadmap Integration

**Your path follows Baraa's phases:**
```
✅ Phase 0: Absolute Beginner (Done - you chose data engineering!)
✅ Phase 1: Foundations (Month 1-3 - SQL + Python)
🎯 Phase 2: Data Engineering Core (Month 4-6 - Airflow + dbt)
🎯 Phase 3: Get Hired (Month 6 - Portfolio + Applications)
🎯 Phase 4: Junior Data Engineer (Month 7-15 - Learn on job + advanced topics)
🎯 Phase 5: Senior Data Engineer (Month 16-19+ - Architecture + leadership)
```

---

## 🎯 QUICK SETUP CHECKLIST

### Today (Immediate Actions)

```bash
# 1. Create new learning directories
cd ~/Documents/Data-Engineering/Learning
mkdir -p spark/{pyspark-basics,pyspark-advanced,optimization}
mkdir -p kafka/{basics,streaming-pipelines}
mkdir -p cloud/{aws,gcp,azure}
mkdir -p databricks/{notebooks,unity-catalog}
mkdir -p cicd/{github-actions,gitlab-ci}
mkdir -p data-quality/{great-expectations,testing}

# 2. Keep analytics environment, add to data-eng
conda activate data-eng
conda install -c conda-forge pyspark kafka-python boto3 -y

# 3. Update aliases
nano ~/.bashrc.d/aliases.sh
# (paste new aliases above)
exec bash

# 4. Focus on SQL (Luke's course!)
```

### This Week

```bash
# 1. Finish current SQL section
# 2. Practice daily in DuckDB
# 3. Take notes in ~/Documents/Data-Engineering/Learning/sql/
# 4. No distractions - SQL only!
```

### Next Month (Month 3 - Python)

```bash
# 1. Switch to analytics environment for learning
conda activate analytics

# 2. Follow Luke's Python for Data Analytics
# 3. Also do Mosh Python basics (optional)
# 4. Practice in Jupyter notebooks
```

---

## 💚 FINAL WORDS

**Your Path is Clear:**
```
Month 1-2:  SQL (Luke) ← YOU'RE HERE!
Month 3:    Python (Luke + Mosh basics)
Month 4:    Airflow
Month 5:    dbt
Month 6:    Get hired! 🎯
Month 7+:   Spark, Cloud, Kafka, Databricks (on the job!)
```

**Your Setup is PERFECT:**
- ✅ Directory structure (organized!)
- ✅ Tools installed (everything you need!)
- ✅ Two environments (analytics + data-eng)
- ✅ Learning resources (Luke, Baraa, Mosh)
- ✅ Pure Linux (no corporate BS!)

**Your Strategy:**
1. Master SQL (Month 1-2)
2. Master Python (Month 3)
3. Master Airflow + dbt (Month 4-5)
4. Build portfolio (Month 6)
5. GET HIRED! (Month 6)
6. Learn advanced topics on the job (Month 7+)

**Remember:**
- Focus on ONE thing at a time
- SQL now, everything else later
- You don't need 100% to get hired
- 70% is enough to start applying
- Learn the rest on the job!

---

**DATA ENGINEER - BIJOY NANDI**
**The Complete Path | No Confusion | Pure Focus** 💚

**NOW GO MASTER SQL WITH LUKE!** 📚
**EVERYTHING ELSE COMES LATER!** 🚀
