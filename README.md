# TOP UK YouTubers 2024

## Using SQL and Power BI

### Introduction
This project aims to analyze and visualize data on the top UK YouTubers using Microsoft SQL Server for data extraction, transformation, and cleaning, followed by Power BI to build an interactive and insightful dashboard.

### Tools Used
- **Microsoft SQL Server:** For data extraction, transformation, and cleaning.
- **Power BI:** For building the dashboard.


### Data Exploration and Cleaning

#### Data Exploration Notes
This stage involves scanning the data for errors, inconsistencies, bugs, weird and corrupted characters, etc.

##### Initial Observations
- The dataset contains at least 4 columns necessary for the analysis.
- The first column includes YouTube channel IDs separated by an @ symbol, which need to be extracted.
- Some columns and headers are in a different language; it needs to be confirmed if these columns are required.
- The dataset contains more data than needed, so unnecessary columns should be removed.

#### Data Cleaning
The aim is to refine the dataset to ensure it is structured and ready for analysis.

##### Cleaned Data Criteria
- Only relevant columns retained.
- Appropriate data types for each column.
- No null values in any column.

##### Cleaned Data Schema
| Column Name       | Data Type | Nullable |
|-------------------|-----------|----------|
| channel_name      | VARCHAR   | NO       |
| total_subscribers | INTEGER   | NO       |
| total_views       | INTEGER   | NO       |
| total_videos      | INTEGER   | NO       |

### Data Quality Tests

1. **Row Count Test:** The data should contain 100 records of YouTube channels.
2. **Column Count Test:** The data should have 4 fields.
3. **Data Type Test:** 
   - `channel_name` should be a string data type.
   - `total_subscribers`, `total_views`, and `total_videos` should be numerical data types.
4. **Duplicate Count Test:** Each record should be unique.

#### SQL Queries for Data Quality Tests

```sql
-- 1. Row Count Check
SELECT COUNT(*) AS no_of_rows
FROM view_uk_youtubers_2024;

-- 2. Column Count Check
SELECT COUNT(*) AS no_of_columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'view_uk_youtubers_2024';

-- 3. Data Type Test
SELECT COLUMN_NAME, data_type
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'view_uk_youtubers_2024';

-- 4. Duplicate Record Test
SELECT channel_name, COUNT(*) AS duplicate_count
FROM view_uk_youtubers_2024
GROUP BY channel_name
HAVING COUNT(*) > 1;


### Key Insights
- **Total Subscribers:** 1056M
- **Total Videos:** 464K
- **Total Views:** 471.21B
- **Average Views per Video:** 1.02M
- **Views per Subscriber:** 446.41
- **Subscriber Engagement Rate:** 2.28K

### Top 10 UK YouTubers by Subscribers
1. **NoCopyrightSounds** - 33.60M
2. **DanTDM** - 28.60M
3. **Dan Rhodes** - 26.50M
4. **Miss Katy** - 24.50M
5. **Mister Max** - 24.40M
6. **KSI** - 24.10M
7. **Jelly** - 23.50M
8. **Dua Lipa** - 23.30M
9. **Sidemen** - 21.00M
10. **Ali-A** - 18.90M

### Top 3 Channels by Views
1. **DanTDM** - 19.78B
2. **Dan Rhodes** - 18.56B
3. **Mister Max** - 15.97B

### Highest Subscriber Engagement Rate per Video
1. **Mark Ronson** - 343,000
2. **Jessie J** - 110,416.67
3. **Dua Lipa** - 104,954.95
