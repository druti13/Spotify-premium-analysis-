# Spotify Premium Adoption Analysis


## Project Highlights

| Metric | Value |
|--------|-------|
| **Dataset Size** | 1,245 users analyzed across 27 features |
| **Revenue Opportunity** | $89,388 annual potential from conversion-ready users |
| **Conversion Rate** | 60% of free users willing to upgrade to premium |
| **Top Insight** | Multi-content consumers show 45% higher conversion rate |
| **Analysis Duration** | 2 weeks end-to-end pipeline development |
| **Dashboard Pages** | 3 interactive visualizations with 15+ charts |

---

## Table of Contents

- [Project Overview](#project-overview)
- [Business Problem](#business-problem)
- [Key Findings](#key-findings)
- [Tech Stack](#tech-stack)
- [Dataset Information](#dataset-information)
- [Project Structure](#project-structure)
- [Installation & Setup](#installation--setup)
- [Analysis Methodology](#analysis-methodology)
- [Dashboard Overview](#dashboard-overview)
- [Strategic Recommendations](#strategic-recommendations)
- [Skills Demonstrated](#skills-demonstrated)
- [Future Enhancements](#future-enhancements)
- [Author](#author)
- [License](#license)

---

## 📊 Project Overview

This project analyzes user behavior patterns in a music streaming platform to identify key drivers of premium subscription adoption. Through comprehensive data analysis using Python, PostgreSQL, and Power BI, the project uncovers actionable insights that can drive targeted marketing strategies and increase premium conversion rates.

### Objectives
1. Identify demographic and behavioral factors influencing premium willingness
2. Segment users into actionable personas for targeted campaigns
3. Analyze content preference patterns (music vs podcasts)
4. Quantify revenue opportunity from conversion-ready users
5. Provide data-driven strategic recommendations

---

## Business Problem

**Challenge:**  
Understanding what motivates free users to upgrade to premium subscriptions is critical for revenue growth in competitive streaming markets. Without data-driven insights, marketing campaigns lack precision and ROI suffers.

**Impact:**  
- Inefficient marketing spend on low-potential user segments
- Missed revenue opportunities from high-intent users
- Unclear content strategy leading to user dissatisfaction
- Limited understanding of competitive differentiation factors

**Solution:**  
Comprehensive behavioral analysis to identify high-value segments, content gaps, and satisfaction drivers that can be leveraged for targeted conversion campaigns.

---

## Key Findings

### Finding 1: Multi-Content Consumers Drive Premium Intent
**Discovery:**  
Users who engage with both music AND podcasts demonstrate **45% higher premium willingness** (72% vs 50% for music-only users)

**Impact:**  
- Represents 298 users worth $35,760 in annual revenue
- Indicates strong product-market fit for bundled content strategy

**Recommendation:**  
Promote podcast discovery to music-only users through personalized in-app prompts and curated cross-content playlists

---

### Finding 2: Satisfaction Directly Correlates with Conversion
**Discovery:**  
Users rating recommendation engine 4-5 stars show **38% higher premium willingness** compared to 1-3 star raters (65% vs 47%)

**Impact:**  
- Moving 100 users from low to high satisfaction could generate $11,988 additional annual revenue
- Recommendation quality is a key competitive differentiator

**Recommendation:**  
Invest in ML model improvements for personalization engine; A/B test enhanced algorithms with low-satisfaction cohort

---

### Finding 3: Age 26-35 Represents Highest Value Segment
**Discovery:**  
26-35 age group shows **68% premium willingness** (highest across all demographics) with strong engagement scores (8.2/10 average)

**Impact:**  
- 412 users in this segment, 280 conversion-ready
- $33,578 annual revenue potential from this age group alone

**Recommendation:**  
Design age-targeted campaigns emphasizing career productivity, commute features, and social sharing capabilities

---

### Finding 4: Mobile-First Users Show Higher Engagement
**Discovery:**  
Mobile device users demonstrate **62% premium willingness** vs 53% for desktop users, with 25% higher daily usage frequency

**Impact:**  
- Mobile represents 58% of total user base (722 users)
- Device-optimized experiences drive retention and conversion

**Recommendation:**  
Develop mobile-exclusive premium features (offline mode, data-free listening) and push notifications for premium trials

---

## Tech Stack

### Programming & Analysis
- **Python 3.11** - Data cleaning, transformation, and exploratory analysis
  - `pandas 2.0.3` - Data manipulation and wrangling
  - `numpy 1.24.3` - Numerical computations
  - `matplotlib 3.7.2` - Statistical visualizations
  - `seaborn 0.12.2` - Advanced plotting

### Database & Querying
- **PostgreSQL 16** - Data warehousing and complex analytical queries
- **pgAdmin 4** - Database administration and query execution
- **SQLAlchemy 2.0.19** - Python-PostgreSQL connectivity

### Business Intelligence
- **Power BI Desktop** - Interactive dashboards and KPI tracking
- **DAX** - Custom measures and calculated columns

### Development Tools
- **Jupyter Notebook** - Interactive development and documentation
- **Git & GitHub** - Version control and project sharing
- **VS Code** - Code editing and SQL development

---



## 📂 Project Structure
```
spotify_premium_analysis/
│
├── 📊 data/
│   ├── raw/
│   │   └── Spotify_data.csv                    # Original survey data
│   ├── cleaned/
│   │   └── spotify_cleaned.csv                 # Processed dataset
│   └── data_dictionary.md                      # Field definitions
│
├── 📓 notebooks/
│   ├── 01_data_exploration.ipynb              # Initial EDA & profiling
│   ├── 02_data_cleaning.ipynb                 # Data preprocessing
│   ├── 03_analysis_insights.ipynb             # Statistical analysis
│   └── 04_export_to_sql.ipynb                 # Database export
│
├── 🗄️ sql/
│   ├── 01_create_table.sql                    # Table schema definition
│   ├── 02_basic_analysis.sql                  # Fundamental queries (10)
│   ├── 03_segment_analysis.sql                # User segmentation (10)
│   └── 04_premium_insights.sql                # Business insights (15)
│
├── 📈 powerbi/
│   ├── spotify_dashboard.pbix                 # Interactive BI dashboard
│   └── screenshots/
│       ├── page1_overview.png                 # Executive KPIs
│       ├── page2_segments.png                 # User segmentation
│       └── page3_content.png                  # Content analysis
│
├── 📄 outputs/
│   └── visualizations/                        # Python-generated charts
│       ├── overview.png
│       ├── content_preferences.png
│       └── user_segments.png
│
├── requirements.txt                            # Python dependencies
├── .gitignore                                 # Git exclusion rules
├── LICENSE                                    # MIT License
└── README.md                                  # This file
```

---
