/*
 * This script generates user lists for the marketing department of Reputable Product Agency (RPA).
 * The segmentation is based on different criteria, which are determined by SQL queries.
 * 
 * A segment refers to a subset of users that meet different conditions. These are used to send 
 * marketing campaigns to users who meet specific criteria or to measure the performance of specific 
 * marketing campaigns.
 * 
 * The users dataset is already imported into the workspace.
 */

/*
 * Query 1: Get the column names in the users table
 */
SELECT *
FROM users
LIMIT 20;

/*
 * Query 2: Get the email addresses and birthdays of users born between 1980 and 1989
 */
SELECT email, birthday
FROM users
WHERE birthday >= '1980-01-01'
  AND birthday <= '1989-12-31';

/*
 * Query 3: Get the emails and creation date of users created before May 1, 2017
 */
SELECT email, created_at
FROM users
WHERE created_at < '2017-05-01';

/*
 * Query 4: Get the emails of users who were part of the 'bears' A/B test
 * This test used cute animal clipart to encourage users to sign up.
 */
SELECT email
FROM users
WHERE test = 'bears';

/*
 * Query 5: Get the emails of users who were part of a campaign on website BBB
 * There were 4 advertising campaigns run, with two sets of ad copy (set 1 and set 2), both run 
 * on two search engine sites (AAA and BBB).
 */
SELECT email
FROM users
WHERE campaign LIKE 'BBB%';

/*
 * Query 6: Get the emails of users who received ad copy 2 in their campaign
 */
SELECT email
FROM users
WHERE campaign LIKE '%-2';

/*
 * Query 7: Get the emails of users who received both a campaign and a test
 */
SELECT email
FROM users
WHERE campaign IS NOT NULL
  AND test IS NOT NULL;
