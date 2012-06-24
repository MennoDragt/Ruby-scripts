require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("http://www.nu.nl/algemeen/"))   
page.search('h2').each do |link|
  puts link.content
end
