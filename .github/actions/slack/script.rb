#!/usr/bin/env ruby
require 'json'

def msg_template
  {
    "blocks" => [
      {
        "type" => "section",
        "text" => {
          "type" => "mrkdwn",
          "text" => "You have a new request:\n*<fakeLink.toEmployeeProfile.com|Fred Enriquez - New device request>*"
        }
      },
      {
        "type" => "section",
        "fields" => [
          {
            "type" => "mrkdwn",
            "text" => "*Type:*\nComputer laptop"
          },
          {
            "type" => "mrkdwn",
            "text" => "*When:*\nSubmitted Aut 10"
          },
          {
            "type" => "mrkdwn",
            "text" => "*Last Update:*\nMar 10, 2015 3 years, 5 months"
          },
          {
            "type" => "mrkdwn",
            "text" => "*Reason:*\nAll vowel keys aren't working."
          },
          {
            "type" => "mrkdwn",
            "text" => "*Specs:*\n\"Cheetah Pro 15\" - Fast, really fast\""
          }
        ]
      }
    ]
  }
end

def send_slack_message
  path = ARGV[0]
  msg = ARGV[1] #TODO понять как передовать текст
  responce = %x{curl -X POST -H 'Content-type: application/json' --data '{"text":"#{msg}"}' "#{path}"}
  
  return puts 'error' until responce == 'ok'
end

send_slack_message

