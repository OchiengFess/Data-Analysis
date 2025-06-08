# 📌FM Credit Scoring Analysis

A simulated end-to-end credit scoring project that mirrors real-world banking and financial institution practices. This project showcases:

- ✅ Python-based data loading & transformation from raw Freddie Mac sources  
- ✅ Deep exploratory data analysis with Plotly and Seaborn  
- ✅ Feature selection using Mutual Information  
- ✅ Machine Learning model training & evaluation with AUC optimization  

## 🔧 Tools & Tech
- Python (pandas, numpy, scikit-learn, xgboost)
- Plotly Express & Seaborn (interactive EDA)
- Jupyter Notebooks
- GitHub

## 📂 Project Structure
See folder breakdown above for details on each module (notebooks-> Data Loading → EDA → Feature Engineering → Model Training).

## 🔍 Modules Completed

**1. Data Loading**  
- Combined Red & Green folders  
- Chunked loading to manage memory  
- Final dataset saved as `phase1_full_df`  

**2. Exploratory Data Analysis (EDA)**  
- Univariate, bivariate, outlier, and missing value analysis  
- Interactive visuals with Plotly and Seaborn  
- Target variable balance & pattern detection  

**3. Feature Engineering**  
- Removal of irrelevant features (based on variance & nullity)  
- Selection using Mutual Information  
- Reduced to Top 20 informative predictors  

**4. Model Training**  
- Models: Logistic Regression, Random Forest, XGBoost, Gradient Boosting  
- Cross-validation with StratifiedKFold  
- Selection of best model based on AUC  
- Final test set evaluation and classification report  

## 📊 Key Insights
- Default risk trends by credit score, debt-to-income, loan-to-value, and more  
- Class imbalance handling with ROC-AUC comparison  
- Best-performing model selected dynamically with cross-validation  
- Highly interpretable SHAP-based model insights (next phase)

## 🚀 How to Run
- Open the notebooks in `/notebooks/` to explore the full pipeline.
- Load `full_combined_data.csv` under `/data/` for training/testing.
- Outputs including charts and metrics are saved under `/outputs/`.

## 📬 Contact  
Festus Ochieng — [LinkedIn](https://www.linkedin.com/in/festus-ochieng-045121211/)



