# 📌Nairobi House Prices Prediction
A simulated end-to-end data science project modeling real estate price prediction in Nairobi. This project mirrors industry-standard practices in property valuation and real estate analytics. It demonstrates:

✅ Python-based loading & transformation of raw real estate listings

✅ Extensive exploratory data analysis using Plotly Express & Seaborn

✅ Robust feature engineering with price-per-sqm and geo-encoded insights

✅ Dynamic model selection for regression with MAE/R² optimization

## 🔧 Tools & Tech
- Python (pandas, numpy, scikit-learn, xgboost)

- Plotly Express & Seaborn (for interactive data visualization)

- Jupyter Notebooks

- GitHub

## 📂 Project Structure
See folder breakdown above for details on each module (/notebooks/ → Phase 1: Data Cleaning → Phase 2: EDA → Phase 3: Modeling).

## 🔍 Modules Completed
1. Data Loading & Cleaning

- Loaded raw CSV file with Nairobi real estate listings

- Cleaned missing values, parsed location/house attributes

- Saved cleaned dataset as phase1_cleaned_df

2. Exploratory Data Analysis (EDA)

- Analyzed distributions of price, size, and location

- Explored neighborhood trends, outliers, and price variability

- Introduced Price_per_sqm to normalize price comparisons

- Interactive charts for location, type, and room breakdowns

3. Feature Engineering

- Created new features: price-per-sqm, property age, room ratios

- Applied robust transformation for skewed variables

- Label encoding and one-hot encoding for categorical columns

- Final feature matrix saved as phase2_features_df

4. Model Training

- Algorithms: Linear Regression, Random Forest, XGBoost

- Custom pipeline with preprocessing & hyperparameter tuning

- Dynamic best model selection using MAE and R² scoring

- Final model exported and saved for deployment

## 📊 Key Insights
- property type, land size(acres), Location are top drivers of price


## 🚀 How to Run
Open the Jupyter notebooks under /notebooks/ to explore each phase

- Load cleaned_nairobi_real_estate.csv under /data/

- Output visuals and trained models are saved in /outputs/

📬 Contact
Festus Ochieng — [LinkedIn](https://www.linkedin.com/in/festus-ochieng-045121211/)