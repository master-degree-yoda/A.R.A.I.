require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key       = "hKOshFzU57W0rnRQyr6yFja1y"
  config.consumer_secret    = "raMmW3vavO0GB58s5NfchBwa6GNr0SA1cSpF4CteEG8A2Z7su3"
  config.oauth_token        = "739796586016841728-YkRV4VYfUKyQf6bB71w1KRdmFlLuQag"
  config.oauth_token_secret = "ZUtxyJbkJguSiuoSQMoBa5hzhZznr2qo3PiPuLVzuMsPX"
end

s=[]

File.open("/Users/nerianighthawk/Documents/workspace/ARAIproject/tweet.txt","r:utf-8") do |l|
  l.each_line do |line|
    s.push(line)
  end
end

client.update(s.sample)