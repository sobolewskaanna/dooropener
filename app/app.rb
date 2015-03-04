require 'sinatra'
require 'twilio-ruby'

get '/' do
  'Hello World! Currently running version ' + Twilio::VERSION + \
        ' of the twilio-ruby library.'
end

get '/dooropener' do
  Twilio::TwiML::Response.new do |r|
    r.Play 'https://raw.githubusercontent.com/sobolewskaanna/dooropener/master/sounds/9.wav'
  end.text
end

get '/hello-monkey' do
  Twilio::TwiML::Response.new do |r|
    r.Say 'Hello Monkey'
    r.Play 'http://demo.twilio.com/hellomonkey/monkey.mp3'
  end.text
end
