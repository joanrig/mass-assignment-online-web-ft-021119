# class Person
#   attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
#   :weight, :handed, :complexion, :t_shirt_size,
#   :wrist_size, :glove_size, :pant_length, :pant_width
#
#   def initialize(attributes)
#     attributes.each {|key, value| self.send(("#{key}="), value)}
#   end
# end

require 'pry'
require 'Nokogiri'
require 'open-uri'


  def self.scrape_JPL
    doc = Nokogiri::HTML(open("https://www.jpl.nasa.gov/missions/"))
    binding.pry
    url = doc.css("ul.articles li.slide a").first.text.strip
  end
