class TrendingController < ApplicationController
    
  def index
      #todo: input sanity
      logger.debug(params[:user])
      @trending = TweetFinder.find_trending(params[:user])
  end

end
