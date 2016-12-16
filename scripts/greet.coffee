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
    goodnight_msg = msg.random [
      "おやすみなさい"
      "おやすみなさい、また明日！" 
      "もう私も寝ますね！おやすみなさい" 
      "もう寝ちゃうんですか？"
      "今日は一緒に寝ますか？"
      "イチャイチャ、しないの・・？"
    ]
    msg.reply "#{goodnight_msg}"

  robot.hear /((疲|つか)れた|I'm tired)/i, (msg) ->
    msg.reply "おつかれさま！"

  robot.respond /いってきます/i, (msg) ->
    msg.reply "いってらっしゃい！"

  robot.respond /お(しごと|仕事)(終|お)わりました(？|か？)/i, (msg) ->
    msg.send "（#{msg.message.user.name}さんがかわいすぎる件についてーーーーー！！）"



