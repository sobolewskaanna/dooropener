require 'sinatra'
require 'twilio-ruby'

get '/' do
  'Hello World! Currently running version ' + Twilio::VERSION + \
        ' of the twilio-ruby library.'
end

get '/dooropener' do
  Twilio::TwiML::Response.new do |r|
    r.Play 'https://dl.dropboxusercontent.com/content_link/bsoICSl8Kmtf8dleUayPg6Gy1Xl2Trw7cocx6TKnsanftSB7sWfedWMhVoyYBXds'
  end.text
end

get '/hello-monkey' do
  Twilio::TwiML::Response.new do |r|
    r.Say 'Hello Monkey'
    r.Play 'http://demo.twilio.com/hellomonkey/monkey.mp3'
  end.text
end
