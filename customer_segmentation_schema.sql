-- RPA Customer Segmentation
-- The marketing department of Reputable Product Agency (RPA) is looking to segment the company users by a number of different criteria.

-- In this context, a segment is a subset of users that meet different conditions. Segments are used to send marketing campaigns to users who meet specific criteria or to measure the performance of specific marketing campaigns.

-- Use SQL queries to generate user lists for the marketing department. The users dataset is imported into the workspace.

-- The schema of the table is available here.

-- If you get stuck during this project or would like to see an experienced developer work through it, click “Get Unstuck“ to see a project walkthrough video.

--1
-- What are the column names?
SELECT *
FROM users
LIMIT 20;

-- 2
-- Find the email addresses and birthdays of users whose 
-- birthday is between 1980-01-01 and 1989-12-31.

SELECT email, birthday
FROM users
WHERE birthday >= '1980-01-01'
  AND birthday <= '1989-12-31';

-- 3
-- Find the emails and creation date of users 
-- whose created_at date matches this condition.
SELECT email, created_at
FROM users
WHERE created_at < '2017-05-01';

--4
-- There was an A/B test performed on users that used cute animal clipart to encourage users to sign up. We’d like to see how the group that was shown ‘bears’ is performing.
-- Find the emails of the users who received the ‘bears’ test.
SELECT email
FROM users
WHERE test = 'bears';


--5
-- A total of 4 advertising campaigns were run over this period.
-- There were two sets of ad copy (set 1 and set 2) and both were run on two search engine sites (AAA and BBB).
-- The resulting campaign values are:
-- AAA-1
-- AAA-2
-- BBB-1
-- BBB-2
-- Find all the emails of all users who received a campaign on website BBB.
SELECT email
FROM users
WHERE campaign LIKE 'BBB%';

-- 6
-- Find all the emails of all users who received ad copy 2 in 
-- their campaign.
SELECT email
FROM users
WHERE campaign LIKE '%-2';

-- 7
-- Find the emails for all users who received both a campaign and a test. 
-- These users will have non-empty entries in the 
-- campaign and test columns.
SELECT email
FROM users
WHERE campaign IS NOT NULL
  AND test IS NOT NULL;