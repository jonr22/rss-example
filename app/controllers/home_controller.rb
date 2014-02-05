class HomeController < ApplicationController
  def index
    feed_urls = ['http://feeds.feedburner.com/techradar/us/reviews/phones', 'www.engadget.com/rss-full.xml']
    @feeds = Feedzirra::Feed.fetch_and_parse(feed_urls)
  end
end
