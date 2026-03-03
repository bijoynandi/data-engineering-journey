# 🐧 THE ULTIMATE PURE LINUX DATA ENGINEERING GUIDE
**Complete System | Production Ready | Zero Corporate BS**

**For:** Bijoy Nandi - Data Engineer
**System:** Fedora Linux + KDE Plasma
**Philosophy:** Linux is everything. Build systems that last.
**Date:** February 2026

---

## 📋 TABLE OF CONTENTS

1. [Philosophy & Principles](#philosophy)
2. [Complete Directory Structure](#directory-structure)
3. [System Foundation Setup](#system-foundation)
4. [Core Tools Installation](#core-tools)
5. [Python Environment Management](#python-environments)
6. [Database Stack](#database-stack)
7. [Data Engineering Tools](#data-engineering-tools)
8. [Container Infrastructure](#containers)
9. [Building Flexible Pipelines](#flexible-pipelines)
10. [Monitoring & Logging](#monitoring)
11. [Backup & Recovery](#backup-recovery)
12. [Maintenance Procedures](#maintenance)
13. [Production Checklist](#production-checklist)

---

## 🎯 PHILOSOPHY & PRINCIPLES {#philosophy}

### The Data Engineering Mindset

**Core Principles:**
```
1. Systems Over Scripts
   - Build reusable systems, not one-off scripts
   - Think in architectures, not quick fixes
   
2. Idempotency
   - Running twice = same result as running once
   - Pipelines should be safe to re-run
   
3. Data Quality First
   - Validate inputs
   - Test transformations
   - Verify outputs
   
4. Observability
   - Log everything
   - Monitor everything
   - Alert on everything
   
5. Simplicity
   - Simple systems are maintainable
   - Complex is fragile
   - KISS principle always
```

### The Unix Philosophy (Our Foundation)
```
1. Do one thing well
2. Compose tools together
3. Text is universal
4. Build for automation
5. Everything is a file
```

---

## 📁 COMPLETE DIRECTORY STRUCTURE {#directory-structure}

### Home Directory Layout
```
/home/bijoy/
│
├── Documents/
│   ├── Data-Engineering/           # 🎯 YOUR MAIN WORK
│   │   ├── Projects/               # Portfolio projects
│   │   │   ├── 01-sql-analysis/
│   │   │   ├── 02-etl-pipeline/
│   │   │   ├── 03-data-quality/
│   │   │   └── README.md
│   │   │
│   │   ├── Learning/               # Course work, practice
│   │   │   ├── sql/
│   │   │   ├── python/
│   │   │   ├── airflow/
│   │   │   └── dbt/
│   │   │
│   │   ├── Scripts/                # Reusable utilities
│   │   │   ├── extract/
│   │   │   ├── transform/
│   │   │   ├── load/
│   │   │   └── utils/
│   │   │
│   │   ├── Data/                   # Working data
│   │   │   ├── raw/
│   │   │   ├── staging/
│   │   │   ├── processed/
│   │   │   └── archive/
│   │   │
│   │   ├── Notebooks/              # Jupyter notebooks
│   │   │   ├── exploration/
│   │   │   ├── analysis/
│   │   │   └── documentation/
│   │   │
│   │   ├── Configs/                # Configuration files
│   │   │   ├── airflow/
│   │   │   ├── dbt/
│   │   │   └── database/
│   │   │
│   │   ├── Docs/                   # Documentation
│   │   │   ├── architecture/
│   │   │   ├── runbooks/
│   │   │   └── decisions/
│   │   │
│   │   └── Templates/              # Project templates
│   │       ├── etl-template/
│   │       ├── dbt-template/
│   │       └── pipeline-template/
│   │
│   ├── Books/                      # Technical books, PDFs
│   ├── Development/                # Other coding projects
│   ├── Fedora/                     # System configurations
│   └── Linux/                      # Linux learning
│
├── airflow/                        # Airflow home
│   ├── dags/                       # DAG definitions
│   ├── logs/                       # Execution logs
│   ├── plugins/                    # Custom plugins
│   └── airflow.cfg                 # Configuration
│
├── dbt-projects/                   # dbt projects
│   ├── analytics/
│   │   ├── models/
│   │   ├── tests/
│   │   ├── macros/
│   │   └── dbt_project.yml
│   └── data-quality/
│
├── .config/
│   ├── systemd/user/               # User services
│   └── dbt/                        # dbt profiles
│
└── .local/
    ├── bin/                        # User binaries
    └── share/                      # User data
```

### System-Wide Structure
```
/opt/
├── data-engineering/               # Shared tools
│   ├── scripts/
│   ├── templates/
│   └── resources/

/var/
├── lib/
│   └── postgresql/                 # PostgreSQL data
└── log/
    ├── airflow/                    # Airflow logs
    └── postgresql/                 # PostgreSQL logs

/etc/
├── systemd/
│   └── system/                     # System services
├── postgresql/                     # PostgreSQL configs
└── profile.d/                      # Shell environment
```

---

## 🔧 SYSTEM FOUNDATION SETUP {#system-foundation}

### 1. System Update & Base Tools
```bash
# Update system
sudo dnf upgrade --refresh -y

# Install development tools
sudo dnf group install development-tools c-development

# Install essential utilities
sudo dnf install \
  gcc gcc-c++ make cmake autoconf automake libtool \
  git git-lfs \
  curl wget \
  vim nano \
  htop btop \
  tmux screen \
  tree \
  jq yq \
  ripgrep fd-find bat \
  ncdu duf \
  net-tools \
  bind-utils \
  rsync \
  zip unzip \
  p7zip p7zip-plugins \
  postgresql-devel \
  python3-devel \
  libffi-devel \
  openssl-devel \
  readline-devel \
  zlib-devel \
  bzip2-devel \
  sqlite-devel \
  rust cargo
```

### 2. Configure Git
```bash
# Set identity
git config --global user.name "Bijoy Nandi"
git config --global user.email bijoynandi31@gmail.com

# Set editor
git config --global core.editor nano

# Set default branch
git config --global init.defaultBranch main

# Pretty log
git config --global alias.lg "log --oneline --graph --all --decorate"

# Show config
git config --list
```

### 3. SSH Setup
```bash
# Generate SSH key (if not exists)
if [ ! -f ~/.ssh/id_ed25519 ]; then
  ssh-keygen -t ed25519 -C "bijoynandi31@gmail.com"
fi

# Start SSH agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# Add to GitHub
cat ~/.ssh/id_ed25519.pub
# Copy and add to: https://github.com/settings/keys
```

---

## 🐍 PYTHON ENVIRONMENT MANAGEMENT {#python-environments}

### Conda Configuration
```bash
# Update conda
conda update -n base conda -y

# Configure channels
conda config --add channels conda-forge
conda config --set channel_priority strict

# Verify
conda config --show channels
```

### Create Data Engineering Environment
```bash
# Create environment
conda create -n data-eng python=3.11 -y

# Activate
conda activate data-eng

# Install core packages
conda install -c conda-forge \
  numpy pandas polars pyarrow \
  sqlalchemy psycopg2 \
  jupyter jupyterlab ipykernel ipywidgets \
  matplotlib \
  requests beautifulsoup4 \
  pyyaml python-dotenv click typer \
  pytest pytest-cov black ruff mypy \
  pre-commit \
  great-expectations pandera \
  loguru tqdm \
  -y

# Verify installations
python -c "import pandas; print(f'pandas: {pandas.__version__}')"
python -c "import polars; print(f'polars: {polars.__version__}')"
python -c "import sqlalchemy; print(f'sqlalchemy: {sqlalchemy.__version__}')"
python -c "import psycopg2; print(f'psycopg2: {psycopg2.__version__}')"

# Export environment
conda env export > ~/Documents/Data-Engineering/Configs/data-eng-environment.yml

# Add to bash for auto-activation
echo "conda activate data-eng" >> ~/.bashrc.d/tools.sh
```

### Environment Management Commands
```bash
# List environments
conda env list

# Update environment
conda activate data-eng
conda update --all -y

# Export environment
conda env export > environment.yml

# Create from file
conda env create -f environment.yml

# Clone environment
conda create --name data-eng-backup --clone data-eng

# Remove environment
conda env remove -n old-env
```

---

## 🗄️ DATABASE STACK {#database-stack}

### PostgreSQL Setup (Production Database)

**Installation:**
```bash
# Install
sudo dnf install -y postgresql postgresql-server postgresql-contrib

# Initialize
sudo postgresql-setup --initdb

# Enable and start
sudo systemctl enable --now postgresql

# Verify
systemctl status postgresql
```

**Configuration:**
```bash
# Backup original configs
BACKUP_DIR=~/Documents/Data-Engineering/Configs/postgresql-backup-$(date +%Y%m%d)
mkdir -p "$BACKUP_DIR"
sudo cp /var/lib/pgsql/data/pg_hba.conf "$BACKUP_DIR/"
sudo cp /var/lib/pgsql/data/postgresql.conf "$BACKUP_DIR/"

# Set password for postgres user
sudo -i -u postgres psql -c "\password postgres"
# Enter: strong_password_here

# Configure authentication (md5 for network access)
sudo sed -i 's/host    all             all             127.0.0.1\/32            ident/host    all             all             127.0.0.1\/32            md5/' /var/lib/pgsql/data/pg_hba.conf
sudo sed -i 's/host    all             all             ::1\/128                 ident/host    all             all             ::1\/128                 md5/' /var/lib/pgsql/data/pg_hba.conf

# Enable network connections
sudo sed -i "s/#listen_addresses = 'localhost'/listen_addresses = 'localhost'/" /var/lib/pgsql/data/postgresql.conf

# Performance tuning (adjust based on your RAM)
sudo tee -a /var/lib/pgsql/data/postgresql.conf > /dev/null << EOF

# Performance tuning for 32GB RAM system
shared_buffers = 8GB
effective_cache_size = 24GB
maintenance_work_mem = 2GB
checkpoint_completion_target = 0.9
wal_buffers = 16MB
default_statistics_target = 100
random_page_cost = 1.1
effective_io_concurrency = 200
work_mem = 20MB
min_wal_size = 2GB
max_wal_size = 8GB
max_worker_processes = 8
max_parallel_workers_per_gather = 4
max_parallel_workers = 8
max_parallel_maintenance_workers = 4
EOF

# Restart PostgreSQL
sudo systemctl restart postgresql

# Test connection
psql -U postgres -h localhost -d postgres -c "SELECT version();"
```

**Create Data Engineering Databases:**
```bash
# Connect as postgres
psql -U postgres -h localhost -d postgres

# Create databases
CREATE DATABASE airflow;
CREATE DATABASE dbt_dev;
CREATE DATABASE dbt_prod;
CREATE DATABASE analytics;
CREATE DATABASE staging;

# Create user for data engineering
CREATE USER data_eng WITH PASSWORD 'strong_password_here';

# Grant privileges
GRANT ALL PRIVILEGES ON DATABASE airflow TO data_eng;
GRANT ALL PRIVILEGES ON DATABASE dbt_dev TO data_eng;
GRANT ALL PRIVILEGES ON DATABASE dbt_prod TO data_eng;
GRANT ALL PRIVILEGES ON DATABASE analytics TO data_eng;
GRANT ALL PRIVILEGES ON DATABASE staging TO data_eng;

# List databases
\l

# Exit
\q
```

**Connection String Template:**
```bash
# Add to ~/.bashrc.d/tools.sh
export DATABASE_URL="postgresql://data_eng:strong_password_here@localhost:5432/analytics"
export AIRFLOW_DATABASE_URL="postgresql://data_eng:strong_password_here@localhost:5432/airflow"
export DBT_DATABASE_URL="postgresql://data_eng:strong_password_here@localhost:5432/dbt_dev"
```

### DuckDB Setup (Analytics Database)

**Already installed!** ✅

**Usage:**
```bash
# Local database
duckdb ~/Documents/Data-Engineering/Data/analytics.duckdb

# In-memory
duckdb

# Query CSV directly
duckdb -c "SELECT * FROM 'data.csv' LIMIT 10"

# MotherDuck (cloud)
duckdb md:database_name
```

**DuckDB for Quick Analysis:**
```sql
-- Read CSV
SELECT * FROM read_csv_auto('data.csv');

-- Read Parquet
SELECT * FROM read_parquet('data.parquet');

-- Read JSON
SELECT * FROM read_json_auto('data.json');

-- Export query results
COPY (SELECT * FROM data WHERE condition) TO 'output.parquet';
```

---

## 🔧 DATA ENGINEERING TOOLS {#data-engineering-tools}

### Apache Airflow Installation

**Create Environment:**
```bash
# Create dedicated environment
conda create -n airflow python=3.11 -y
conda activate airflow

# Install Airflow
conda install -c conda-forge apache-airflow-core -y

# Install providers
conda install -c conda-forge \
  apache-airflow-providers-postgres \
  apache-airflow-providers-http \
  apache-airflow-providers-common-sql \
  -y
```

**Initialize Airflow:**
```bash
# Set Airflow home
export AIRFLOW_HOME=~/airflow
echo "export AIRFLOW_HOME=~/airflow" >> ~/.bashrc.d/tools.sh

# Initialize database (SQLite for initial setup)
airflow db migrate

# Create admin user
airflow users create \
  --username admin \
  --firstname Bijoy \
  --lastname Nandi \
  --role Admin \
  --email bijoynandi31@gmail.com \
  --password admin
```

**Configure PostgreSQL Backend:**
```bash
# Update airflow.cfg
sed -i 's|sql_alchemy_conn = .*|sql_alchemy_conn = postgresql+psycopg2://data_eng:strong_password_here@localhost/airflow|' ~/airflow/airflow.cfg

# Set executor to LocalExecutor
sed -i 's|executor = .*|executor = LocalExecutor|' ~/airflow/airflow.cfg

# Re-initialize with PostgreSQL
airflow db migrate
```

**Create Systemd Services:**
```bash
# Create directory
mkdir -p ~/.config/systemd/user

# Scheduler service
cat > ~/.config/systemd/user/airflow-scheduler.service << 'EOF'
[Unit]
Description=Airflow Scheduler
After=network.target postgresql.service

[Service]
Type=simple
Environment="AIRFLOW_HOME=/home/bijoy/airflow"
Environment="PATH=/home/bijoy/anaconda3/envs/airflow/bin:/usr/local/bin:/usr/bin:/bin"
ExecStart=/home/bijoy/anaconda3/envs/airflow/bin/airflow scheduler
Restart=on-failure
RestartSec=10

[Install]
WantedBy=default.target
EOF

# Webserver service
cat > ~/.config/systemd/user/airflow-webserver.service << 'EOF'
[Unit]
Description=Airflow Webserver
After=network.target postgresql.service

[Service]
Type=simple
Environment="AIRFLOW_HOME=/home/bijoy/airflow"
Environment="PATH=/home/bijoy/anaconda3/envs/airflow/bin:/usr/local/bin:/usr/bin:/bin"
ExecStart=/home/bijoy/anaconda3/envs/airflow/bin/airflow webserver --port 8080
Restart=on-failure
RestartSec=10

[Install]
WantedBy=default.target
EOF

# Reload systemd
systemctl --user daemon-reload

# Enable services
systemctl --user enable airflow-scheduler airflow-webserver

# Start services
systemctl --user start airflow-scheduler airflow-webserver

# Check status
systemctl --user status airflow-scheduler
systemctl --user status airflow-webserver
```

**Access Airflow UI:**
```
URL: http://localhost:8080
Username: admin
Password: admin
```

### dbt Installation

**Create Environment:**
```bash
# Create dedicated environment
conda create -n dbt python=3.11 -y
conda activate dbt

# Install dbt
conda install -c conda-forge \
  dbt-core \
  dbt-postgres \
  dbt-duckdb \
  -y

# Verify
dbt --version
```

**Initialize dbt Project:**
```bash
# Create projects directory
mkdir -p ~/dbt-projects
cd ~/dbt-projects

# Initialize project
dbt init analytics

# Configure profile
mkdir -p ~/.dbt
cat > ~/.dbt/profiles.yml << 'EOF'
analytics:
  outputs:
    dev:
      type: postgres
      host: localhost
      port: 5432
      user: data_eng
      password: strong_password_here
      dbname: dbt_dev
      schema: analytics_dev
      threads: 4
      keepalives_idle: 0

    prod:
      type: postgres
      host: localhost
      port: 5432
      user: data_eng
      password: strong_password_here
      dbname: dbt_prod
      schema: analytics_prod
      threads: 8
      keepalives_idle: 0

  target: dev
EOF

# Test connection
cd ~/dbt-projects/analytics
dbt debug
```

---

## 🐳 CONTAINER INFRASTRUCTURE {#containers}

### Podman Setup (Already Installed!)

**Configuration:**
```bash
# Enable user lingering (containers persist after logout)
sudo loginctl enable-linger $USER

# Verify
loginctl show-user $USER | grep Linger

# Create pod for data services
podman pod create --name data-services \
  -p 6379:6379 \
  -p 9000:9000 \
  -p 9001:9001
```

### Redis (Caching Layer)
```bash
# Run Redis
podman run -d \
  --pod data-services \
  --name redis \
  --restart unless-stopped \
  redis:alpine

# Test
podman exec -it redis redis-cli ping
# Should return: PONG
```

### MinIO (Object Storage - S3 Compatible)
```bash
# Run MinIO
podman run -d \
  --pod data-services \
  --name minio \
  --restart unless-stopped \
  -e "MINIO_ROOT_USER=minioadmin" \
  -e "MINIO_ROOT_PASSWORD=minioadmin123" \
  -v minio-data:/data \
  quay.io/minio/minio server /data --console-address ":9001"

# Access UI: http://localhost:9001
# Login: minioadmin / minioadmin123
```

### Podman Compose Stack
```bash
# Create compose directory
mkdir -p ~/Documents/Data-Engineering/Configs/podman-compose

# Create docker-compose.yml
cat > ~/Documents/Data-Engineering/Configs/podman-compose/docker-compose.yml << 'EOF'
version: '3.8'

services:
  redis:
    image: redis:alpine
    container_name: data-redis
    ports:
      - "6379:6379"
    volumes:
      - redis-data:/data
    restart: unless-stopped

  minio:
    image: quay.io/minio/minio
    container_name: data-minio
    ports:
      - "9000:9000"
      - "9001:9001"
    environment:
      MINIO_ROOT_USER: minioadmin
      MINIO_ROOT_PASSWORD: minioadmin123
    command: server /data --console-address ":9001"
    volumes:
      - minio-data:/data
    restart: unless-stopped

volumes:
  redis-data:
  minio-data:
EOF

# Start stack
cd ~/Documents/Data-Engineering/Configs/podman-compose
podman-compose up -d

# Check status
podman-compose ps

# View logs
podman-compose logs -f

# Stop stack
podman-compose down
```

---

## 🔄 BUILDING FLEXIBLE PIPELINES {#flexible-pipelines}

### Pipeline Architecture Principles

**Layered Architecture:**
```
┌─────────────────────────────────────────────┐
│             PRESENTATION LAYER               │
│  (Dashboards, Reports, APIs)                │
└─────────────────────────────────────────────┘
                    ↑
┌─────────────────────────────────────────────┐
│              SERVING LAYER                   │
│  (Data Marts, Aggregated Tables)            │
└─────────────────────────────────────────────┘
                    ↑
┌─────────────────────────────────────────────┐
│            BUSINESS LOGIC LAYER              │
│  (Transformations, Calculations, dbt)       │
└─────────────────────────────────────────────┘
                    ↑
┌─────────────────────────────────────────────┐
│             INTEGRATION LAYER                │
│  (Cleaning, Standardization, Quality)       │
└─────────────────────────────────────────────┘
                    ↑
┌─────────────────────────────────────────────┐
│              INGESTION LAYER                 │
│  (Extract from Sources, Load to Raw)        │
└─────────────────────────────────────────────┘
                    ↑
┌─────────────────────────────────────────────┐
│               SOURCE SYSTEMS                 │
│  (APIs, Databases, Files, Streams)          │
└─────────────────────────────────────────────┘
```

### Generic ETL Pipeline Template

**Directory Structure:**
```
~/Documents/Data-Engineering/Templates/etl-template/
├── extract/
│   ├── __init__.py
│   ├── api_extractor.py
│   ├── database_extractor.py
│   └── file_extractor.py
├── transform/
│   ├── __init__.py
│   ├── cleaners.py
│   ├── validators.py
│   └── enrichers.py
├── load/
│   ├── __init__.py
│   ├── postgres_loader.py
│   └── file_loader.py
├── config/
│   ├── pipeline.yaml
│   └── connections.yaml
├── tests/
│   ├── test_extract.py
│   ├── test_transform.py
│   └── test_load.py
├── main.py
├── requirements.txt
└── README.md
```

**Base Extractor Class:**
```python
# extract/base_extractor.py
from abc import ABC, abstractmethod
from typing import Any, Dict
import logging

logger = logging.getLogger(__name__)

class BaseExtractor(ABC):
    """Base class for all extractors"""
    
    def __init__(self, config: Dict[str, Any]):
        self.config = config
        self.data = None
    
    @abstractmethod
    def extract(self) -> Any:
        """Extract data from source"""
        pass
    
    def validate_config(self) -> bool:
        """Validate configuration"""
        required_keys = self.get_required_config_keys()
        return all(key in self.config for key in required_keys)
    
    @abstractmethod
    def get_required_config_keys(self) -> list:
        """Return list of required configuration keys"""
        pass
    
    def run(self) -> Any:
        """Run extraction with error handling"""
        try:
            if not self.validate_config():
                raise ValueError("Invalid configuration")
            
            logger.info(f"Starting extraction: {self.__class__.__name__}")
            self.data = self.extract()
            logger.info(f"Extraction complete: {self.__class__.__name__}")
            return self.data
            
        except Exception as e:
            logger.error(f"Extraction failed: {str(e)}")
            raise
```

**Base Transformer Class:**
```python
# transform/base_transformer.py
from abc import ABC, abstractmethod
from typing import Any
import logging

logger = logging.getLogger(__name__)

class BaseTransformer(ABC):
    """Base class for all transformers"""
    
    def __init__(self, data: Any):
        self.data = data
        self.transformed_data = None
    
    @abstractmethod
    def transform(self) -> Any:
        """Transform data"""
        pass
    
    @abstractmethod
    def validate(self) -> bool:
        """Validate transformed data"""
        pass
    
    def run(self) -> Any:
        """Run transformation with validation"""
        try:
            logger.info(f"Starting transformation: {self.__class__.__name__}")
            self.transformed_data = self.transform()
            
            if not self.validate():
                raise ValueError("Validation failed")
            
            logger.info(f"Transformation complete: {self.__class__.__name__}")
            return self.transformed_data
            
        except Exception as e:
            logger.error(f"Transformation failed: {str(e)}")
            raise
```

**Base Loader Class:**
```python
# load/base_loader.py
from abc import ABC, abstractmethod
from typing import Any, Dict
import logging

logger = logging.getLogger(__name__)

class BaseLoader(ABC):
    """Base class for all loaders"""
    
    def __init__(self, data: Any, config: Dict[str, Any]):
        self.data = data
        self.config = config
    
    @abstractmethod
    def load(self) -> bool:
        """Load data to destination"""
        pass
    
    @abstractmethod
    def verify_load(self) -> bool:
        """Verify data was loaded correctly"""
        pass
    
    def run(self) -> bool:
        """Run load with verification"""
        try:
            logger.info(f"Starting load: {self.__class__.__name__}")
            success = self.load()
            
            if success and self.verify_load():
                logger.info(f"Load complete and verified: {self.__class__.__name__}")
                return True
            else:
                raise ValueError("Load verification failed")
                
        except Exception as e:
            logger.error(f"Load failed: {str(e)}")
            raise
```

**Complete Pipeline Orchestrator:**
```python
# main.py
import yaml
import logging
from pathlib import Path
from typing import Dict, Any

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

class Pipeline:
    """Generic ETL Pipeline"""
    
    def __init__(self, config_path: str):
        self.config = self.load_config(config_path)
        self.extractor = None
        self.transformer = None
        self.loader = None
    
    def load_config(self, config_path: str) -> Dict[str, Any]:
        """Load pipeline configuration"""
        with open(config_path, 'r') as f:
            return yaml.safe_load(f)
    
    def setup_extractor(self):
        """Initialize extractor based on config"""
        extractor_type = self.config['extract']['type']
        extractor_config = self.config['extract']['config']
        
        # Dynamic import based on type
        module = __import__(f"extract.{extractor_type}_extractor", fromlist=[''])
        extractor_class = getattr(module, f"{extractor_type.capitalize()}Extractor")
        self.extractor = extractor_class(extractor_config)
    
    def setup_transformer(self, data):
        """Initialize transformer based on config"""
        transformer_type = self.config['transform']['type']
        
        module = __import__(f"transform.{transformer_type}", fromlist=[''])
        transformer_class = getattr(module, f"{transformer_type.capitalize()}Transformer")
        self.transformer = transformer_class(data)
    
    def setup_loader(self, data):
        """Initialize loader based on config"""
        loader_type = self.config['load']['type']
        loader_config = self.config['load']['config']
        
        module = __import__(f"load.{loader_type}_loader", fromlist=[''])
        loader_class = getattr(module, f"{loader_type.capitalize()}Loader")
        self.loader = loader_class(data, loader_config)
    
    def run(self):
        """Execute complete ETL pipeline"""
        try:
            logger.info("="*50)
            logger.info("Starting ETL Pipeline")
            logger.info("="*50)
            
            # Extract
            self.setup_extractor()
            data = self.extractor.run()
            logger.info(f"Extracted {len(data) if hasattr(data, '__len__') else 'N/A'} records")
            
            # Transform
            self.setup_transformer(data)
            transformed_data = self.transformer.run()
            logger.info(f"Transformed {len(transformed_data) if hasattr(transformed_data, '__len__') else 'N/A'} records")
            
            # Load
            self.setup_loader(transformed_data)
            success = self.loader.run()
            
            logger.info("="*50)
            logger.info("ETL Pipeline Complete!")
            logger.info("="*50)
            
            return success
            
        except Exception as e:
            logger.error(f"Pipeline failed: {str(e)}")
            raise

if __name__ == "__main__":
    pipeline = Pipeline("config/pipeline.yaml")
    pipeline.run()
```

**Configuration Example:**
```yaml
# config/pipeline.yaml
pipeline:
  name: "example-etl"
  version: "1.0"
  description: "Example ETL pipeline"

extract:
  type: "api"
  config:
    url: "https://api.example.com/data"
    method: "GET"
    headers:
      Authorization: "Bearer ${API_TOKEN}"
    timeout: 30

transform:
  type: "standard"
  steps:
    - clean_nulls
    - standardize_dates
    - validate_schema

load:
  type: "postgres"
  config:
    connection_string: "${DATABASE_URL}"
    table: "raw_data"
    schema: "staging"
    mode: "append"  # or "replace"
```

### Data Quality Framework

**Data Quality Checks:**
```python
# transform/data_quality.py
import pandas as pd
from typing import Dict, List, Any
import logging

logger = logging.getLogger(__name__)

class DataQualityChecker:
    """Comprehensive data quality validation"""
    
    def __init__(self, df: pd.DataFrame, rules: Dict[str, Any]):
        self.df = df
        self.rules = rules
        self.failed_checks = []
    
    def check_nulls(self, columns: List[str]) -> bool:
        """Check for null values in specified columns"""
        for col in columns:
            null_count = self.df[col].isnull().sum()
            if null_count > 0:
                self.failed_checks.append(f"{col}: {null_count} null values")
                logger.warning(f"Null check failed for {col}")
                return False
        return True
    
    def check_duplicates(self, columns: List[str]) -> bool:
        """Check for duplicate rows based on columns"""
        dup_count = self.df.duplicated(subset=columns).sum()
        if dup_count > 0:
            self.failed_checks.append(f"{dup_count} duplicate rows")
            logger.warning(f"Duplicate check failed: {dup_count} duplicates")
            return False
        return True
    
    def check_schema(self, expected_schema: Dict[str, str]) -> bool:
        """Validate column data types"""
        for col, expected_type in expected_schema.items():
            actual_type = str(self.df[col].dtype)
            if actual_type != expected_type:
                self.failed_checks.append(f"{col}: expected {expected_type}, got {actual_type}")
                logger.warning(f"Schema check failed for {col}")
                return False
        return True
    
    def check_range(self, column: str, min_val: Any, max_val: Any) -> bool:
        """Check if values are within expected range"""
        out_of_range = ((self.df[column] < min_val) | (self.df[column] > max_val)).sum()
        if out_of_range > 0:
            self.failed_checks.append(f"{column}: {out_of_range} values out of range")
            logger.warning(f"Range check failed for {column}")
            return False
        return True
    
    def run_all_checks(self) -> bool:
        """Execute all configured quality checks"""
        all_passed = True
        
        if 'null_checks' in self.rules:
            all_passed &= self.check_nulls(self.rules['null_checks'])
        
        if 'duplicate_checks' in self.rules:
            all_passed &= self.check_duplicates(self.rules['duplicate_checks'])
        
        if 'schema_checks' in self.rules:
            all_passed &= self.check_schema(self.rules['schema_checks'])
        
        if 'range_checks' in self.rules:
            for check in self.rules['range_checks']:
                all_passed &= self.check_range(
                    check['column'],
                    check['min'],
                    check['max']
                )
        
        if not all_passed:
            logger.error(f"Data quality checks failed: {self.failed_checks}")
        else:
            logger.info("All data quality checks passed")
        
        return all_passed
```

---

## 📊 MONITORING & LOGGING {#monitoring}

### Centralized Logging Setup

**Log Directory Structure:**
```
/var/log/data-engineering/
├── airflow/
│   ├── scheduler/
│   ├── webserver/
│   └── dags/
├── pipelines/
│   ├── etl-job-1/
│   └── etl-job-2/
└── quality/
    └── validation-failures/
```

**Logging Configuration:**
```python
# utils/logging_config.py
import logging
import logging.handlers
from pathlib import Path

def setup_logging(name: str, log_dir: str = "/var/log/data-engineering"):
    """Configure logging for pipeline"""
    
    # Create log directory
    log_path = Path(log_dir) / name
    log_path.mkdir(parents=True, exist_ok=True)
    
    # Create logger
    logger = logging.getLogger(name)
    logger.setLevel(logging.INFO)
    
    # File handler (rotating)
    file_handler = logging.handlers.RotatingFileHandler(
        log_path / f"{name}.log",
        maxBytes=10*1024*1024,  # 10MB
        backupCount=5
    )
    file_handler.setLevel(logging.INFO)
    
    # Console handler
    console_handler = logging.StreamHandler()
    console_handler.setLevel(logging.INFO)
    
    # Formatter
    formatter = logging.Formatter(
        '%(asctime)s - %(name)s - %(levelname)s - %(message)s'
    )
    file_handler.setFormatter(formatter)
    console_handler.setFormatter(formatter)
    
    # Add handlers
    logger.addHandler(file_handler)
    logger.addHandler(console_handler)
    
    return logger
```

### Monitoring Script

**System Health Check:**
```bash
#!/bin/bash
# ~/Documents/Data-Engineering/Scripts/utils/health-check.sh

echo "==================================="
echo "Data Engineering System Health Check"
echo "==================================="
echo ""

# PostgreSQL
echo "📊 PostgreSQL:"
systemctl status postgresql | grep "Active:" || echo "❌ Not running"
psql -U postgres -h localhost -d postgres -c "SELECT 1" &>/dev/null && echo "✅ Connection OK" || echo "❌ Connection failed"
echo ""

# Airflow
echo "⚡ Airflow:"
systemctl --user status airflow-scheduler | grep "Active:" || echo "❌ Scheduler not running"
systemctl --user status airflow-webserver | grep "Active:" || echo "❌ Webserver not running"
echo ""

# Podman Containers
echo "🐳 Podman Containers:"
podman ps --format "table {{.Names}}\t{{.Status}}"
echo ""

# Disk Space
echo "💾 Disk Space:"
df -h / | tail -1
echo ""

# PostgreSQL Database Sizes
echo "🗄️  Database Sizes:"
psql -U postgres -h localhost -d postgres -c "
SELECT
  datname,
  pg_size_pretty(pg_database_size(datname)) AS size
FROM pg_database
WHERE datname NOT IN ('template0', 'template1')
ORDER BY pg_database_size(datname) DESC;
" 2>/dev/null || echo "Cannot connect to PostgreSQL"
echo ""

echo "==================================="
echo "Health check complete!"
echo "==================================="
```

---

## 💾 BACKUP & RECOVERY {#backup-recovery}

### Automated Backup System

**Backup Script:**
```bash
#!/bin/bash
# ~/Documents/Data-Engineering/Scripts/utils/backup-system.sh

set -e

BACKUP_ROOT="/home/bijoy/Documents/Data-Engineering/Backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="$BACKUP_ROOT/$TIMESTAMP"

echo "Starting system backup: $TIMESTAMP"
mkdir -p "$BACKUP_DIR"

# Backup PostgreSQL databases
echo "Backing up PostgreSQL databases..."
for db in airflow dbt_dev dbt_prod analytics staging; do
    echo "  - $db"
    pg_dump -U data_eng -h localhost $db | gzip > "$BACKUP_DIR/postgres_${db}.sql.gz"
done

# Backup Airflow
echo "Backing up Airflow..."
mkdir -p "$BACKUP_DIR/airflow"
cp -r ~/airflow/dags "$BACKUP_DIR/airflow/"
cp ~/airflow/airflow.cfg "$BACKUP_DIR/airflow/"

# Backup dbt projects
echo "Backing up dbt projects..."
cp -r ~/dbt-projects "$BACKUP_DIR/"

# Backup configurations
echo "Backing up configurations..."
cp -r ~/Documents/Data-Engineering/Configs "$BACKUP_DIR/"

# Backup conda environments
echo "Backing up conda environments..."
mkdir -p "$BACKUP_DIR/conda"
conda env export -n data-eng > "$BACKUP_DIR/conda/data-eng.yml"
conda env export -n airflow > "$BACKUP_DIR/conda/airflow.yml"
conda env export -n dbt > "$BACKUP_DIR/conda/dbt.yml"

# Create backup manifest
cat > "$BACKUP_DIR/MANIFEST.txt" << EOF
Backup created: $TIMESTAMP
System: $(uname -a)
PostgreSQL: $(psql --version)
DuckDB: $(duckdb --version)
Conda: $(conda --version)

Databases backed up:
- airflow
- dbt_dev
- dbt_prod
- analytics
- staging

Components backed up:
- Airflow DAGs and config
- dbt projects
- Conda environments
- Configurations
EOF

echo "Backup complete: $BACKUP_DIR"
echo "Backup size: $(du -sh $BACKUP_DIR | cut -f1)"

# Clean old backups (keep last 7 days)
find "$BACKUP_ROOT" -type d -mtime +7 -exec rm -rf {} + 2>/dev/null || true

echo "Old backups cleaned (kept last 7 days)"
```

**Schedule with Cron:**
```bash
# Add to crontab
crontab -e

# Add this line (daily at 2 AM)
0 2 * * * /home/bijoy/Documents/Data-Engineering/Scripts/utils/backup-system.sh >> /home/bijoy/Documents/Data-Engineering/Logs/backup.log 2>&1
```

---

## 🔧 MAINTENANCE PROCEDURES {#maintenance}

### Weekly Maintenance Checklist

**Script:**
```bash
#!/bin/bash
# ~/Documents/Data-Engineering/Scripts/utils/weekly-maintenance.sh

echo "==================================="
echo "Weekly Maintenance - $(date)"
echo "==================================="

# Update system
echo "1. Updating system packages..."
sudo dnf upgrade -y

# Update conda
echo "2. Updating conda..."
conda update -n base conda -y

# Update environments
echo "3. Updating conda environments..."
for env in data-eng airflow dbt; do
    echo "  - $env"
    conda activate $env
    conda update --all -y
done

# Vacuum PostgreSQL databases
echo "4. Vacuuming PostgreSQL..."
for db in airflow dbt_dev dbt_prod analytics staging; do
    echo "  - $db"
    psql -U data_eng -h localhost -d $db -c "VACUUM ANALYZE;"
done

# Clean Airflow logs (older than 30 days)
echo "5. Cleaning Airflow logs..."
find ~/airflow/logs -type f -mtime +30 -delete

# Clean Podman
echo "6. Cleaning Podman..."
podman system prune -a -f

# Export updated environments
echo "7. Exporting environment specs..."
conda activate data-eng
conda env export > ~/Documents/Data-Engineering/Configs/data-eng-environment.yml

echo "==================================="
echo "Weekly maintenance complete!"
echo "==================================="
```

---

## ✅ PRODUCTION CHECKLIST {#production-checklist}

### Pre-Production Verification

**Checklist Script:**
```bash
#!/bin/bash
# ~/Documents/Data-Engineering/Scripts/utils/production-checklist.sh

echo "🎯 PRODUCTION READINESS CHECK"
echo "=============================="
echo ""

PASS=0
FAIL=0

check() {
    if $1; then
        echo "✅ $2"
        ((PASS++))
    else
        echo "❌ $2"
        ((FAIL++))
    fi
}

# System checks
check "systemctl status postgresql &>/dev/null" "PostgreSQL running"
check "systemctl --user status airflow-scheduler &>/dev/null" "Airflow Scheduler running"
check "systemctl --user status airflow-webserver &>/dev/null" "Airflow Webserver running"

# Database checks
check "psql -U data_eng -h localhost -d airflow -c 'SELECT 1' &>/dev/null" "Airflow DB accessible"
check "psql -U data_eng -h localhost -d analytics -c 'SELECT 1' &>/dev/null" "Analytics DB accessible"

# Environment checks
check "conda env list | grep data-eng &>/dev/null" "data-eng environment exists"
check "conda env list | grep airflow &>/dev/null" "Airflow environment exists"
check "conda env list | grep dbt &>/dev/null" "dbt environment exists"

# Tool checks
check "command -v duckdb &>/dev/null" "DuckDB installed"
check "command -v git &>/dev/null" "Git installed"
check "command -v podman &>/dev/null" "Podman installed"

# Container checks
check "podman ps | grep redis &>/dev/null" "Redis container running"
check "podman ps | grep minio &>/dev/null" "MinIO container running"

# Directory structure
check "[ -d ~/Documents/Data-Engineering ]" "Main directory exists"
check "[ -d ~/airflow/dags ]" "Airflow DAGs directory exists"
check "[ -d ~/dbt-projects ]" "dbt projects directory exists"

# Configuration files
check "[ -f ~/.dbt/profiles.yml ]" "dbt profiles configured"
check "[ -f ~/airflow/airflow.cfg ]" "Airflow configured"

echo ""
echo "=============================="
echo "Results: $PASS passed, $FAIL failed"
echo "=============================="

if [ $FAIL -eq 0 ]; then
    echo "🎉 SYSTEM IS PRODUCTION READY!"
    exit 0
else
    echo "⚠️  SYSTEM NOT READY - Fix failed checks"
    exit 1
fi
```

---

## 🚀 QUICK START GUIDE

### Day 1 Setup
```bash
# 1. Update system
sudo dnf upgrade --refresh -y

# 2. Install base tools
sudo dnf group install development-tools
sudo dnf install git postgresql postgresql-server podman -y

# 3. Setup PostgreSQL
sudo postgresql-setup --initdb
sudo systemctl enable --now postgresql

# 4. Create conda environment
conda create -n data-eng python=3.11 -y
conda activate data-eng
conda install -c conda-forge pandas polars sqlalchemy psycopg2 jupyter -y

# 5. Create directory structure
mkdir -p ~/Documents/Data-Engineering/{Projects,Scripts,Data,Notebooks,Configs}

# 6. Initialize Git
cd ~/Documents/Data-Engineering
git init
```

### Daily Workflow
```bash
# Morning
conda activate data-eng
cd ~/Documents/Data-Engineering
git pull

# Work
jupyter lab  # For exploration
code .       # For coding

# Evening
git add .
git commit -m "Daily progress"
git push
```

---

**PURE LINUX DATA ENGINEERING**
**Systems That Last | Pipelines That Scale** 💚
