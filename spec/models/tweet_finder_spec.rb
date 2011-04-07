require 'spec_helper'

describe TweetFinder, '#get_hash_tags' do
    
    it "should find 1 tag" do     
        tags = TweetFinder.get_hash_tags('Ik ben bij #kabisa')
        tags.should be_an(Array)
        tags.size.should == 1
    end
    
    it "should find specified tag" do    
        tags = TweetFinder.get_hash_tags('Ik ben bij #kabisa')
        tags.first.should eql('kabisa')
    end
    
    it 'should find my trending topics' do
        topics = ['eten', 'bier', 'eten', 'eten', 'werk', 'werk']
        
        trending = TweetFinder.get_trending(topics)
        
        trending.should be_an(Array)
        trending.should eql(['eten', 'werk', 'bier'])
    end    
end