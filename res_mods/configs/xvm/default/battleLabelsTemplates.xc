{
  "def": { 
  
//hitlog
  "hitLogHeader": {
      "enabled": true,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY), ON_PANEL_MODE_CHANGED",
      //"x": "{{pp.mode=0?{{battletype-key=epic_battle?240|20}}|{{py:sum({{pp.widthLeft}},55)}}}}",
      //"y": "{{pp.mode=0?{{battletype-key=epic_battle?55|90}}|90}}",
      "x": "390",
      "y": "45",
      "width": 500,
      "height": 22,
      "textFormat": { "color": "0xF4EFE8", "size": 15 },
      "format": "{{py:xvm.totalDamage=0?{{l10n:Hits}}: <font size='13'>#0</font>|{{l10n:Hits}}: <font size='13'>#{{py:xvm.numberHitsDealt}}</font> {{l10n:Total}}: <font size='17' color='{{py:xvm.totalDamageColor}}'><b>{{py:xvm.totalDamage}}</b></font> {{l10n:Last}}: <font color='{{py:xvm.dmgKindColor}}'><b>{{py:xvm.dmg}}</b></font>}}"
    },
  "hitLogBody": {
      "enabled": true,
      "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": false,
      "updateEvent": "PY(ON_HIT_LOG), ON_PANEL_MODE_CHANGED",
      "x": "{{pp.mode=5?{{battletype-key=epic_battle?240|5}}|{{py:sum({{pp.widthLeft}},{{py:xvm.hitLog.log.x}})}}}}",
      "y": "{{pp.mode=5?{{battletype-key=epic_battle?80|90}}|{{py:xvm.hitLog.log.y}}}}",
      "width": 500,
      "height": 350,
      "layer": "normal",
      "textFormat": { "color": "0xF4EFE8", "size": 15 },
      "format": "{{py:xvm.hitLog.log}}",
      "mouseEvents": {
        "mouseDown": "hitLog_mouseDown",
        "mouseUp": "hitLog_mouseUp",
        "mouseMove": "hitLog_mouseMove",
        "mouseWheel": "hitLog_mouseWheel"
    }
    },
  
      
    
//damage log
    
  "damageLog": {
      "enabled": true,
      "updateEvent": "PY(ON_HIT)",
      "x": "{{py:xvm.damageLog.log.x}}",
      "y": "{{py:xvm.damageLog.log.y}}",
      "width": 400,
      "height": 210,
      "layer": "bottom",
      "screenVAlign": "bottom",
      "shadow": {
        "distance": "{{py:xvm.damageLog.log.shadow('distance')}}",
        "angle": "{{py:xvm.damageLog.log.shadow('angle')}}",
        "color": "{{py:xvm.damageLog.log.shadow('color')}}",
        "alpha": "{{py:xvm.damageLog.log.shadow('alpha')}}",
        "blur": "{{py:xvm.damageLog.log.shadow('blur')}}",
        "strength": "{{py:xvm.damageLog.log.shadow('strength')}}",
        "hideObject": "{{py:xvm.damageLog.log.shadow('hideObject')}}",
        "inner": "{{py:xvm.damageLog.log.shadow('inner')}}",
        "knockout": "{{py:xvm.damageLog.log.shadow('knockout')}}",
        "quality": "{{py:xvm.damageLog.log.shadow('quality')}}"
      },
      "textFormat": {
        "color": "0xF4EFE8",
        "size": 15
      },
      "format": "{{py:xvm.damageLog.log}}",
      "mouseEvents": {
        "mouseDown": "damageLog_mouseDown",
        "mouseUp": "damageLog_mouseUp",
        "mouseMove": "damageLog_mouseMove",
        "mouseWheel": "damageLog_mouseWheel"
      }
    },
    
    
  "damageLogBackground": {
      "enabled": false,
"$ref": { "path":"def.damageLog" },
      "format": "{{py:xvm.damageLog.log.bg}}"
    },
    
    
    
    "lastHit": {
      "enabled": true,
      "updateEvent": "PY(ON_LAST_HIT)",
      "x": "{{py:xvm.damageLog.lastHit.x}}",
      "y": "{{py:sub({{py:xvm.screenVCenter}},300)}}",
      "width": 400,
      "height": 100,
      "layer": "bottom",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "shadow": {
        "distance": "{{py:xvm.damageLog.lastHit.shadow('distance')}}",
        "angle": "{{py:xvm.damageLog.lastHit.shadow('angle')}}",
        "color": "{{py:xvm.damageLog.lastHit.shadow('color')}}",
        "alpha": "{{py:xvm.damageLog.lastHit.shadow('alpha')}}",
        "blur": "{{py:xvm.damageLog.lastHit.shadow('blur')}}",
        "strength": "{{py:xvm.damageLog.lastHit.shadow('strength')}}",
        "hideObject": "{{py:xvm.damageLog.lastHit.shadow('hideObject')}}",
        "inner": "{{py:xvm.damageLog.lastHit.shadow('inner')}}",
        "knockout": "{{py:xvm.damageLog.lastHit.shadow('knockout')}}",
        "quality": "{{py:xvm.damageLog.lastHit.shadow('quality')}}"
      },
      "textFormat": {
        "align": "center",
        "color": "0xF4EFE8",
        "size": 16
      },
      "format": "{{py:xvm.damageLog.lastHit}}",
      "mouseEvents": {
        "mouseDown": "lastHit_mouseDown",
        "mouseUp": "lastHit_mouseUp",
        "mouseMove": "lastHit_mouseMove"
      }
    },
    
    
    
    
    "fire": {
      "enabled": false,
      "updateEvent": "PY(ON_FIRE)",
      "x": 120,
      "y": 200,
      "width": 200,
      "height": 100,
      "alpha": "{{py:xvm.damageLog.fire}}",
      "layer": "bottom",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "shadow": {"distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 3},
      "textFormat": {"align": "center", "color": "0xF4EFE8", "size": 16},
      "format": "FIRE"
    },
    
    
    
    
    
    "totalEfficiency": {
      "enabled": false,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY)",
      "x": 1,
     // "y": -230, // when used with standard dmg panel
      "y": -160,   //for use with small dmg panel
      "width": "{{py:xvm.isStuns?350|260}}",
      "height": 22,
      "screenHAlign": "left",
      "screenVAlign": "bottom",
      "textFormat": {
        "size": 16
      },
      "format": "<textformat tabstops='[65,130,196,261]' leading='-2' ><img src='xvm://res/icons/Efficiency/damage.png' vspace='-2'> <font color='{{py:xvm.totalDamage>0?{{py:xvm.totalDamageColor}}}}'>{{py:xvm.totalDamage}}</font><tab><img src='xvm://res/icons/Efficiency/assist.png' vspace='-2'> {{py:xvm.totalAssist}}<tab><img src='xvm://res/icons/Efficiency/reflect.png' vspace='-2'> {{py:xvm.totalBlocked}}<tab><img src='xvm://res/icons/Efficiency/discover.png' vspace='-2'> {{py:xvm.detection}}<tab><img src='xvm://res/icons/Efficiency/stun.png' vspace='-2'> {{py:xvm.totalStun}}</textformat>"
    },




    
//repair timer

    "repairTimeItem": {      
    "width": 47,      
    "height": 40,      
    "screenHAlign": "left",      
    "screenVAlign": "bottom",
      "shadow": {"distance": 1, "angle": 90, "alpha": 90, "blur": 5, "strength": 4},
      "textFormat": {"color": "0xF4EFE8", "size": 17, "align": "center", "valign": "center"}
    },
    
    "repairTimeEngine": 
    {
    "$ref": { "path":"def.repairTimeItem"},
      "enabled": true,
      "updateEvent": "PY(ON_ENGINE_UPDATE)",
      "x": 4,
      "y": -147,
      "format": "<b>{{py:repairTimeEngine%0.1f}}</b>"
    },
    
    "repairTimeGun": 
    {
    "$ref": { "path":"def.repairTimeItem"},
      "enabled": true,
      "updateEvent": "PY(ON_GUN_UPDATE)",
      "x": 4,
      "y": -69,
      "format": "<b>{{py:repairTimeGun%0.1f}}</b>"
    },
    
    "repairTimeTurret": 
    {
    "$ref": { "path":"def.repairTimeItem"},
      "enabled": true,
      "updateEvent": "PY(ON_TURRET_UPDATE)",
      "x": 4,
      "y": -30,
      "format": "<b>{{py:repairTimeTurret%0.1f}}</b>"
    },
    
    "repairTimeComplex": 
    {
    "$ref": { "path":"def.repairTimeItem"},
      "enabled": true,
      "updateEvent": "PY(ON_TRACKS_UPDATE)",
      "x": 177,
      "y": -147,
      "format": "<b>{{py:repairTimeComplex%0.1f}}</b>"
    },
    
    "repairTimeSurveying": 
    {
    "$ref": { "path":"def.repairTimeItem"},
      "enabled": true,
      "updateEvent": "PY(ON_SURVEYING_UPDATE)",
      "x": 177,
      "y": -108,
      "format": "<b>{{py:repairTimeSurveying%0.1f}}</b>"
    },
    
    "repairTimeRadio": 
    {
    "$ref": { "path":"def.repairTimeItem"},
      "enabled": true,
      "updateEvent": "PY(ON_RADIO_UPDATE)",
      "x": 177,
      "y": -69,
      "format": "<b>{{py:repairTimeRadio%0.1f}}</b>"
    }
    

    
    
  }
}
