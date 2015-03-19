require 'anemone'

# puts 'hey'

urls = [
        "http://www.amazon.co.jp/gp/bestsellers/books/",
        "http://www.amazon.co.jp/gp/bestsellers/digital-text/2275256051/"
      ]

RGP = /\/gp\/bestsellers\/books|\/gp\/bestsellers\/digital-text/

Anemone.crawl(urls, :depth_limit => 1, :skip_query_strings => true) do |anemone|
  anemone.focus_crawl do |page|
    page.links.keep_if { |link|
      # bestselloersを含むURLのみ取得する
      link.to_s.match(RGP)
    }  
  end
  anemone.on_every_page do |page|
    puts page.url      
  end
end