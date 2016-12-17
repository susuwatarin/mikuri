# Description:
#   TBS火曜ドラマ「逃げるは恥だが役に立つ」のドラマ放映時間を通知してくれます。
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Notes:
#   火曜は逃げ恥の日。
#
# Author:
#   susuwatarin

cronJob = require('cron').CronJob

module.exports = (robot) ->

  cronjob = new cronJob(
    cronTime: "0 58 9 * * tue"     # 実行時間
    start:    true                # すぐにcronのjobを実行するか
    timeZone: "Asia/Tokyo"        # タイムゾーン指定
    onTick: ->                    # 時間が来た時に実行する処理
      robot.send {room: "#general"}, "「逃げ恥」始まりますよ〜！"
  )
