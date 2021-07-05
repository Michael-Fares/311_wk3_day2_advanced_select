# list data from individual tables 

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

# Find the MIN first_name, the county, and a count of all users in that county for counties with more than 10 users. There will be four results. List the last one. 
# Hint: MIN, COUNT, JOIN, GROUP BY, HAVING

  SELECT
    county,
    count(user_id) AS tally,
    MIN(first_name)
  FROM
    usersAddress
  JOIN users
  WHERE users.id = usersAddress.user_id
  GROUP BY county
  HAVING tally > 10;






