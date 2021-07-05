# sample data from individual tables 
SELECT * FROM users;
SELECT * FROM usersAddress;
SELECT * FROM usersContact;

# 1. Get a sum of all the user_ids from the `usersAddress` table grouped by state. 

SELECT 
usersAddress.state,
SUM(usersAddress.user_id),
count(*)
FROM usersAddress
GROUP BY
state;

# Find the most popular area code in the `usersContact` table. 
 # Hint: SUBSTR, GROUP BY
 
 SELECT 
  count(*),
 SUBSTR(usersContact.phone1, 1, 3) AS ExactString
 FROM usersContact
 GROUP BY
SUBSTR(usersContact.phone1, 1, 3);
