insert into timezone (time_zone, utc_offset)
select distinct(user_time_zone), user_utc_offset
from bad_giant_table
where user_time_zone is not null;

insert into users (user_id, user_name, user_screen_name, user_location, user_time_zone,
user_followers_count, user_friends_count, user_lang, user_description, user_status_count,
user_created_at)
select distinct(user_id), user_name, user_screen_name, user_location, user_time_zone,
user_followers_count, user_friends_count, user_lang, user_description, user_status_count,
user_created_at::timestamp
from bad_giant_table;

insert into tweets (tweet_id, created_at, text, retweet_count, tweet_source, user_id)
select distinct(tweet_id), created_at::timestamp, text, retweet_count, tweet_source, user_id
from bad_giant_table;

insert into reply (tweet_id, in_reply_to_screen_name, in_reply_to_status_id, in_reply_to_user_id)
select distinct(tweet_id), in_reply_to_screen_name, in_reply_to_status_id, in_reply_to_user_id
from bad_giant_table
where in_reply_to_screen_name is not null and
in_reply_to_status_id is not null and in_reply_to_user_id is not null;

insert into retweet (tweet_id, retweet_of_tweet_id)
select distinct(tweet_id), retweet_of_tweet_id
from bad_giant_table
where retweet_of_tweet_id is not null;

insert into hashtag (tweet_id, hashtag)
select tweet_id, hashtag1
from bad_giant_table
where hashtag1 is not null;

insert into hashtag (tweet_id, hashtag)
select tweet_id, hashtag2
from bad_giant_table
where hashtag2 is not null;

insert into hashtag (tweet_id, hashtag)
select tweet_id, hashtag3
from bad_giant_table
where hashtag3 is not null;

insert into hashtag (tweet_id, hashtag)
select tweet_id, hashtag4
from bad_giant_table
where hashtag4 is not null;

insert into hashtag (tweet_id, hashtag)
select tweet_id, hashtag5
from bad_giant_table
where hashtag5 is not null;

insert into hashtag (tweet_id, hashtag)
select tweet_id, hashtag6
from bad_giant_table
where hashtag6 is not null;
