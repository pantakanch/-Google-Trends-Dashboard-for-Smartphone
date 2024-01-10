# Google Trends Dashboard for Smartphone

## Overview

This GitHub project, "Google Trends Dashboard for Smartphone," aims to leverage R programming to gather data from Google Trends and create an insightful dashboard using Looker Studio. The primary goal is to discover the search interest for flagship smartphones of various brands, including Samsung (Samsung S23), Oppo (Oppo Find), iPhone (iPhone 15), and Xiaomi (Xiaomi 14) over a specific time period (past 12 months).

## Project Structure

### 1. Data Collection

The R script uses the `gtrendsR` library to query Google Trends for the specified keywords. The keywords represent flagship smartphones from different brands in the Thai market. The `lubridate` library is employed to calculate the date period (past 12 months), and the `googlesheets4` library is used to interact with the Google Sheets document where the data is stored.

The `get_ggtrends` function facilitates the retrieval of clean and structured data for each keyword. The data is then processed and formatted to create a comprehensive dataset.

### 2. Functional Programming

Functional programming principles are applied to streamline the data collection process. The `lapply` function is utilized to iterate over the list of keywords, fetching data for each smartphone. The cleaned datasets are then combined into a single dataframe.

### 3. Dashboard Creation

The obtained data is stored in a Google Sheets document specified by the `sheet_url`. This data serves as the foundation for a Looker Studio dashboard. Looker Studio is chosen for its powerful visualization capabilities and user-friendly interface.

## Results
The Looker Studio dashboard provides a visual representation of the search interest trends for the specified smartphones. Users can easily analyze and compare the popularity of flagship smartphones across different brands over the past year.

Dashboard : https://lookerstudio.google.com/reporting/2606ad1a-43e6-4443-9430-6520ec06f35d
