---
  title: "Project"
author: "Devansh Pandit"
date: "March 17, 2017"
output: html_document
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

<center> <h1> Diabetes Data Modelling </h1> </center>
  <h3>Objective</h3>  
  My goal for this project is to solve a business problem (Diabetes Detection) using classification in data mining.  Accurately predicting the target class (Outcome, yes & no) for each case in the data set is the ultimate goal of this study.

Moving forward, I would like to briefly introduce myself.  I am a Data Analyst with experiences spanning academia and industry. Extracting value from data & making complex concepts broadly accessible. I love turning data into gold. Enabling data-driven decision making, I want to make an impact by adding value to client Business. Currently, I am Student pursuing MS Business Analytics, at CSU, East Bay. 


<h3>Introduction</h3>
  
  The goal for this project is to predict (classify) Diabetes in individual women based on several medical condition and clinical tests.  Diabetes is a disease in which the body's ability to produce or respond to the hormone insulin is impaired, resulting in abnormal metabolism of carbohydrates and elevated levels of glucose in the blood and urine.  Glucose comes from the foods you eat. Insulin is a hormone that helps the glucose get into your cells to give them energy. Over time, having too much glucose in your blood can cause serious problems. It can damage your eyes, kidneys, and nerves. Diabetes can also cause heart disease, stroke and even the need to remove a limb. Pregnant women can also get diabetes, called gestational diabetes. Models used in this data mining project would help in predicting (classifying) Diabetes in individual women. This modelling will help medical industry to diagnose diabetes with less efforts and more reliability. 

<h3>Motivation of Prediction Modelling</h3>

According to the U.S. Centers for Disease Control and Prevention, about 29.1 million Americans-nearly a tenth of the U.S. population-have diabetes and over 200 million people worldwide. Some of the facts are mentioned below



<center>
![Full data to Stratified training data ratio.](C:/Users/Devansh/Google Drive/Devansh Vaio Data/CSU Courses/Prof Sarnikar Data Mining/Project/diab1.jpg)</center>
<br>
<center>
![Full data to Stratified training data ratio.](C:/Users/Devansh/Google Drive/Devansh Vaio Data/CSU Courses/Prof Sarnikar Data Mining/Project/diab2.jpg)</center>

<br>
<center>
![Full data to Stratified training data ratio.](C:/Users/Devansh/Google Drive/Devansh Vaio Data/CSU Courses/Prof Sarnikar Data Mining/Project/diab3.jpg)</center>
<br><br><br>
<center>
![Full data to Stratified training data ratio.](C:/Users/Devansh/Google Drive/Devansh Vaio Data/CSU Courses/Prof Sarnikar Data Mining/Project/diab4.jpg)</center>

<br>
Medical practitioners generate data with a wealth of hidden information present, and it's not properly being used effectively for predictions. For beneficial purpose, unused data is stored into datasets for modeling using different data mining techniques. Above thrilling facts and available data mining techniques motivates me to develop a model to classify Diabetes patient and get cure in time.
<br>
  
  
  <h3>Related Work  </h3>
  To begin with advanced data mining, I referenced several related works. Link to guidance references are mentioned here 

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3262726/   <br>
  http://www.sciencedirect.com/science/article/pii/S2001037016300733  <br>
  https://www.kaggle.com/uciml/pima-indians-diabetes-database



<h3>Problem Definition</h3>
  
  In my project, I have used Diabetes dataset from Kaggle. I ran several data cleaning techniques on the dataset, which shows that dataset is already cleaned from the source itself.  Data have 8 defining attributes and 1 outcome (as diabetes YES or NO). I have divided 75% as training dataset and 25% data as testing dataset using stratified sampling. I have also ensured class ration remain intact during stratified sampling. Using several algorithms (c5.0, SVM, Neural Network, Ensambling, voting & stacking), I found algorithm which work best with the available dataset. Here, I have used 10 Fold cross validation techniques for all the algorithms.


X1  |X2       |value
----|---------|----------|
  no  | Training|0.6510417 |
  yes |Training |0.3489583 |
  no  |   Orig  |0.6510417 |
  yes |    Orig |0.3489583 |
  
  <br>
  
  <center>
  ![Full data to Stratified training data ratio.](C:/Users/Devansh/Google Drive/Devansh Vaio Data/CSU Courses/Prof Sarnikar Data Mining/Project/Rplot.jpeg)</center>
  <center>Fig : Showing same YES/NO ratio after stratified sampling</center>
  
  
  <h3>Dataset Information</h3>
  
  I have taken this data from Kaggle and originally it is taken from archive.ics.uci.edu. <br>
  
  
  Attribute / Variables|	Description                                  |Data type
-----------------------|-----------------------------------------|---------
  Pregnancies|	Number of times pregnant	|Integer
Glucose	|Plasma glucose concentration a 2 hours in an oral glucose tolerance test|	Integer
BloodPressure|	Diastolic blood pressure (mm Hg)|	Integer
SkinThickness|	Triceps skin fold thickness (mm)|	Integer
Insulin	|2-Hour serum insulin (mu U/ml)	|Integer
BMI|	Body mass index (weight in kg/(height in m)^2)|	Number
DiabetesPedigreeFunction|	Diabetes pedigree function	|Number
Age|	Age (years)	|Integer
Outcome|	Class variable (0 or 1)|	Factor, nominal


https://archive.ics.uci.edu/ml/machine-learning-databases/pima-indians-diabetes/pima-indians-diabetes.data

<br>
  <h3>Methods (Algorithms)</h3>
  
  *	To identify best working algorithm, we need to consider high accuracy. 
