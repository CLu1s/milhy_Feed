namespace :sync do
	desc "Sync feeds"
	task feeds: :environment do
		Feed.all.each do |feed|
			content = Feedjira::Feed.fetch_and_parse feed.url
			content.entries.each do |entry|
				local_entry = feed.entries.where(title: entry.title).first_or_initialize
				if entry.content != nil
					local_entry.update_attributes(content: entry.content, author: entry.author, url: entry.url, published: entry.published)
				else
					local_entry.update_attributes(content: entry.summary, author: entry.author, url: entry.url, published: entry.published)
				end

				p "Synced Entry - #{entry.title}"
			end
			p "Synced Feed - #{feed.name}"
		end
	end
end
