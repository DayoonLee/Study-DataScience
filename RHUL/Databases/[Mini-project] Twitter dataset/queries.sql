-- 1. Tweets, users and languages
-- 1-1. How many tweets are there in total?

select count(tweet_id) as nr_tweets from tweets;

-- 1-2. How are these tweets distributed across languages?

select user_lang, count(tweet_id) from users inner join tweets on users.user_id = tweets.user_id
group by user_lang;

-- 1-3.

with nr_tweets as (select count(tweet_id) from tweets)
select user_lang, count(tweet_id)::float / (select * from nr_tweets) as fraction_of_tot_tweets
from users inner join tweets on users.user_id = tweets.user_id
group by user_lang;


with nr_users as (select count(user_id) from users)
select user_lang, count(user_id)::float / (select * from nr_users) as fraction_of_nr_users
from users group by user_lang;



-- 2. Retweeting habits
-- 2-1. What fraction of the tweets are retweets?

with nr_tweets as (select count(tweet_id) from tweets),
nr_retweets as (select count(tweet_id) from retweet)
select nr_retweets.count::float / nr_tweets.count as result
from nr_tweets, nr_retweets;

-- 2-2. Compute the average number of retweets per tweet.

with nr_tweets as (select count(tweet_id) from tweets),
sum_retweets as (select sum(retweet_count) from tweets)
select sum_retweets.sum / nr_tweets.count as result
from nr_tweets, sum_retweets;

-- 2-3. What fraction of the tweets are never retweeted?

with nr_tweets as (select count(tweet_id) from tweets),
nr_never_retweeted as (select count(retweet_count) from tweets where retweet_count=0)
select nr_never_retweeted.count::float / nr_tweets.count as result
from nr_tweets, nr_never_retweeted;

-- 2-4. What fraction of the tweets are retweeted fewer times than the avg number of retweets?

with avg_retweets as
(with nr_tweets as (select count(tweet_id) from tweets),
sum_retweets as (select sum(retweet_count) from tweets)
select sum_retweets.sum / nr_tweets.count as result
from nr_tweets, sum_retweets),
fewer_retweet as (select count(retweet_count) from tweets where
retweet_count < (select * from avg_retweets)),
nr_tweets as (select count(tweet_id) from tweets)
select fewer_retweet.count::float / nr_tweets.count as result from fewer_retweet, nr_tweets;



-- 3. Hashtags
-- 3-1. What is the number of distinct hashtags found in these tweets?

select count(distinct(hashtag)) as nr_hashtag from hashtag;

-- 3-2. What are the top ten most popular hashtags, by number of usages?

select hashtag from hashtag group by hashtag order by count(hashtag) desc limit 10;

-- 3-3. Write a query giving, for each language, the top three most popular hashtags in that language

with hashtag_rank as (with nr_hashtag_per_lang as (select user_lang, hashtag, count(hashtag) as nr_used
from users inner join tweets on users.user_id = tweets.user_id inner join hashtag
on tweets.tweet_id = hashtag.tweet_id group by user_lang, hashtag)
select user_lang, hashtag, nr_used, rank() over (partition by user_lang order by nr_used desc) as rank
from nr_hashtag_per_lang)
select user_lang, hashtag from hashtag_rank where rank < 4;



-- 4. Replies
-- 4-1. How many tweets are neither replies, nor replied to?

with nr_tweets as (select count(tweet_id) from tweets),
nr_replies as (select count(tweet_id) from reply)
select nr_tweets.count - nr_replies.count as result
from nr_tweets, nr_replies;

-- 4-2. If a user1 replies to another user user2, what is the probability that they have the same language setting?

with nr_same_lang as (with lang1 as (select user_lang, users.user_id, reply.tweet_id
from reply inner join tweets on reply.tweet_id = tweets.tweet_id inner join users
on users.user_id = tweets.user_id),
lang2 as (select user_lang, in_reply_to_user_id, reply.tweet_id from
reply inner join users on reply.in_reply_to_user_id = users.user_id)
select count(lang1.tweet_id) from lang1 inner join lang2
on lang1.tweet_id = lang2.tweet_id and lang1.user_lang = lang2.user_lang),
tot_reply as (select count(tweet_id) from reply)
select (select * from nr_same_lang)::float / tot_reply.count as result
from nr_same_lang, tot_reply;


-- 4-3. How does this compare to the probability that two arbitrary users have the same language setting?















