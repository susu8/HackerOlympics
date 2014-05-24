require "json"
require "open-uri"
require "pry"

url = "http://hacker-olympics-london.herokuapp.com/leaderboard.json"
page_body = open(url).read

json_object = JSON.parse(page_body)

json_object.each do |post|
  post.each do |team|
    # binding.pry
    @name = team["name"]
    @points = team["points"]
    @id = team["id"]
  end
  puts "#{@points} for #{@name} (#{@id})"
end
