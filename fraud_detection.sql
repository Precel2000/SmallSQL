/*data queries to help identify fraudulent transactions*/

/* select data where zipcode is 20252 */
SELECT full_name, email 
FROM transaction_data
WHERE zip = 20252;

/*transactions made by 'Art Vandelay' or person with 'der' as middle name */
SELECT full_name, email
FROM transaction_data
WHERE full_name = 'Art Vandelay'
  OR full_name LIKE '% der %';

/* select transaction data where IP address begin with ‘10.’*/
SELECT ip_address, email
FROM transaction_data
WHERE ip_address LIKE '10.%';

/*email entries with ‘temp_email.com’ as a domain*/
SELECT email
FROM transaction_data
WHERE email LIKE '%temp_email.com';

/*finds transaction of a client whose name starts with John and ip address starts with '120' */
SELECT * 
FROM transaction_data
WHERE full_name LIKE 'John%'
  AND ip_address LIKE '120%';
