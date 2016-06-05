def dictionary
  dictionary = {:words => {
  "hello" => "hi",
  "to" => "2",
  "too" => "2",
  "two" => "2",
  "for" => "4",
  "For" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }}
end

def word_substituter(tweet)
  words = tweet.split(" ")

  holder = []
  words.each do |word|
    if dictionary[:words].has_key?(word)
      holder << dictionary[:words][word]
    else
      holder << word
    end
  end
  holder.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length >= 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = tweet[0..139]
  end
  tweet
end
