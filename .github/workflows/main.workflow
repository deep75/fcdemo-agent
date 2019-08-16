workflow "Slack Notification Demo" {
  resolves = ["Slack Notification"]
  on = "push"
}

action "Slack Notification" {
  uses = "rtCamp/action-slack-notify@master"
  env = {
    SLACK_CHANNEL = "chatops",
    SLACK_USERNAME = "rtBot",
    SLACK_ICON  = "https://github.com/rtCamp.png?size=48",
    SLACK_COLOR = "#3278BD"
    SLACK_TITLE = "Post Title",
    SLACK_MESSAGE = "Post Content :rocket:"
  }
  secrets = ["SLACK_WEBHOOK"]
}
