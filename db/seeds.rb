# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'open-uri'
require 'nokogiri'

# Perform a google search
doc = Nokogiri::HTML(open('http://www.nhl.com/scores/htmlreports/20132014/PL020275.HTM'))


def add_stats_to_arr(doc)

@master = {}
@header = {}

doc.css('tr.evenColor').each_with_index do |row, i|
  @master[i] = []
  row.css('td').each do |td|
    @master[i] << td.content
  end
end


vscore = doc.css('#Visitor tr[2] td table tr td[2]').children.first
visitor = doc.css('#Visitor tr[3] td').children.first
dateandday = doc.css('#GameInfo tr[4] td').children.first
startandend = doc.css('#GameInfo tr[6] td').children.first
number = doc.css('#GameInfo tr[7] td').children.first
hscore = doc.css('#Home tr[2] td table tr td[2]').children.first
home = doc.css('#Home tr[3] td').children.first
startandend = startandend.to_s.split(';')
start = startandend[0]
endtime = startandend[1]
dateandday = dateandday.to_s.split(',')
weekday = dateandday[0]
date = dateandday[1] + dateandday[2]


end

def add_stats_to_db(master)

@event_number = []
@per = []
@str = []
@time = []
@event = []
@description = []
@team_1 = []
@team_2 = []

  master.each do |master|

  master.each_with_index do |thing, i|

    @event_number << thing[0]
    @per << thing[1]
    @str << thing[2]
    @time << thing[3]
    @event << thing[4]
    @description << thing[5]
    @team_1 << thing[6]
    @team_2 << thing[7]
  end

end

end



add_stats_to_arr(doc)
add_stats_to_db(@master)

# p @event_number

# puts "#######################"

# p @per

# puts "#######################"

# p @str

# puts "#######################"

# p @time

# puts "#######################"


# p @event

# puts "#######################"


# p @description

# puts "#######################"


# p @team_1

# puts "#######################"


# p @team_2



########3
