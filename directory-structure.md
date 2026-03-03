**The Structure:**
```
~/Documents/Data-Engineering/
│
├── Learning/                          # Everything you STUDY
│   ├── sql/                           # SQL courses + projects
│   ├── python/                        # Python courses + projects
│   ├── airflow/                       # Month 4
│   ├── dbt/                           # Month 5
│   └── books/                         # ALL YOUR BOOKS!
│       ├── README.md                  # ← Books guide lives HERE
│       ├── 1-Learning-SQL.pdf
│       ├── 2-Python-Data-Analysis.pdf
│       └── ... (all 10 books)
│
├── Projects/                          # Things you BUILD
│   ├── 01-sql-analysis/
│   ├── 02-etl-pipeline/
│   └── 03-data-quality/
│
├── Docs/                              # Reference DOCUMENTS
│   ├── architecture/                  # System diagrams
│   ├── decisions/                     # Why you chose X over Y
│   ├── runbooks/                      # How to do things
│   └── career/                        # ← Career docs live HERE!
│       ├── linkedin-reference.md      # LinkedIn guide
│       ├── github-guide.md            # GitHub guide
│       └── complete-review.md         # System audit
│
├── Guides/                            # The BIG guides buddy made
│   ├── FINAL-data-engineering-guide.md
│   ├── ultimate-pure-linux-data-engineering-guide.md
│   └── README.md                      # Which guide for what
│
├── Scripts/
├── Data/
├── Notebooks/
├── Configs/
└── Templates/
```

**The Logic:**
```
Books    = Learning material    → Learning/books/
README   = Explains the books  → Learning/books/README.md
LinkedIn = Career document      → Docs/career/linkedin-reference.md
GitHub   = Career document      → Docs/career/github-guide.md
Review   = Career document      → Docs/career/complete-review.md
Guides   = Big reference guides → Guides/
```

**ONE rule to remember:**
```
Learning something?  → Learning/
Building something?  → Projects/
Referencing docs?    → Docs/
Using career stuff?  → Docs/career/
Using big guides?    → Guides/
```
