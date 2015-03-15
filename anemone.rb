require 'anemone'

# puts 'hey'

Anemone.crawl("http://news.yahoo.co.jp/", :depth_limit => 0) do |anemone|
	anemone.on_every_page do |page|
		# page.doc.xpath("//*[@id=¥"editorsPack¥"]/div/ul[1]/li/div/p/a").each do |title|
		# page.doc.xpath("//*[@id=\"editorsPack\"]/div/ul[1]/li/div/p/a").each do |title|
			# puts title.text
		# end

		# puts page.doc
		page.doc.xpath("/html/body/div/div[2]/div[2]/div[1]/div[1]/ul[1]/li[1]/div/h1/a").each do |title|
		# page.doc.xpath("/html/body/div/div[2]/div[2]/div[1]/div[2]/div[2]/ul/").each do |title|
		# page.doc.xpath("/html/body/div/div[2]/div[2]/div[1]/div[2]/div[2]/ul/li[3]/div[2]/dl/dt/a").each do |title|
			puts title.text
		end
	end
end