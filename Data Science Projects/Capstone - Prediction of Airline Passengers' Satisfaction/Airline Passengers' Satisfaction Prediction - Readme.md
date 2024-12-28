# Prediction of Airline Passengers' Satisfaction

## Problem Statement
In a rapidly growing and competitive airline industry, understanding and predicting passenger satisfaction is crucial for maintaining customer loyalty and driving revenue growth. This project aims to leverage machine learning to predict passenger satisfaction and segment customers based on travel behaviors and service experiences. By identifying key factors that influence satisfaction, the airline can target customer needs through personalized marketing and improve service areas that impact customer experience the most. This initiative will support data-driven strategies to reduce complaints, enhance passenger retention, and boost engagement, contributing directly to business growth and customer loyalty.

## Data Dictionary
This dataset contains an airline passenger satisfaction survey. There are **25 features** and **103904 records**.

* Gender: Gender of the passengers (Female, Male)
* Customer Type: The customer type (Loyal customer, disloyal customer)
* Age: The actual age of the passengers
* Type of Travel: Purpose of the flight of the passengers (Personal Travel, Business Travel)
* Class: Travel class in the plane of the passengers (Business, Eco, Eco Plus)
* Flight distance: The flight distance of this journey
* Inflight wifi service: Satisfaction level of the inflight wifi service (0:Not Applicable;1-5)
* Departure/Arrival time convenient: Satisfaction level of Departure/Arrival time convenien
* Ease of Online booking: Satisfaction level of online booking
* Gate location: Satisfaction level of Gate location
* Food and drink: Satisfaction level of Food and drink
* Online boarding: Satisfaction level of online boarding
* Seat comfort: Satisfaction level of Seat comfort
* Inflight entertainment: Satisfaction level of inflight entertainment
* On-board service: Satisfaction level of On-board service
* Leg room service: Satisfaction level of Leg room service
* Baggage handling: Satisfaction level of baggage handling
* Check-in service: Satisfaction level of Check-in service
* Inflight service: Satisfaction level of inflight service
* Cleanliness: Satisfaction level of Cleanliness
* Departure Delay in Minutes: Minutes delayed when departure
* Arrival Delay in Minutes: Minutes delayed when Arrival
* Satisfaction: Airline satisfaction level(Satisfaction, neutral or dissatisfaction)

## Tools used
![image](https://github.com/user-attachments/assets/d500874f-bf0a-445f-880f-9326d24a1247)
![image](https://github.com/user-attachments/assets/353ccf06-41ad-4ed2-bb35-4e5b7db59214)

## Key steps involved 📝
▪️ Data Preparation: Performed EDA to identify outliers, address missing values and examine correlations to uncover patterns among the variables

▪️ Data Preprocessing - Performed feature scaling, encoding, and engineering to normalize data, handle categorical variables, and enhance model performance

▪️ Dimensionality Reduction: Applied PCA (Principal Component Analysis) which showed 90% of variance is explained by the first 9 Principal Components

▪️ Customer Segmentation: Segmented the customers using K-means clustering into 3 cohorts based on different satisfaction level 
    categories

▪️ Predictive Modelling: Leveraged several supervised learning techniques including ensemble methods like Random Forest and XGBoost

▪️ Evaluation of Models Performance: Achieved the highest performance using XGBoost with 93% mean accuracy and ROC-AUC of 98%

## Business Insights and Recommendations 📈

* Gender-Neutral concerns:
  
  Both males (56.05%) and females (57.26%) are nearly equally neutral or dissatisfied, indicating that factors affecting satisfaction are not gender-specific.
  Focus on universal improvements such as flight punctuality, onboard comfort, and customer service to address concerns for all passengers irrespective of gender.

* Loyalty Program Enhancement:

  Only 52.27% of loyal customers are neutral or dissatisfied, compared to 76.33% of disloyal customers.Strengthen loyalty programs by offering exclusive benefits, 
  targeted promotions, and personalized experiences to convert disloyal customers into loyal ones.

* Travel Purpose-Based Improvements:

  While 58.26% of business travelers are satisfied, 89.83% of personal travelers are neutral or dissatisfied. Introduce leisure-oriented offerings, such as family 
  discounts and vacation packages, to improve satisfaction among personal travelers.
  
* Class-Based Focus Areas:

  Business class has 69.43% satisfied passengers, but 81.39% in Economy and 75.39% in Economy Plus are neutral or dissatisfied. Improve service quality, enhance 
  seat comfort, and optimize pricing strategies in Economy and Economy Plus to bridge the satisfaction gap.

* Customer Retention Initiatives:

  High dissatisfaction among disloyal customers and economy travelers suggests an urgent need for retention strategies. Implement loyalty incentives, improved 
  communication, and follow-up programs to boost customer retention and satisfaction.
