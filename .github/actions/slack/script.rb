#!/usr/bin/env ruby
require 'json'

def message
  {
    "blocks": [
      {
        "type": "section",
        "text": {
          "type": "mrkdwn",
          "text": ENV['INPUT_MESSAGE'] || 'empty'
        }
      },
      {
        "type": "section",
        "fields": [
          {
            "type": "mrkdwn",
            "text": "*Repository:*\n#{ENV['GITHUB_REPOSITORY'] || 'empty'}"
          },
          {
            "type": "mrkdwn",
            "text": "*Event:*\n#{ENV['GITHUB_EVENT_NAME'] || 'empty'}"
          },
          {
            "type": "mrkdwn",
            "text": "*Ref:*\n#{ENV['GITHUB_REF'] || 'empty'}"
          },
          {
            "type": "mrkdwn",
            "text": "*SHA:*\n#{ENV['GITHUB_SHA'] || 'empty'}"
          }
        ]
      }
    ]
  }.to_json
end

def send_slack_message
  path = ENV['INPUT_SLACK_WEBHOOK'] || 'https://hooks.slack.com/services/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'
  responce = %x{curl -X POST -H 'Content-type: application/json' --data '#{message}' "#{path}"}
  return puts 'ERROR' until responce == 'ok'
end

send_slack_message

