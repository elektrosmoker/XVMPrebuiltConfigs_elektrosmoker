﻿{
  "safeShot": {
    "enabled": true,
    "wasteShotBlock": false,
    "teamShotBlock": true,
    "teamKillerShotUnblock": true,
    "deadShotBlock": true,
    "deadShotBlockTimeOut": 4,
    "clientMessages": {
      "wasteShotBlockedMessage": "Waste shot blocked!",
      "teamShotBlockedMessage": "Team shot blocked!",
      "deadShotBlockedMessage": "Dead shot blocked!"
    },
    "chatMessages": {
      //{{target-name}}, {{target-vehicle}}
//      "teamShotBlockedMessage": "[{{target-name}} {{target-vehicle}}], you're blocking my target!"
      "teamShotBlockedMessage": "Sorry [{{target-name}}], you're in my line of fire!"
    },
    "disableKey": 56,
    "onHold": true,
    "triggerMessage": true,
    "triggerText": {
      "enabled": "SafeShot: enabled",
      "disabled": "SafeShot: disabled"
    }
  }
}