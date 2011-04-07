class CreateTweetFinders < ActiveRecord::Migration
  def self.up
    create_table :tweet_finders do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :tweet_finders
  end
end
