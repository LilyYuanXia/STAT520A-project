# STAT520A-project
Bayesian Analysis: Heart Failure Data Exploration

## Problem Set-up
Heart failure is the main exhibition of Cardiovascular diseases, which occurs when the heart cannot pump enough blood and oxygen to meet the needs of the body, and it is the most common diagnosis in elderly hospitalized patients. In this project, we are interested in identifying important risk factors for mortality in heart failure and predicting patients’ survival from identified important factors, which possibly are blood pressure, serum sodium level, gender or age, etc. Data were collected from 299 heart failure patients in 2015, among whom 96 patients passed away and 206 of them survived after heart failure. There were no missing records in the dataset. The outcome of interest is death with a value of either 1 (dead) or 0 (survived), and 12 features of patients are included, detailed descriptions on which can be found below. Some features might be used to predict mortality by heart failure.


|Variable Name| Data Type | Description|
|:-----------:|:---------:|:----------:|
|age | Continuous| Patient age|
|sex | Factor|Sex of patient (1 = Male, 0 = Female)|
|smoking | Factor| If the patient smoked or not (1 = yes, 0 = no)|
|creatinine\_phosphokinase | Continuous| Level of the CPK enzyme in the blood (mcg/L)|
|ejection\_fraction | Continuous|Percentage of blood leaving the heart at each contraction|
|platelets | Continuous| Values of platelets in the blood (kiloplatelets/mL)|
|serum\_creatinine | Continuous|Level of serum creatinine in the blood (mg/dL)|
|serum\_sodium | Level of serum sodium in the blood (mEq/L)|
|time| Continuous|Follow-up period (days)|
|anaemia | Factor|Decrease of red blood cells or hemoglobin (1 = yes, 0 = no)|
|diabetes | Factor|If the patient had diabetes (1 = yes, 0 = no)|
|high\_blood\_pressure | Factor|If the patient had hypertension (1 = yes, 0 = no)|

Among these features, the values of the `platelets` were too large and hence were divided by 1000, resulting in a new unit: platelets/mL. Also, the feature `time` was removed from the dataset as it was highly dependent on the death event. The follow-up time ended once the patient died or the data was censored; therefore, it should not be considered in the prediction of the death event.


## Objectives and Analysis Outline
The main objective of this project is to construct a Bayesian classifier to predict the survival of heart failure. Meanwhile, we compare the prediction performance by using Bayesian and non-Bayesian methods. The analysis outline is shown as follows. We plan to perform an exploratory data analysis of the available data, identifying potential prior distributions and likelihood functions. Then we plan to apply spike-and-slab regression for variable selection. At the end, we will perform posterior predictive checking, from which the performance will be compared with that of the prediction model constructed by frequentist method. 
 
