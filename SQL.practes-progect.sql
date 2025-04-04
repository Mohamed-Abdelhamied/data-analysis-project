
SELECT COLUMN_NAME  
FROM INFORMATION_SCHEMA.COLUMNS  
WHERE TABLE_NAME = 'Employee';
exec sp_rename 'employee.[FirstName]', 'First_Name', 'COLUMN';
exec sp_rename 'employee.[LastName]', 'Last_Name', 'COLUMN';
exec sp_rename 'employee.[BusinessTravel]', 'Business_Travel', 'COLUMN';

exec sp_rename 'employee.[DistanceFromHome_KM]', 'Distance_From_Home_KM', 'COLUMN';
exec sp_rename 'employee.[EducationField]', 'Education_Field', 'COLUMN';
exec sp_rename 'employee.[JobRole]', 'Job_Role', 'COLUMN';
exec sp_rename 'employee.[MaritalStatus]', 'Marital_Status', 'COLUMN';
exec sp_rename 'employee.[StockOptionLevel]', 'Stock_Option_Level', 'COLUMN';
exec sp_rename 'employee.[OverTime]', 'Over_Time', 'COLUMN';
exec sp_rename 'employee.[HireDate]', 'Hire_Date', 'COLUMN';
exec sp_rename 'employee.[YearsAtCompany]', 'Years_At_Company', 'COLUMN';

exec sp_rename 'employee.[YearsInMostRecentRole]', ' years_in_most_recent_role', 'COLUMN';
exec sp_rename 'employee.[YearsSinceLastPromotion]', 'Years_Since_Last_Promotion', 'COLUMN';
exec sp_rename 'employee.[YearsWithCurrManager]', 'Years_With_Curr_Manager', 'COLUMN';

SELECT COLUMN_NAME  
FROM INFORMATION_SCHEMA.COLUMNS  
WHERE TABLE_NAME = 'Performance_Rating';

exec sp_rename 'performance_rating.PerformanceID','Performance_ID','COLUMN';
exec sp_rename 'performance_rating.EmployeeID','Employee_ID','COLUMN';
exec sp_rename 'performance_rating.ReviewDate','Review_Date','COLUMN';
exec sp_rename 'performance_rating.EnvironmentSatisfaction','Environment_Satisfaction','COLUMN';
exec sp_rename 'performance_rating.JobSatisfaction','Job_Satisfaction','COLUMN';
exec sp_rename 'performance_rating.RelationshipSatisfaction','Relationship_Satisfaction','COLUMN';
exec sp_rename 'performance_rating.TrainingOpportunitiesWithinYear','Training_Opportunities_With_in_Year','COLUMN';
exec sp_rename 'performance_rating.TrainingOpportunitiesTaken','Training_Opportunities_Taken','COLUMN';
exec sp_rename 'performance_rating.WorkLifeBalance','Work_Life_Balance','COLUMN';
exec sp_rename 'performance_rating.SelfRating','Self_Rating','COLUMN';

SELECT COLUMN_NAME  
FROM INFORMATION_SCHEMA.COLUMNS  
WHERE TABLE_NAME = 'Satisfied_Level';

exec sp_rename 'Rating_Level.[RatingID]','Rating_ID','COLUMN';
exec sp_rename 'Rating_Level.[RatingLevel]','Rating_Level','COLUMN';

exec sp_rename 'Satisfied_Level.[SatisfactionID]','[dbo].Satisfied_ID','COLUMN';
exec sp_rename 'Satisfied_Level.[SatisfactionLevel]','Satisfied_Level','COLUMN';







select distinct Attrition from Employee


select Education_Field,Job_Role from [dbo].[Employee];


UPDATE employee  
SET state = 'New York'  
WHERE state = 'ny';

UPDATE employee  
SET state = 'Illinois'  
WHERE state = 'il';

UPDATE employee  
SET state = 'California'  
WHERE state = 'ca';

select distinct Stock_Option_Level from Employee

ALTER TABLE [dbo].[Employee]
ALTER COLUMN [Stock_Option_Level] VARCHAR(50); 
update Employee
set Stock_Option_Level='No stock options'
where Stock_Option_Level='0';

update Employee
set Stock_Option_Level='Low level '
where Stock_Option_Level='1';

update Employee
set Stock_Option_Level='Medium level'
where Stock_Option_Level='2';

update Employee
set Stock_Option_Level='high level'
where Stock_Option_Level='3';

select distinct Stock_Option_Level from Employee



ALTER TABLE Employee  
ALTER COLUMN StockOptionLevel VARCHAR(50);

select*from [dbo].[Employee]


select * from [dbo].[Performance_Rating]

SELECT COUNT(*) AS Attrition_Count  
FROM Employee  
WHERE Attrition = '0';

SELECT COUNT(*) AS Attrition_Count  
FROM Employee  
WHERE Attrition = '1';

ALTER TABLE Employee  
ALTER COLUMN attrition VARCHAR(50);

update Employee
set Attrition ='No'
where Attrition ='0';

update Employee
set Attrition ='yes'
where Attrition ='1';

select*from [dbo].[Employee]

select distinct [ years_in_most_recent_role] from Employee



select Satisfied_Level from [dbo].[Satisfied_Level];


SELECT * FROM Employee WHERE [employee_id] IS NULL
or  [First_Name] is null
or  [Last_Name] is null
or  [Gender] is null
or  [Age] is null
or  [Business_Travel] is null
or  [Department] is null
or  [Distance_From_Home_KM] is null
or  [State] is null

