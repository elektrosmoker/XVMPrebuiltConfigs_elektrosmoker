/**
 * Minimap labels.
 * Надписи на миникарте.
 */
{
  // Textfields for units on minimap.
  // Текстовые поля юнитов на миникарте.
  // Definitions.
  // Шаблоны.
  "def": {
  
      // Fields default format
    // Формат поля по умолчанию
    "defaultItem": {
      "enabled": true,
      "x": 0,
      "y": 0,
      "width": 100,
      "height": 40,
      "alpha": 100,
      "align": "left",
      "valign": "top",
      "flags": [ "player", "ally", "squadman", "enemy", "teamKiller", "lost", "spotted", "alive", "dead" ],
      "bgColor": null,
      "borderColor": null,
      "antiAliasType": "normal",
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 50, "blur": 3, "strength": 4 }
    },
    
    
    "RelhaxHPSpottedAlly": {
      "$ref": { "path": "def.defaultItem" },
      "flags": [ "ally", "spotted", "alive" ],      
      "format": "<font face='dynamic' size='{{vtype-key=HT?19|17}}' color='{{.minimap.labelsData.colors.dot.{{sys-color-key}}}}'>{{hp-ratio%.335a|&#x1B3;}}</font>",
      "x": -8,
      "y": -10
      },
    "RelhaxHPSpottedEnemy": {
      "$ref": { "path": "def.defaultItem" },
      "flags": [ "enemy", "spotted", "alive" ],
      "format": "<font face='dynamic' size='{{vtype-key=HT?19|17}}' color='{{.minimap.labelsData.colors.dot.{{sys-color-key}}}}'>{{hp-ratio%.335a|&#xE6;}}</font>",
        "x": -8,
      "y": -10
      },
    "RelhaxHPSpottedSquadman": {
      "$ref": { "path": "def.defaultItem" },
      "flags": [ "squadman", "spotted", "alive" ],
      "format": "<font face='dynamic' size='{{vtype-key=HT?19|17}}' color='{{.minimap.labelsData.colors.dot.{{sys-color-key}}}}'>{{hp-ratio%.335a|&#x1B3;}}</font>",
      "x": -8,
      "y": -10
      },
    "RelhaxHPSpottedTeamKiller": {
      "$ref": { "path": "def.defaultItem" },
      "flags": [ "teamKiller", "spotted", "alive" ],
      "format": "<font face='dynamic' size='{{vtype-key=HT?19|17}}' color='{{.minimap.labelsData.colors.dot.{{sys-color-key}}}}'>{{hp-ratio%.335a|&#x1B3;}}</font>",
      "x": -8,
      "y": -10
      },



    "defaultAlly": {
      "$ref": { "path":"def.defaultItem" },
      "shadow": { "distance": 0, "angle": 45, "color": "0x76CA08", "alpha": 50, "blur": 3, "strength": 4 }
    },
    "defaultSquadman": {
      "$ref": { "path":"def.defaultItem" },
      "shadow": { "distance": 0, "angle": 45, "color": "0xF7833A", "alpha": 50, "blur": 3, "strength": 4 }
    },
    "defaultEnemy": {
      "$ref": { "path":"def.defaultItem" },
      "shadow": { "distance": 0, "angle": 45, "color": "0xF71408", "alpha": 50, "blur": 3, "strength": 4 }
    },
    "defaultTeamKiller": {
      "$ref": { "path":"def.defaultItem" },
      "shadow": { "distance": 0, "angle": 45, "color": "0x08E8F7", "alpha": 50, "blur": 3, "strength": 4 }
    },
    // XMQP event marker.
    // Маркер события XMQP.
    "xmqpEvent": {
      "$ref": { "path":"def.defaultItem" },
      "x": 3,
      "y": -8,
      "flags": [ "ally", "squadman", "teamKiller", "spotted", "alive" ],
      "textFormat": { "font": "xvm", "size": 9, "color": "0xFFBB00" },
      "format": "{{x-spotted?&#x70;&nbsp;}}{{x-overturned?&#x112;}}"
    },
    // Тип техники, видимый
    "vtypeSpotted": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "spotted", "alive" ],
      "textFormat": {"font": "xvm", "size": 13, "align": "center", "valign": "center" },
      "format": "<font color='{{.minimap.labelsData.colors.dot.{{sys-color-key}}}}'>{{.minimap.labelsData.vtype.{{vtype-key}}}}</font>",
      "align": "center",
      "valign": "center"
    },
    // Тип техники, пропавший
    "vtypeLostAlly": {
      "$ref": { "path":"def.defaultAlly" },
      "flags": [ "ally", "lost", "alive" ],
	  "textFormat": {"font": "xvm", "size": 13, "align": "center", "valign": "center" },
      "format": "<font color='#000000'>{{.minimap.labelsData.vtype.{{vtype-key}}}}</font>",
      "align": "center",
      "valign": "center",
      "alpha": 70
    },
    "vtypeLostSquadman": {
      "$ref": { "path":"def.defaultSquadman" },
      "flags": [ "squadman", "lost", "alive" ],
      "textFormat": {"font": "xvm", "size": 13, "align": "center", "valign": "center" },
      "format": "<font color='#000000'>{{.minimap.labelsData.vtype.{{vtype-key}}}}</font>",
      "align": "center",
      "valign": "center",
      "alpha": 70
    },
    "vtypeLostEnemy": {
      "$ref": { "path":"def.defaultEnemy" },
      "flags": [ "enemy", "lost", "alive" ],
      "textFormat": {"font": "xvm", "size": 13, "align": "center", "valign": "center" },
      "format": "<font color='#000000'>{{.minimap.labelsData.vtype.{{vtype-key}}}}</font>",
      "align": "center",
      "valign": "center",
      "alpha": 70
    },
    "vtypeLostTeamKiller": {
      "$ref": { "path":"def.defaultTeamKiller" },
      "flags": [ "teamKiller", "lost", "alive" ],
	  "textFormat": {"font": "xvm", "size": 13, "align": "center", "valign": "center" },
      "format": "<font color='#000000'>{{.minimap.labelsData.vtype.{{vtype-key}}}}</font>",
      "align": "center",
      "valign": "center",
      "alpha": 70
    },
    // Название техники, видимый
    "vehicleSpottedAlly": {
      "$ref": { "path":"def.defaultAlly" },
      "flags": [ "ally", "spotted", "alive" ],
	  "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'>{{vehicle}}</font>",
      "x": 2,
      "y": -1
    },
    "vehicleSpottedSquadman": {
      "$ref": { "path":"def.defaultSquadman" },
      "flags": [ "squadman", "spotted", "alive" ],
	  "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'>{{vehicle}}</font>",
      "x": 2,
      "y": -1
    },
    "vehicleSpottedEnemy": {
      "$ref": { "path":"def.defaultEnemy" },
      "flags": [ "enemy", "spotted", "alive" ],
      "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'>{{vehicle}}</font>",
      "x": 2,
      "y": -1
    },
    "vehicleSpottedTeamKiller": {
      "$ref": { "path":"def.defaultTeamKiller" },
      "flags": [ "teamKiller", "spotted", "alive" ],
	  "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'>{{vehicle}}</font>",
      "x": 2,
      "y": -1
    },
    // Ник игрока, видимый
    "nickSpottedAlly": {
      "$ref": { "path":"def.defaultAlly" },
      "flags": [ "ally", "spotted", "alive" ],
	  "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'>{{name%.5s}}</font>",
      "x": 2,
      "y": -1
    },
    "nickSpottedSquadman": {
      "$ref": { "path":"def.defaultSquadman" },
      "flags": [ "squadman", "spotted", "alive" ],
	  "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'>{{name%.5s}}</font>",
      "x": 2,
      "y": -1
    },
    "nickSpottedEnemy": {
      "$ref": { "path":"def.defaultEnemy" },
      "flags": [ "enemy", "spotted", "alive" ],
	  "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'>{{name%.5s}}</font>",
      "x": 2,
      "y": -1
    },
    "nickSpottedTeamKiller": {
      "$ref": { "path":"def.defaultTeamKiller" },
      "flags": [ "teamKiller", "spotted", "alive" ],
	  "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'>{{name%.5s}}</font>",
      "x": 2,
      "y": -1
    },
    // Название техники, пропавший
    "vehicleLostAlly": {
      "$ref": { "path":"def.defaultAlly" },
      "flags": [ "ally", "lost", "alive" ],
	  "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'><i>{{vehicle-short}}</i></font>",
      "alpha": 70,
      "x": 2,
      "y": -1
    },
    "vehicleLostSquadman": {
      "$ref": { "path":"def.defaultSquadman" },
      "flags": [ "squadman", "lost", "alive" ],
	  "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'><i>{{vehicle-short}}</i></font>",
      "alpha": 70,
      "x": 2,
      "y": -1
    },
    "vehicleLostEnemy": {
      "$ref": { "path":"def.defaultEnemy" },
      "flags": [ "enemy", "lost", "alive" ],
	  "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'><i>{{vehicle-short}}</i></font>",
      "alpha": 70,
      "x": 2,
      "y": -1
    },
    "vehicleLostTeamKiller": {
      "$ref": { "path":"def.defaultTeamKiller" },
      "flags": [ "teamKiller", "lost", "alive" ],
	  "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'><i>{{vehicle-short}}</i></font>",
      "alpha": 70,
      "x": 2,
      "y": -1
    },
    // Ник игрока, пропавший
    "nickLostAlly": {
      "$ref": { "path":"def.defaultAlly" },
      "flags": [ "ally", "lost", "alive" ],
	  "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'><i>{{name%.5s}}</i></font>",
      "alpha": 70,
      "x": 2,
      "y": -1
    },
    "nickLostSquadman": {
      "$ref": { "path":"def.defaultSquadman" },
      "flags": [ "squadman", "lost", "alive" ],
	  "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'><i>{{name%.5s}}</i></font>",
      "alpha": 70,
      "x": 2,
      "y": -1
    },
    "nickLostEnemy": {
      "$ref": { "path":"def.defaultEnemy" },
      "flags": [ "enemy", "lost", "alive" ],
	  "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'><i>{{name%.5s}}</i></font>",
      "alpha": 70,
      "x": 2,
      "y": -1
    },
    "nickLostTeamKiller": {
      "$ref": { "path":"def.defaultTeamKiller" },
      "flags": [ "teamKiller", "lost", "alive" ],
	  "textFormat": {"font": "$FieldFont", "size": 8, "align": "left", "valign": "top" },
      "format": "<font color='#000000'><i>{{name%.5s}}</i></font>",
      "alpha": 70,
      "x": 2,
      "y": -1
    }
  }
}

