require 'anemone'

# puts 'hey'

Anemone.crawl("http://www.yahoo.co.jp/", :depth_limit => 0) do |anemone|
anemone.skip_links_like /\/r\//
  anemone.on_every_page do |page|
    puts page.url      
  end
end