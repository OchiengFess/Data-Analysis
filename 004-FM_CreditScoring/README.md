📌 Project Title: FM Credit Scoring - Default Risk Modeling & Analysis
📝 Description
This project analyzes Freddie Mac's Fixed Rate Mortgage dataset to model and predict the likelihood of default (binary classification). The process mirrors an industry-grade credit risk pipeline, focusing on extensive data understanding, transformation, and robust model training. The dataset is split across two sources (Red and Green folders), combined and cleaned for full-spectrum insights.

🔍 Objective: Build a predictive model that identifies high-risk mortgage applicants and extract explainable insights using machine learning.

🔍 Modules Completed

1.Data Loading

Combined Red & Green folders

Chunked loading to manage memory

Final dataset saved as full_df

2.Exploratory Data Analysis (EDA)

Univariate, bivariate, outlier, and missing value analysis

Interactive visuals with Plotly and Seaborn

Target variable balance & pattern detection

3.Feature Engineering

Removal of irrelevant features (based on variance & nullity)

Selection using Mutual Information

Reduced to top 100+ informative predictors

4.Model Training

Models: Logistic Regression, Random Forest, XGBoost, Gradient Boosting

Cross-validation with StratifiedKFold

Selection of best model based on AUC

Final test set evaluation and classification report

