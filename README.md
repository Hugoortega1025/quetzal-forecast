# Forecasting the Guatemalan QUetzal Exchage Rate

## Overview
This project analyzes and forecasts the USD / GTQ exchange rate using time series forecasting techniques in R.
Time Series forecasting of Guatemalan Quetzal exchange rates using ARIMA in R. The dataset covers the Guatemalan Quetzal exchange rate against the US Dollar from 2000 to 2024.

This project also has personal significance to me. As a Guatemalan from a Guatemalan household, I have seen how exchange rates matter for families sending remittances back home. That made this dataset both meaningful and practical to analyze.

The goal of the project was to examine historical trends in the exchange rate, compare multiple forecasting approaches, and select the most appropriate model for future projections.

## Data Source

The data was collected from the BIS Data Portal and originally came in monthly format. To make the analysis more manageable and suitable for forecasting, the monthly data was converted into:

- Quarterly averages
- Yearly averages

This allowed the exchange rate to be analyzed at two different time scales.


## Exploratory Analysis

The annual and quarterly plots suggest that the exchange rate does not show a strong long-term trend, but instead remains relatively stable with fluctuations over time. The yearly series shows a notable spike around 2009–2010, which may be related to the effects of the global financial crisis, followed by a decline and later stabilization.

The quarterly series also shows fluctuations without clear seasonality. A seasonal plot showed substantial overlap across years, supporting the conclusion that there is no strong recurring seasonal pattern in the exchange rate data. 


## Methods

Several time series forecasting models were evaluated for both the annual and quarterly datasets:

- ARIMA
- ETS (Exponential Smoothing)
- Random Walk with Drift

Model performance was assessed using:

- residual plots
- ACF diagnostics
- Ljung-Box tests for residual autocorrelation

The goal was to select the model that best captured the stability and fluctuations in the exchange rate while also passing diagnostic checks.

## Model Selection

### Annual Data
For the annual series, the selected model was ARIMA(0,0,1) with non-zero mean. The residual diagnostics showed no significant autocorrelation, with a *jung-Box p-value of 0.5923, indicating that the model residuals behaved appropriately. 

### Quarterly Data
For the quarterly series, the selected model was ARIMA(1,0,1) with non-zero mean. The Ljung-Box test produced a p-value of 0.05547, which is slightly above the 5% threshold. This suggests the model is acceptable, though it falls into a slight gray area and may benefit from reevaluation as more data becomes available. 

Both the ETS and Random Walk with Drift models for the quarterly data failed the Ljung-Box diagnostic checks, making ARIMA the preferred forecasting method.


## Key Findings

- The Guatemalan Quetzal exchange rate remained relatively stable over the period analyzed, generally staying within the 7.4 to 8.2 GTQ per USD range. 
- The ARIMA model was selected as the best forecasting model for both annual and quarterly data.
- Forecasts suggest continued relative stability in the exchange rate over the next several years, with only moderate fluctuations expected. 

This stability is practically important because it supports financial planning for both businesses and families that rely on international remittances. A relatively stable exchange rate reduces uncertainty and helps households make better decisions regarding money transfers and savings.


