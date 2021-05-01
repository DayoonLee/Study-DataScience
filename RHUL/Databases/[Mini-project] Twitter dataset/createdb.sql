create table timezone(
time_zone varchar(127),
utc_offset int,
primary key (time_zone));

create table users(
user_id bigint,
user_name varchar(255),
user_screen_name varchar(255),
user_location varchar(255),
user_time_zone varchar(127),
user_followers_count int,
user_friends_count int,
user_lang varchar(10),
user_description varchar(255),
user_status_count varchar(255),
user_created_at timestamp,
primary key (user_id),
foreign key (user_time_zone) references timezone);

create table tweets (
tweet_id bigint,
created_at timestamp,
text varchar(255),
retweet_count int,
tweet_source varchar(255),
user_id bigint,
primary key (tweet_id),
foreign key (user_id) references users);

create table reply (
tweet_id bigint,
in_reply_to_screen_name varchar(255),
in_reply_to_status_id bigint,
in_reply_to_user_id bigint,
primary key (tweet_id),
foreign key (tweet_id) references tweets);

create table retweet (
tweet_id bigint,
retweet_of_tweet_id bigint,
primary key (tweet_id),
foreign key (tweet_id) references tweets,
foreign key (retweet_of_tweet_id) references tweets);

create table hashtag (
tweet_id bigint,
hashtag varchar(144),
foreign key (tweet_id) references tweets);
