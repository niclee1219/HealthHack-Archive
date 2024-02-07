<img width="200" alt="archive logo" src="https://github.com/niclee1219/HealthHack-Archive/assets/20497341/e88b716a-2b48-40a4-be01-92698fd96d38">
<br><br>

# ARCHIVE (HealthHack 2024)
Streamlining Airflow for Hospitals

## Installation and Setup
1. Go to [Our Retool Page](https://healthhack2024.retool.com/)
2. Login with the following credentials:
   - Username: `********` (account details sent to email)
   - Password: `********` (account details sent to email)
3. Once logged in, you will be able to access the ARCHIVE dashboard and its features.
    - To access the ARCHIVE dashboard, click on the `HealthHack-ARCHIVE` app on the home screen to access the app
    - **(if you are logged in)** Alternatively, visit [here](https://healthhack2024.retool.com/apps/2ef143bc-c4df-11ee-89e7-dbcc5ce330e5/HealthHack-ARCHIVE) to view the app

To request access, please send an email to [our team](mailto:lee_nicholas@u.nus.edu). Thanks!

## Table of Contents
1. [Project Description](#project-description)
2. [Key Features](#key-features)
3. [Built With](#built-with)
4. [Project Roadmap](#project-roadmap)
5. [Models](#models)
6. [Team](#team)


## Project Description

ARCHIVE is a pioneering web application designed to revolutionize the way hospitals manage their Heating, Ventilation, and Air Conditioning (HVAC) systems. By harnessing the capabilities of IoT sensors and predictive analytics, ARCHIVE seeks to empower healthcare facilities in curbing their energy consumption. Drawing inspiration from the efficiency observed in hive structures, ARCHIVE employs dynamic adjustments to HVAC settings based on occupancy levels, predicted temperatures, and prevailing weather conditions, promising a potential reduction in energy usage of up to 20%.  This initiative not only contributes to lowering Scope 2 Carbon Emissions, which are emissions from the generation of purchased electricity consumed by the hospital, but also enhances operational efficiency through advanced, user-friendly features. At its core, ARCHIVE offers a comprehensive dashboard that provides users with detailed insights into their HVAC systems' performance and energy usage, ensuring optimal airflow and environmental conditions. Crucially, ARCHIVE achieves this seamlessly by integrating existing hardware infrastructure from these hospitals into our web application platform, rendering it a cost-effective and adaptable solution.

### Key Features:
<img width="330" alt="Device - Macbook Pro" src="https://github.com/niclee1219/HealthHack-Archive/assets/20497341/84b7fd6a-82a5-45dd-b0ab-88e639521b83">
<img width="330" alt="1Device - Macbook Pro" src="https://github.com/niclee1219/HealthHack-Archive/assets/20497341/ba7c3355-47ea-496a-9b30-1b481cbf4980">
<img width="330" alt="Device - Macbook Prosavings" src="https://github.com/niclee1219/HealthHack-Archive/assets/20497341/e46950cf-f2ec-49f9-9499-c64ea5554ea1">

- **Energy Optimization:** Intelligent analysis and adjustment of HVAC operations to minimize energy consumption while maintaining optimal indoor conditions.
- **Predictive Analytics:** Utilization of time series forecasting for predicting future energy expenditure and regression models for anomaly detection, facilitating preventive maintenance.
- **Intuitive Dashboard:** A user-friendly interface that offers real-time insights into HVAC performance, energy savings, and maintenance alerts.
- **Real-time Data:** Seamless incorporation of real-time weather data sourced from the National Environment Agency (NEA) API, enhancing precision in HVAC system optimization and energy efficiency.

### Built With:

- **Retool:** For building the dashboard and user interface efficiently.
- **SQL:** To manage and query the extensive data collected from IoT sensors.
- **JavaScript (JS):** For creating interactive and dynamic web application features.
- **Python:** For developing predictive analytics models to forecast energy consumption and detect anomalies.
- **National Environment Agency (NEA) API:** To source real-time weather data for precise HVAC system optimization.

## Project Roadmap

Currently, ARCHIVE is in its early stages of development. Currently, we aim to use this as our MVP to showcase the potential of ARCHIVE. Our immediate focus is on building on the predictive analytics algorithms and enhancing the dashboard's functionality. Moving forward, we aim to:

- **Expand the Team:** Onboard more developers and engineers, especially those with expertise in hardware components, to enrich our product development capabilities.
- **Improve Predictive Algorithms:** Continuously refine our algorithms for time series forecasting and regression modeling to ensure higher accuracy in predictions and anomaly detection.
- **Pilot Testing:** Collaborate with pilot hospital wards to test and validate our effectiveness in reducing energy consumption and improving operational efficiency.
- **Feedback Incorporation:** Use insights and feedback from pilot testing to further improve the web application.
- **Deployment & Scaling:** Expand deployment of ARCHIVE to additional hospital wards and facilities across Singapore.
- **Provide Comprehensive Training & Support:** Develop training materials and resources for hospital administrators and staff to ensure successful adoption and utilization of ARCHIVE.

## Models

### Time Series Forecasting
The time series forecast model offers a straightforward, time-based forecast, enabling long-term energy planning. The goal was to accurately forecast energy usage based on historical data, taking into account both trends and seasonality patterns.
<img width="446" alt="Screenshot 2024-02-08 at 2 38 17 AM" src="https://github.com/niclee1219/HealthHack-Archive/assets/20497341/5ac0ce03-3f07-402d-9eac-dfeb95d189d1">

- Next steps:
    - **Model Refinement:** Continuously refine the model to improve forecast accuracy and reliability. We plan to incorporate additional factors such as real-time weather data to enhance the model's precision in forecasting energy usage. Additionally, we aim to explore the use of more advanced time series forecasting models such as ARIMA and Prophet to further improve forecast accuracy.
    - **Incorporate Real-time Data:** Integrate real-time weather data to enhance the model's precision in forecasting energy usage.

### Regression Model
The regression model's multi-factor approach provides actionable insights for real-time optimization, targeting the most significant factors influencing energy consumption. The model is designed to detect anomalies in energy usage, enabling preventive maintenance and energy-saving strategies.
<img width="594" alt="image" src="https://github.com/niclee1219/HealthHack-Archive/assets/159306217/f95db3f0-517d-4746-a863-eccd8c5981e6">

- Next steps:
    - **Model Refinement:** Continuously refine the model to improve anomaly detection accuracy and reliability. To ensure more accurate predictions, we plan to explore more variables to fit our model. For the data, we aim to explore the use of more advanced regression models such as Random Forest and Gradient Boosting to further improve anomaly detection accuracy.
    - **Incorporate Real-time Data:** Integrate real-time weather data and occupancy levels to enhance the model's precision in detecting anomalies in energy usage.



## Team: 
- [Dexter Choo Jun Jie:](https://www.linkedin.com/in/dexterchoojj/) Mechanical Engineering, National University of Singapore
- [Sharmaine Seet Shien:](https://www.linkedin.com/in/sharmaineseet/) Business Administration, National University of Singapore
- [Wan Rong Tan:](https://www.linkedin.com/in/tanwanrong/) Business Administration, National University of Singapore
- [Nicholas Lee:](https://www.linkedin.com/in/nicholas-lee-pixolateds/) Business Analytics, National University of Singapore
- [Ryan Wong Jun Han:](https://www.linkedin.com/in/ryanwongjh/) Business Management, Singapore Management University


