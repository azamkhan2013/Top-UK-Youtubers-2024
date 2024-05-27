/*

Data Cleaning steps
1. Remove unnecessary columns
2. select the right names 
3. Extract the youtube channel names from the first columns
4. rename the columns.
*/


CREATE view view_uk_youtubers_2024 as
select CAST(SUBSTRING(nombre,1,CHARINDEX('@',nombre)-1) as varchar(100)) as channel_name,
	total_subscribers,
	total_views,
	total_videos
from dbo.top_uk_youtuber_2024