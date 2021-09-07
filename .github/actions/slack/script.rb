#!/usr/bin/env ruby
require 'json'

def message
  {
    "blocks": [
      {
        "type": "section",
        "text": {
          "type": "mrkdwn",
          "text": ENV['INPUT_MESSAGE']
        }
      },
      {
        "type": "section",
        "fields": [
          {
            "type": "mrkdwn",
            "text": "*Repository:*\n#{ENV['GITHUB_REPOSITORY']}"
          },
          {
            "type": "mrkdwn",
            "text": "*Event:*\n#{ENV['GITHUB_EVENT_NAME']}"
          },
          {
            "type": "mrkdwn",
            "text": "*Ref:*\n#{ENV['GITHUB_REF']}"
          },
          {
            "type": "mrkdwn",
            "text": "*SHA:*\n#{ENV['GITHUB_SHA']}"
          }
        ]
      }
    ]
  }.to_json
end

def send_slack_message
  path = ENV['INPUT_SLACK_WEBHOOK']
  responce = %x{curl -X POST -H 'Content-type: application/json' --data '#{message}' "#{path}"}
  return puts 'ERROR' until responce == 'ok'
end

send_slack_message

