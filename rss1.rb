require 'feedjira'

url = "http://feedjira.com/blog/feed.xml"
feed = Feedjira::Feed.fetch_and_parse url

entries = feed.entries

entries.each do |entry|
 puts entry.url
 end