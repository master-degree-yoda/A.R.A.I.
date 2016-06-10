require 'twitter'

client_streaming = Twitter::Streaming::Client.new do |config|
  config.consumer_key       = "hKOshFzU57W0rnRQyr6yFja1y"
  config.consumer_secret    = "raMmW3vavO0GB58s5NfchBwa6GNr0SA1cSpF4CteEG8A2Z7su3"
  config.oauth_token        = "739796586016841728-YkRV4VYfUKyQf6bB71w1KRdmFlLuQag"
  config.oauth_token_secret = "ZUtxyJbkJguSiuoSQMoBa5hzhZznr2qo3PiPuLVzuMsPX"
end

client_rest = Twitter::REST::Client.new do |config|
  config.consumer_key       = "hKOshFzU57W0rnRQyr6yFja1y"
  config.consumer_secret    = "raMmW3vavO0GB58s5NfchBwa6GNr0SA1cSpF4CteEG8A2Z7su3"
  config.oauth_token        = "739796586016841728-YkRV4VYfUKyQf6bB71w1KRdmFlLuQag"
  config.oauth_token_secret = "ZUtxyJbkJguSiuoSQMoBa5hzhZznr2qo3PiPuLVzuMsPX"
end

USERNAME = "KGJT_bot"

client_streaming.user do |object|
  case object
  when Twitter::Tweet
    if (/A.R.A.I./ =~ object.text) && (object.user.screen_name != USERNAME)
      puts object.user.screen_name + ':' + object.text
      client_rest.update("@#{object.user.screen_name} なんでしょうか？", options = {in_reply_to_status_id: object.id})
    end
  end
end