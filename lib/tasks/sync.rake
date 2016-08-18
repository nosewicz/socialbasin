namespace :sync do
  task feeds: [:environment] do
    Feed.all.each do |feed|
        Feedjira::Feed.add_common_feed_entry_element "media:content", :as => :image_large, :value => :url, :with => { isDefault: "true" }
      content = Feedjira::Feed.fetch_and_parse feed.url
      content.entries.each do |entry|
        local_entry = feed.entries.where(title: entry.title).first_or_initialize
        local_entry.update_attributes(url: entry.url, published: entry.published, entry_guid: entry.id)
        if feed.name == "BuzzFeed"
            local_entry.update_attributes(image: entry.image_large)
        else
            local_entry.update_attributes(image: entry.image)
        end
        p "Synced Entry - #{entry.title}"
      end
      p "Synced Feed - #{feed.name}"
    end
  end
end