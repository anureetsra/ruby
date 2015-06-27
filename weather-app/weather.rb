require "yahoo_weatherman"
def get_weather(location)
client = Weatherman::Client.new
  response = client.lookup_by_location(location)
end

puts "What is your postcode?"
location = gets.chomp
response = get_weather(location)
case (response.condition['text'].upcase)
when "SUNNY"
puts "It's 85 degrees and sunny"
when "CLOUDY"
puts "55 degrees and crazy cloudy!"
when "RAINY"
puts "60 degrees and crazy rainy!"
when "SNOWY"
puts "32 degrees and super snowy!"

else
puts "not sure what weather this is"

end

