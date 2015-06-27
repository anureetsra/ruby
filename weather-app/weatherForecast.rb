require "yahoo_weatherman"
def get_weather(location)
client = Weatherman::Client.new
  response = client.lookup_by_location(location)
end

puts "What is your postcode?"
location = gets.chomp
response = get_weather(location)
t = Time.now
today = t.strftime("%w");
arr = response.forecasts;
arr.each do |item|
responseDay = item['date'].strftime("%w"); 
if (responseDay.to_i == today.to_i)
    puts "Today is going to be #{item['text'].downcase} with a low of #{item['low']} and a high of #{item['high']} degrees celsius"
elsif(responseDay.to_i == today.to_i + 1 )
    puts "Tomorrow is going to be #{item['text'].downcase} with a low of #{item['low']} and a high of #{item['high']} degrees celsius"
else
puts "#{item['day']} is going to be #{item['text'].downcase} with a low of #{item['low']} and a high of #{item['high']} degrees celcius"
  end
end

