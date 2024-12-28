# Credit Scores Classification

## Overview
This project focuses on building a machine learning model to classify customers into credit score brackets using their bank and professional details. The dataset includes both categorical and numerical variables with missing values and anomalies, requiring extensive preprocessing. By analyzing patterns in the data, the model aims to predict credit scores accurately, streamlining decision-making for a global finance company. The solution leverages the Train dataset for model development and the Test dataset for final predictions.

## Attributes
1.	ID - Represents a unique identification of an entry.
2.	CUSTOMER ID - This represents the unique identification of a person.
3.	MONTH - Represents the month of the year.
4.	NAME - Represents the name of a person.
5.	AGE - Represents the age of the person.
6.	SSN - Represents the social security number of the person.
7.	OCCUPATION - Represents the occupation of the person.
8.	ANNUAL INCOME - Represents the yearly income of the person.
9.	MONTHLY IN-HAND SALARY - Represents the monthly base salary of a person.
10.	NUMBANK ACCOUNTS - This represents the number of bank accounts a person holds.
11.	NUM CREDIT CARD - This represents the number of other credit cards held by the person.
12.	INTEREST RATE - This represents the interest rate on a credit card.
13.	NUM OF LOAN - Represents the number of loans taken from the bank.
14.	TYPE OF LOAN - Represents the type of loan taken by the person.
15.	DELAY FROM DUE DATE - Represents the average number of days delayed from the payment date.
16.	NUM OF DELAYED PAYMENT - Represents the average number of payments delayed by a person.
17.	CHANGED CREDIT LIMIT - This represents the percentage change in the credit card limit.
18.	NUM CREDIT INQUIRIES - Represents the number of credit card inquiries.
19.	CREDIT MIX - This represents the classification of the mix of credits.
20.	OUTSTANDING DEBT - This represents the remaining debt to be paid(in USD).
21.	CREDIT UTILIZATION RATIO - This represents the utilization ratio of credit cards.
22.	CREDIT HISTORY AGE - This represents the age of the credit history of the person.
23.	PAYMENT OF MIN AMOUNT - Represents whether only the minimum amount was paid by the person.
24.	TOTAL EMI PER MONTH - Represents the monthly EMI payments(in USD).
25.	AMOUNT INVESTED MONTHLY - Represents the monthly amount invested by the customer(in USD)
26.	PAYMENT BEHAVIOUR - Represents the payment behaviour of the customer (in USD)
27.	MONTHLY BALANCE - Represents the monthly amount of the customer (in USD).
28. CREDIT SCORES - Represents the types of credit scores as (Good, Standard and Poor)

## Tools used
![image](https://github.com/user-attachments/assets/279c5d14-9888-46e0-8038-32b00992998a)

## Key steps involved
* Data Preparation: Performed EDA to handle missing values, identify outliers, and correcting skewness using log-transformation

* Data Preprocessing: Applied feature scaling and encoding to normalize data and manage categorical variables effectively

* Data Analysis and Visualization: Analyzed customer data to identify patterns in credit score distribution, delivering insights into creditworthiness factors and 
  supporting data-driven strategies

* Predictive Modelling: Built several machine learning models for multi-class classification of customers into 3 credit score categories

* Evaluation of Models Performance: Random Forest showed best performance with an accuracy of 79% among the models

## Business Insights 📝
* Majority of customers ~55% have "Standard" credit scores, indicating a strong opportunity for targeted services to help them improve to the "Good" credit level.

* A substantial proportion of customers ~29% fall under the "Poor" Credit Segment, requiring focused financial counseling, loan restructuring, or educational content to enhance their financial stability and reduce default risks.

* Only ~16% customers have "Good" credit scores, suggesting an opportunity to encourage credit-building practices. These customers could benefit from loyalty programs or premium financial services.

## Recommendations

* Credit Risk and Loan Structuring: "Poor" credit segment poses increased risk, highlighting the need for stricter monitoring, conservative credit limits, or adjusted loan terms to minimize potential financial losses.

* Cross-Selling and Marketing: Customers with "Standard" or "Good" credit scores could be targeted for upselling financial products like personal loans or credit cards to leverage potential revenue opportunities.

* Customized Customer Programs: Focused programs for each category (financial counseling for "Poor," credit improvement for "Standard," and loyalty benefits for "Good") will enhance customer satisfaction and retention.
