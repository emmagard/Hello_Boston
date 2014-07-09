class HomeController < ApplicationController

  def index
    @feed = Feedjira::Feed.fetch_and_parse feed_url
    @entry = @feed.entries
    @pics = Instagram.tag_recent_media('boston')

  end

  private

  def feed_url
    #url = "http://feeds.boston.com/boston/topstories"
    url = "http://bostinno.streetwise.co/feed/"
  end

end
