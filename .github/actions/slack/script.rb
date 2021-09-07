#!/usr/bin/env ruby
require 'json'

def send_slack_message
  path = ARGV[0]
  msg = ARGV[1] #TODO понять как передовать текст
  puts ENV.inspect
  responce = %x{curl -X POST -H 'Content-type: application/json' --data '{"text":"#{msg}"}' "#{path}"}
  puts "======= #{responce}"
  return puts 'error' until responce == 'ok'
end

send_slack_message

