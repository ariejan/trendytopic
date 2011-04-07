require 'twitter-text'

class TweetFinder < ActiveRecord::Base
        
    def self.get_hash_tags(tweet)
        Twitter::Extractor.extract_hashtags(tweet)
    end
    
end
