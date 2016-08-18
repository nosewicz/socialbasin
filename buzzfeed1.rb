
require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
doc = Nokogiri::HTML(open('https://www.buzzfeed.com/'))

puts "### article titles by css"
doc.css('.lede').each do |post|
  link = post.at_css('.lede__link')[:href]
  title = post.at_css('.lede__title').text
  kicker = post.at_css('.lede__kicker')[:p]
  puts "#{title} - #{link} - #{kicker}"
end