or  [Ethnicity] is null
or  [Ethnicity] is null
or  [Education] is null
or  [Job_Role] is null
or  [Marital_Status] is null
or  [Salary] is null
or [Stock_Option_Level] is null
or  [Over_Time] is null

or  [Hire_Date] is null
or  [Attrition] is null
or  [Years_At_Company] is null
or  [ years_in_most_recent_role] is null
or  [Years_Since_Last_Promotion] is null
or  [Years_With_Curr_Manager] is null;

select* from [Performance_Rating]

SELECT * FROM Performance_Rating 
where [Performance_ID]  is null
or [Employee_ID]  is null
or  [Review_Date] is null
or  [Environment_Satisfaction] is null
or  [Job_Satisfaction] is null
or[Relationship_Satisfaction]  is null
or  [Training_Opportunities_With_in_Year] is null
or [Work_Life_Balance]  is null

or  [Self_Rating] is null
or  [Manager_Rating] is null;

select* from [Performance_Rating]

select distinct [Performance_ID] from Performance_Rating

select distinct employee_iD from Performance_Rating

select distinct employee_iD from Employee

select distinct Review_Date from Performance_Rating

UPDATE Performance_Rating
SET Review_Date = CAST(Review_Date AS DATE);



select distinct [Environment_Satisfaction] from Performance_Rating

select distinct [Job_Satisfaction] from Performance_Rating


select distinct [Relationship_Satisfaction] from Performance_Rating

select distinct [Training_Opportunities_With_in_Year] from Performance_Rating

select distinct [Training_Opportunities_Taken] from Performance_Rating

select distinct [Work_Life_Balance]from Performance_Rating


select distinct [Self_Rating] from Performance_Rating

select distinct [Manager_Rating] from Performance_Rating

ALTER TABLE Performance_Rating 
ALTER COLUMN [Job_Satisfaction] varchar(50);




ALTER TABLE Performance_Rating 
ALTER COLUMN [Relationship_Satisfaction] varchar(50);

ALTER TABLE Performance_Rating 
ALTER COLUMN [Environment_Satisfaction] varchar(50);

ALTER TABLE Performance_Rating 
ALTER COLUMN [Review_Date] date;


SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Performance_Rating';


SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = '[dbo].[Rating_Level]';

ALTER TABLE Performance_Rating 
ALTER COLUMN [Self_Rating] varchar(50);

ALTER TABLE Performance_Rating 
DROP CONSTRAINT FK_Performance_Rating_Rating_Level;

ALTER TABLE employee
ALTER COLUMN [Education] varchar(50);

ALTER TABLE Performance_Rating 
ALTER COLUMN [Manager_Rating] varchar(50);


CREATE TABLE Date_Table (
    DateID DATE PRIMARY KEY,
    Year INT,
    Month INT,
    Day INT,
    DayOfWeek VARCHAR(10),
    Quarter INT,
    MonthName VARCHAR(15),
    WeekOfYear INT
);

INSERT INTO Date_Table (DateID, Year, Month, Day, DayOfWeek, Quarter, MonthName, WeekOfYear)
SELECT DISTINCT 
    DateValue AS DateID,
    YEAR(DateValue) AS Year,
    MONTH(DateValue) AS Month,
    DAY(DateValue) AS Day,
    DATENAME(WEEKDAY, DateValue) AS DayOfWeek,
    DATEPART(QUARTER, DateValue) AS Quarter,
    DATENAME(MONTH, DateValue) AS MonthName,
    DATEPART(WEEK, DateValue) AS WeekOfYear
FROM (
    SELECT Hire_Date AS DateValue FROM Employee
    UNION 
    SELECT Review_Date AS DateValue FROM Performance_Rating
) AS Dates
WHERE DateValue IS NOT NULL;

select * from [dbo].[Date_Table]




select* from [dbo].[Performance_Rating]

UPDATE t1
SET t1.Environment_Satisfaction = t2.Satisfied_Level
FROM Performance_Rating t1
JOIN Satisfied_Level t2 ON t1.Environment_Satisfaction = t2.Satisfied_ID];

UPDATE t1
SET t1.Job_Satisfaction = t2.Satisfied_Level
FROM Performance_Rating t1
JOIN Satisfied_Level t2 ON t1.Job_Satisfaction  = t2.[stisfied_ID];

UPDATE t1
SET t1.Relationship_Satisfaction = t2.Satisfied_Level
FROM Performance_Rating t1
JOIN Satisfied_Level t2 ON t1.Relationship_Satisfaction  = t2.[Rating_Level];

UPDATE t1
SET t1.[Self_Rating] = t2.[Rating_Level]
FROM Performance_Rating t1
JOIN [dbo].[Rating_Level] t2 ON t1.[Self_Rating]  = t2.[Rating_ID];

select * from Employee
UPDATE t1
SET t1.[Education] = t2.Education_Level
FROM [dbo].[Employee] t1
JOIN [dbo].[Education_Level] t2 ON t1.Education = t2.Education_Level_ID;

select * from Employee

UPDATE t1
SET t1.[Manager_Rating] = t2.[Rating_Level]
FROM Performance_Rating t1
JOIN [dbo].[Rating_Level] t2 ON t1.[Manager_Rating]  = t2.[Rating_ID];



