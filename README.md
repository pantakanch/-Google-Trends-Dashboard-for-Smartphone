# Google Trends Dashboard for Smartphone

## Overview

Welcome to the "Google Trends Dashboard for Smartphone" project! This initiative aims to analyze and visualize the search trends for flagship smartphones of various brands in Thailand using Google Trends data. By employing R for data retrieval and manipulation, as well as Looker Studio for dashboard creation, this project provides valuable insights into the popularity of smartphones.

## Project Workflow

### 1. Data Retrieval

The core of the project involves extracting data from Google Trends using the `gtrendsR` package in R. The `get_ggtrends` function is designed to efficiently retrieve search interest data for specific keywords, including "Samsung S23," "Oppo Find," "iPhone 15," and "Xiaomi 14." This function not only fetches the data but also cleans it for further analysis.

### 2. Functional Programming

To streamline the data retrieval process, functional programming is implemented. The `list_kw` object contains a list of keywords associated with each smartphone brand. The `lapply` function is then utilized to apply the `get_ggtrends` function iteratively, resulting in a list of clean datasets.

### 3. Data Consolidation

The collected datasets are merged into a comprehensive dataframe named `full_df`. This dataframe is structured to facilitate analysis by combining search interest data for all smartphone brands.

### 4. Data Presentation

The project leverages Looker Studio to create an interactive and visually appealing dashboard. The dashboard, available [here](https://lookerstudio.google.com/reporting/2606ad1a-43e6-4443-9430-6520ec06f35d), allows users to explore and compare search trends for different smartphones over time. It provides a user-friendly interface to interact with the data and draw meaningful insights.
