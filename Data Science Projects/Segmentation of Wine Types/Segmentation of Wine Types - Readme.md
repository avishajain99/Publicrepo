# Segmentation of Wine Types 

## Overview
This project focuses on clustering wines based on their chemical composition using unsupervised learning techniques. The dataset, adapted from the UCI Wine Dataset, contains chemical analysis results of wines from three cultivars in the same Italian region. After clustering, supervised learning models are employed to predict cluster labels, demonstrating the integration of unsupervised and supervised methodologies for effective data analysis and classification.

## Attributes
●	Alcohol

●	Malic acid

●	Ash

●	Alcalinity of ash

●	Magnesium

●	Total phenols

●	Flavanoids

●	Nonflavanoid phenols

●	Proanthocyanins

●	Color intensity

●	Hue

●	OD280/OD315 of diluted wines

●	Proline

## Tools used
![image](https://github.com/user-attachments/assets/f3dd09fe-a91b-48e2-a14a-14e2a88db584)

## Steps performed
* Conducted research to understand the dataset variables and their significance
* Prepared and preprocessed the data for clustering algorithms, ensuring suitability for unsupervised learning techniques
* Applied clustering algorithms and dimensionality reduction methods like PCA to identify the optimal number of clusters with minimal information loss
* Utilized supervised learning models to predict cluster labels from the final clustering results, evaluating performance using Recall, Precision, and F1 Score
* Derived actionable insights from the analysis and documented key findings

## Key Findings 📝
* 26% of the wines form a unique group with rare chemical properties, potentially representing wines with rare or unique chemical properties, which may correspond to niche or specialty wines
* 74% of the wines are divided equally into two larger groups, reflecting common traits and broader wine categories with overlapping or widely accepted characteristics

## Recommendations
* Utilize cluster-specific characteristics to develop targeted marketing campaigns. For instance, wines in one cluster might appeal to premium customers, while others may cater to casual wine enthusiasts.

* Focus on unique clusters (e.g., smaller or distinct groups) to identify high-quality or specialty wines. This can help in maintaining premium standards and identifying areas for quality enhancement.

* Leverage clustering insights to explore new blends or wine variants that cater to diverse consumer segments identified in the clusters.
