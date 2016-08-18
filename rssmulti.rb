require 'feedjira'

Feedjira::Feed.add_common_feed_entry_element "media:content", :as => :image_large, :value => :url, :with => { isDefault: "true" }
urls = ["https://www.buzzfeed.com/index.xml", "http://thoughtcatalog.com/feed/"]
for url in urls do
feed = Feedjira::Feed.fetch_and_parse url
puts feed.class
entries = feed.entries

entries.each do |entry|
 puts entry.title
 puts entry.url
 puts entry.published
 puts entry.id
 puts entry.image
 puts entry.image_large
end
end