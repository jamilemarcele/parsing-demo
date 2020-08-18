require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.epicurious.com https://www.bbcgoodfood.com/
ingredient = 'chocolate'
url = "https://www.bbcgoodfood.com/search/recipes?query=#{ingredient}"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.teaser-item__title a').each do |element|
  puts element.text.strip
  puts element.attribute('href')
end