*	Apart from accuracy we need to take care of False Negative. 
*	False negative means those individual women which algorithm have predicted as Negative (No Diabetes) but it turned out to be positive (YES Diabetes).
*	We can consider False Negative if we take care of sensitivity.
*	Sensitivity, which is true positive recognition. Sensitivity is, What percent (%) of tuples that the classifier labeled as Positive are actually positive. TP/ (TP+FP).
*	We need to minimize false negative.  Higher the sensitivity, lower the False negative value.

<br>
  <h3>Results</h3>
  
  We have ran different algorithms with varied parameter(PCA) configurations and found that C5.0 with PCA gives us highest Accuracy and Sensitivity(Considering False Negative), so C 5.0 would be best among all the tested algorithms. Although SVM and RF( from ensamble model) have very close Accuracy but Sensitivity matters a lot for Diabetes study. We want to minimize false negative as much as possible, so we consider that C5.0 with PCA for given dataset.

<br>
  
  
  
  Algorithm	          |Accuracy  |	Sensitivity(Recall) |	Specificity	|Precision
--------------------|----------|----------|----------|----------
  Decision Tree C 5.0 |	0.7291667|0.5820896	|0.8080000|0.6190476            
Decision Tree C 5.0 with PCA|<b>0.7604166667</b>|<b>0.5820896</b>|0.8560000|	0.6842105
Naïve Bayes	|0.71875000|0.5223881| 	0.8240000| 	0.6140351|
  Neural Network|	0.72395833|	0.5820896|0.8000000|0.6093750
SVM(SMO)	|0.755208333|	0.507462|	0.98774215|0.65538462|        
  RF	|0.72395833|0.5223881|0.8320000|0.6250000


<br>
  <center>
  ![Full data to Stratified training data ratio.](C:/Users/Devansh/Google Drive/Devansh Vaio Data/CSU Courses/Prof Sarnikar Data Mining/Project/c5PCA.jpeg)</center>
  <center> </center>
  
  <center><b>Decision Tree C 5.0 with PCA</b></center>
  
  <br>
  
  
  
  
  <center>
  ![Full data to Stratified training data ratio.](C:/Users/Devansh/Google Drive/Devansh Vaio Data/CSU Courses/Prof Sarnikar Data Mining/Project/diab5.jpg)</center>
  <center> </center>
  
  <br><br>
  
  <center>
  ![Full data to Stratified training data ratio.](C:/Users/Devansh/Google Drive/Devansh Vaio Data/CSU Courses/Prof Sarnikar Data Mining/Project/diab6.jpg)</center>
  <center></center>
  <br>
  <h4>Prediction Vs Actual</h4>
  (Showing True Positive, True Negative, False Positive & False Negative)

* <b>With C5.0 Decision Tree</b>
  
  Prediction / Actual |no |yes
----|---|---	 
  no |112	|31
yes|13	|36

* <b>With PCA & C5.0 Decision Tree</b>
  
  Prediction / Actual |no |yes
----|---|---	 
  no |110|32
yes|15	|35

* <b>With Naive Bayes</b>
  
  Prediction / Actual |no |yes
----|---|---	 
  no |108|25
yes|17	|42

* <b>With Neural Network / Multilayer Perceptrons</b>
  
  Prediction / Actual |no |yes
----|---|---	 
  no |108	|48
yes|17	|19

* <b>With SVM </b>
  
  Prediction / Actual |no |yes
----|---|---	 
  no |109	|28
yes|16	|39

<b>Note:</b> Prediction values are mentioned row-wise and Actual values are mentioned columnwise.  
<br>
  <h3>Analysis and Recommendation</h3>
  
  *	I have analysed various algorithm for classification in Data Mining.
*	For the current dataset C 5.0 with PCA results the highest Accuracy and Sensitivity.
*	Noticable thing is algorithm performance depends on dataset and it may change with varied datasets.
*	My recommendation is to check which algorithm is suitable for your dataset and then apply that with your test data to predict classification( YES-have diabetes, No-No diabetes)
*	This modeling help to predict diabetes status efficiently
*	It will help medical industry as well as individual women to get better and time care for diabetes.
*	Further, if this is integrated with time series analysis, It can help prevent happening of diabetes with appropriate prevention techniques. This would be greatest help for humanity as it can help shrink 245$ billion dollar huge expenses on USA itself.



<h3>Comparison With published existing research on Kaggle</h3>
  
  * My project is different as most of the project on this data are on python, I did it in R. 
* Here, I have tested 5 algorithms with 10-fold cross validation which makes is more robust and accurate.
* Here, I did dimensionality reduction with PCA (Principal Component Analysis).
* Multiple Algorithms are tested and analyzed with efficient visualization.
<br><br>
  
  <h4>Project Published on Rpub</h4>
  
  http://rpubs.com/Devansh/Diabetes

<h4><i>References</i></h4>
  
  *	https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3262726/
  *	http://www.sciencedirect.com/science/article/pii/S2001037016300733
*	https://www.kaggle.com/uciml/pima-indians-diabetes-database
*	https://medlineplus.gov/diabetes.html
*	https://en.oxforddictionaries.com/definition/diabetes
*	https://www.kaggle.com/uciml/pima-indians-diabetes-database
*	https://www.cdc.gov/diabetes/pdfs/data/2014-report-estimates-of-diabetes-and-its-burden-in-the-united-states.pdf


<br><br><br><br>
  
  
  
  
  ```{r cars}

```




```{r pressure, echo=FALSE}

```



```{r, echo=FALSE, include=FALSE}


```

```{r, echo=FALSE}

```
