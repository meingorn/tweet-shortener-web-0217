# Write your code here.
def dictionary(word)
    shortened_dict = {
      "hello"=>"hi",
      "to"=>"2",
      "two"=>"2",
      "too"=>"2",
      "for"=>"4",
      "four"=>"4",
      "be"=>"b",
      "you"=>"u",
      "at"=>"@",
      "and"=>"&"}

    shortened_dict[word]
end

def word_substituter(tweet)
  short_tweet = []
  words = tweet.split(" ")
  words.each do |word|
  shorter = dictionary(word.downcase)
    if shorter
      short_tweet << shorter
    else
      short_tweet << word
    end
  end
    short_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  for tweet in tweets
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.to_s.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).to_s.length > 140
    word_substituter(tweet)[0..136] + "..."
  else
    tweet
  end
end
