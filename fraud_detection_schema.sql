
/*
 * This script provides insights into transaction data for the finance department of a Reputable Company.
 * The queries are designed to detect fraudulent transactions based on specific suspicious patterns.
 */

/*
 * Query 1: View the columns for the transaction_data table
 */
SELECT *
FROM transaction_data
LIMIT 10;

/*
 * Query 2: Find the full names and emails of transactions from zip code 20252
 * Some fraudulent transactions were noted to originate from this zip code, which is associated with Smokey Bear.
 */
SELECT full_name, email, zip
FROM transaction_data
WHERE zip = "20252";

/*
 * Query 3: Find the full names and emails associated with pseudonym transactions
 * The pseudonyms are either 'Art Vandelay' or contain 'der' as the middle name.
 */
SELECT full_name, email
FROM transaction_data
WHERE full_name = 'Art Vandelay'
   OR full_name LIKE '% der %';

/*
 * Query 4: Find the IP addresses and emails of transactions originating from internal-use IP addresses
 * Any IP address beginning with '10.' is reserved for internal use.
 */
SELECT ip_address, email
FROM transaction_data
WHERE ip_address LIKE '10.%';

/*
 * Query 5: Find the emails using temporary email address service from the transaction data
 * Fraudulent transactions are being made using these short-lived email addresses.
 */
SELECT email
FROM transaction_data
WHERE email LIKE '%temp_email.com';

/*
 * Query 6: Find a specific transaction for the finance department
 * The transaction was made from an IP address starting with '120.' and the full name starts with 'John'.
 */
SELECT *
FROM transaction_data
WHERE full_name LIKE 'John%'
  AND ip_address LIKE '120.%';

/*
 * Query 7: Find customers residing in Georgia (GA) based on ZIP code prefixes
 * The ZIP code prefixes for Georgia are '30', '31', and '39'.
 */
SELECT *
FROM transaction_data
WHERE zip LIKE '30%'
  OR zip LIKE '31%'
  OR zip LIKE '39%';
