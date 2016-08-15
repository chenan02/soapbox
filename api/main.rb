require_relative 'twitter'
require_relative 'twilio'

channels = {
  "Tech" => ["TechCrunch", "TheHackersNews", "newsycombinator"],
  "Politics" => ["politicalwire", "BBC", "NPR", "nytimes"],
  "Sports" => ["espn"],
  "Finance" => ["EconBizFin", "financialtimes"]
}

users = {
  "2483809188" => "Andrew Chen"
}

body = get_tweet(channels["Tech"])
send_message(users, body)