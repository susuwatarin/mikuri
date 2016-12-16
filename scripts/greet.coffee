# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   command - result
#
# Author:
#   susuwatarin

module.exports = (robot) ->

  robot.respond /おはよ/i, (msg) ->
    msg.reply "おはようございます！"

  robot.respond /おやす/i, (msg) ->
    goodnight_msg = msg.random["おやすみなさい","おやすみなさい、また明日！","もう私も寝ますね！おやすみなさい","もう寝ちゃうんですか？","今日は一緒に寝ますか？"]
    msg.reply "#{goodnight_msg}"

  robot.hear /つかれた/i, (msg) ->
    msg.reply "おつかれさま！"

  robot.respond /いってきます/i, (msg) ->
    msg.reply "いってらっしゃい！"


