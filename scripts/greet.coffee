# Description:
#   みくりさんが挨拶をしてくれる機能です。
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot おはよう - "おはようございます！"と返答
#
# Notes:
#   初めて作りました。
#
# Author:
#   susuwatarin

module.exports = (robot) ->

  robot.respond /おはよ/i, (msg) ->
    msg.reply "おはようございます！"

  robot.respond /おやす/i, (msg) ->
    goodnight = msg.random ["おやすみなさい", "おやすみなさい、また明日！", "もう私も寝ますね！おやすみなさい", "もう寝ちゃうんですか？", "今日は一緒に寝ますか？"]
    msg.reply "#{goodnight}"

  robot.hear /((疲|つか)れた|I'm tired)/i, (msg) ->
    msg.reply "#{msg.message.user.name}さん、おつかれさま！"

  robot.respond /いってきます/i, (msg) ->
    msg.reply "いってらっしゃい！"


