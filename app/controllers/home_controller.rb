class HomeController < ApplicationController

  def index
    @feed = Feedjira::Feed.fetch_and_parse feed_url
    @entry = @feed.entries.values_at(0...5)
    @pics = Instagram.tag_recent_media('boston').values_at(0...9)
    @posts = Post.limit(4).order(created_at: :desc)
    @post = Post.find_by(params[:id])

  end

  private

  def feed_url
    #url = "http://feeds.boston.com/boston/topstories"
    url = "http://bostinno.streetwise.co/feed/"
  end

end
