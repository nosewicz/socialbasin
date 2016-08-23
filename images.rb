namespace :get do
  task feeds: [:environment] do
    Feed.all.each do |feed|
        
      content = Feedjira::Feed.fetch_and_parse feed.url
      content.entries.each do |entry|
        local_entry = feed.entries.where(title: entry.title).first_or_initialize
        local_entry.update_attributes(url: entry.url, published: entry.published, entry_guid: entry.id, image: entry.image)
            
        
        p "Synced Entry - #{entry.title}"
      end
      p "Synced Feed - #{feed.name}"
    end
  end
end