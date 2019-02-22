# Write your code here.
require "pry"
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)



     tweet =tweet.split(" ")

      tweet.collect do|word|


         dictionary.collect do|current_word,sub_word|
           if word == current_word
            word.replace(sub_word)



           end
         end

      end
    tweet.join(" ")
end


def bulk_tweet_shortener(tweets)

  tweets.collect do |tweet|
    puts word_substituter(tweet)

  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
     word_substituter(tweet)
  else
     tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length >140 && word_substituter(tweet).length >140
    tweet[0..136] + "..."
  else
    tweet
  end
end
