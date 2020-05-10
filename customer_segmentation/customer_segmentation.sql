/* select users born in the 80s*/
SELECT email, birthday
FROM users
WHERE birthday BETWEEN '1980-01-01' AND '1989-12-31';

/*select accounts created befoer May 2017*/
SELECT email, created_at
FROM users
WHERE created_at < '2017-05-01';

/*emails of the users who received the ‘bears’ test*/
SELECT email
FROM users
WHERE test = 'bears';

/*emails of all users who received a campaign on website BBB*/
SELECT email
FROM users
WHERE campaign = 'BBB-1' OR campaign = 'BBB-2';

/*emails of all users who received ad copy 2 in their campaign*/
SELECT email
FROM users
WHERE campaign LIKE '%-2';

/*emails of users who received both a campaign and a test*/
SELECT email
FROM users
WHERE campaign IS NOT NULL 
AND test IS NOT NULL;
