# Schema Information

## places
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
owner_id    | integer   | not null, foreign key (references users)
attribute_id| integer   | not null, foreign key (references attributes)
title       | string    | not null
description | string    |

## followings
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
place_id    | integer   | not null, foreign key (references place)
follower_id | integer   | not null, foreign key (references users)

## attributes
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
place_id    | integer   | not null, foreign key (references place)
title       | string    | not null
price       | decimal   | not null
utilities   | decimal   | 
deposit     | decimal   | 
type        | string    | not null
preference  | string    | not null
start_date  | date      | not null
end_date    | date      |
laundry     | string    | not null
agreement   | string    | not null
email       | string    | 
phonenum    | string    | 
desc        | string    | not null
address     | string    | not null


## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, unique
password_digest | string    | not null
session_token   | string    | not null, unique

