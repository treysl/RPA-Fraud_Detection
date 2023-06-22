# Reputable Product Agency (RPA) - SQL Schemas 📖

This README file provides an overview of two SQL schemas used in our projects: `users` and `transaction_data`.

## Users Schema 👥

The `users` schema is used for segmenting the user base for targeted marketing campaigns 🎯. Below are the columns inferred from the SQL queries provided:

- `email`: 📧 The email address of the user.
- `birthday`: 🎂 The user's birthday.
- `created_at`: 📆 The date the user's account was created.
- `test`: 🧪 The group that the user was assigned to in the A/B test. Example values include 'bears'.
- `campaign`: 🚀 The advertising campaign the user was part of. Example values include 'AAA-1', 'AAA-2', 'BBB-1', 'BBB-2'.

SQL queries in the `users` schema are primarily used for segmenting users based on various conditions such as their date of birth, account creation date, participation in A/B tests, and involvement in advertising campaigns.

## Transaction Data Schema 💳

The `transaction_data` schema is used for analyzing transactional data to detect potential fraudulent activities 🕵️‍♀️. The following columns are inferred from the SQL queries:

- `full_name`: 📛 The full name of the user.
- `email`: 📧 The email address of the user.
- `zip`: 📍 The zip code associated with the transaction.
- `ip_address`: 🌐 The IP address from where the transaction originated.

SQL queries in the `transaction_data` schema are used to find transactions that match suspicious patterns, such as originating from specific zip codes, associated with certain names, originating from internal-use IP addresses, using temporary email services, etc.

The data was provided by Codecademy as part of the [Data Science Path](https://www.codecademy.com/learn/paths/data-science) course. Althought the tabkes themselves are inaccessible, table prints have been provided in the 'SQL - RPA' folder.
