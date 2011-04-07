require 'twitter-text'
require 'pp'
require 'twitter'

class TweetFinder < ActiveRecord::Base
        
    def self.get_hash_tags(tweet)
        Twitter::Extractor.extract_hashtags(tweet)
    end
    
    def self.get_trending(topics)
       trending = Hash.new(0)
       
       topics.each do |topic|
           trending[topic] += 1
        end
                
        trending.sort { |a,b| b[1] <=> a[1] }.map { |i| i[0] }
    end
    
    def self.find_trending(user)
        tweets = Twitter.user_timeline(user, :count => 100)
        
        tags = []
        
        tweets.each do |tweet|
            tweet_tags = get_hash_tags(tweet.text)
            tags = tags.concat(tweet_tags)
        end
        
        get_trending(tags)
    end
    
end
