﻿{
  "hitLog": {
    // false - disable.
    "enabled": true,
    // true - show damage by oneself.
    "showSelfDamage": false,
    // true - show damage by allies.
    "showAllyDamage": false,
    // Log of applied damage.
    "log": {
      //true - allow to move log in battle and disallow macros for "x" and "y" settings.
      //false - disallow to move log in battle and allow macros for "x" and "y" settings.
      "moveInBattle": false,
      "x": 70,
      "y": 70,
      // true - allow scrolling of the contents of the log.
      "scrollLog": true,
      // Group hits by players name.
      "groupHitsByPlayer": false,
      // Number of lines. It is possible to use the macro {{battle type-key}}.
      "lines": 15,
      // Insert order: false - insert new values to begin, true - add to end.
      "addToEnd": true,
      // Type of damage (macro {{dmg-kind}}).
      "dmg-kind": {
        "shot":            "<font face='$FieldFont'>{{type-shell}}</font>",          // shot 
        "fire":            "<font size='6'> </font><font face='xvm'>&#x51;</font>",  // fire
        "ramming":         "<font size='6'> </font><font face='xvm'>&#x52;</font>",  // ramming 
        "world_collision": "<font size='6'> </font><font face='xvm'>&#x53;</font>",  // world collision 
        "drowning":        "<font size='6'> </font><font face='xvm'>&#x119;</font>", // drowning
        "overturn":        "<font size='6'> </font><font face='xvm'>&#x112;</font>", // overturn 
        "death_zone":      "DZ",                                                     // death zone 
        "gas_attack":      "GA",                                                     // gas attack 
        "art_attack":      "<font face='xvm'>&#x110;</font>",                        // art attack
        "air_strike":      "<font face='xvm'>&#x111;</font>"                         // air strike
      },
      // Color by damage kind (macro {{c:dmg-kind}}).
      "c:dmg-kind": {
        "shot": "#FFAA55",            // shot 
        "fire": "#FF6655",            // fire 
        "ramming": "#998855",         // ramming 
        "world_collision": "#228855", // world collision 
        "drowning": "#CCCCCC",        // drowning 
        "overturn": "#CCCCCC",        // overturn
        "death_zone": "#CCCCCC",      // death zone
        "gas_attack": "#CCCCCC",      // gas attack
        "art_attack": "#CCCCCC",      // art attack
        "air_strike": "#CCCCCC"       // air strike       
      },
      // Type of damage (macro {{dmg-kind-player}}).  
      "dmg-kind-player": {
        "shot":            "<font size='6'> </font><font face='xvm'>&#x50;</font>",  // shot
        "fire":            "<font size='6'> </font><font face='xvm'>&#x51;</font>",  // fire 
        "ramming":         "<font size='6'> </font><font face='xvm'>&#x52;</font>",  // ramming
        "world_collision": "<font size='6'> </font><font face='xvm'>&#x53;</font>",  // world collision 
        "drowning":        "<font size='6'> </font><font face='xvm'>&#x119;</font>", // drowning 
        "overturn":        "<font size='6'> </font><font face='xvm'>&#x112;</font>", // overturn
        "death_zone":      "DZ",                                                     // death zone
        "gas_attack":      "GA",                                                     // gas attack
        "art_attack":      "<font face='xvm'>&#x110;</font>",                        // art attack
        "air_strike":      "<font face='xvm'>&#x111;</font>"                         // air strike
      },  
      // Shell kind (macro {{type-shell}}).
      "type-shell": {
        "armor_piercing":    "<font color='{{c:costShell}}' face='$FieldFont'>{{l10n:armor_piercing}}</font>",    // armor piercing
        "high_explosive":    "<font color='{{c:costShell}}' face='$FieldFont'>{{l10n:high_explosive}}</font>",    // high explosive 
        "armor_piercing_cr": "<font color='{{c:costShell}}' face='$FieldFont'>{{l10n:armor_piercing_cr}}</font>", // armor piercing composite rigid 
        "armor_piercing_he": "<font color='{{c:costShell}}' face='$FieldFont'>{{l10n:armor_piercing_he}}</font>", // armor piercing high explosive
        "hollow_charge":     "<font color='{{c:costShell}}' face='$FieldFont'>{{l10n:hollow_charge}}</font>",     // high explosive anti-tank 
        "not_shell": "НД"                                                                                         // another source of damage 
      },
      // Color by shell kind (macro {{c:type-shell}}).
      "c:type-shell": {
        "armor_piercing": "#CCCCCC",    // armor piercing
        "high_explosive": "#CCCCCC",    // high explosive
        "armor_piercing_cr": "#CCCCCC", // armor piercing composite rigid
        "armor_piercing_he": "#CCCCCC", // armor piercing high explosive
        "hollow_charge": "#CCCCCC",     // high explosive anti-tank
        "not_shell": "#CCCCCC"          // another source of damage 
      },
      // Vehicle type (macro {{vtype}}).
      "vtype": {
        "HT": "<font face='xvm'>&#x3F;</font>",          // heavy tank
        "MT": "<font face='xvm'>&#x3B;</font>",          // medium tank
        "LT": "<font face='xvm'>&#x3A;</font>",          // light tank 
        "TD": "<font face='xvm'>&#x2E;</font>",          // tank destroyer
        "SPG": "<font face='xvm'>&#x2D;</font>",         // SPG 
        "not_vehicle": "<font face='xvm'>&#x105;</font>" // another source of damage
      },
      // Color by vehicle type (macro {{c:vtype}}).
      "c:vtype": {
        "HT": "#c0c0c0",         // heavy tank 
        "MT": "#ff9900",         // medium tank 
        "LT": "#006600",         // light tank
        "TD": "#00ccff",         // tank destroyer
        "SPG": "#cc0000",        // SPG
        "not_vehicle": "#CCCCCC" // another source of damage
      },
      // Part of vehicle (macro {{comp-name}}).
      "comp-name": {
        "turret": "{{l10n:turret}}",   // turret 
        "hull": "{{l10n:hull}}",       // body
        "chassis": "{{l10n:chassis}}", // suspension
        "wheel": "{{l10n:wheel}}",     // wheel
        "gun": "{{l10n:gun}}",         // gun
        "unknown": ""                  // unknown 
      },
      // Team attachment of the targets (macro {{team-dmg}}).
      "team-dmg": {
        "ally-dmg": "",  // ally
        "enemy-dmg": "", // enemy
        "player": "",    // self damage
        "unknown": ""    // unknown
      },
      // Color by team attachment of the targets (macro {{c:team-dmg}}).
      "c:team-dmg": {
        "ally-dmg": "#00EAFF",  // ally
        "enemy-dmg": "#CCCCCC", // enemy
        "player": "#228855",    // self damage
        "unknown": "#CCCCCC"    // unknown 
      },
      // Shell currency (macro {{costShell}}).
      "costShell": {
        "gold-shell": "",   // gold 
        "silver-shell": "", // credits 
        "unknown": ""       // unknown 
      },
      // Color by shell currency (macro {{c:costShell}}).
      "c:costShell": {
        "gold-shell":   "#FFCC66", // gold 
        "silver-shell": "#CCCCCC", // credits 
        "unknown":      "#FFFFFF"  // unknown 
      },
         


    // Substitution for {{hitlog.dead}} macro when tank is dead.
    "deadMarker": "&#x77;",
    "blowupMarker": "&#x78;",
    // Default header format (before first hit). Only localization macros are allowed, see macros.txt.
    "defaultHeader":  "<font face='$FieldFont' size='15' color='#CCCCCC'>{{l10n:Hits}}: <font color='#FFFFFF'><b>\u00D70</b></font></font>",
    // Hits header format, including last hit (macros allowed, see macros.txt).
    "formatHeader":  "<font face='$FieldFont' size='15' color='#CCCCCC'>{{l10n:Hits}}: <font color='#FFFFFF'><b>\u00D7{{hitlog.n}}</b></font>    {{l10n:Total}}: <font color='#FFFFFF'><b>{{hitlog.dmg-total}}</b></font>    {{l10n:Last}}: <font color='{{c:dmg-kind}}'><b>{{dmg}}</b></font></font>",
      // List of hits format (macros allowed, see macros.txt).
      
      
// "formatHistory": "<textformat leading='-4' tabstops='[20,50,90,190]'><font size='12'>\u00D7{{n-player}}:</font><tab><font color='{{c:dmg-kind}}'>{{dmg}}</font><tab>| {{dmg-player}}<tab>|<font color='{{c:vtype}}'>{{vehicle}}</font> <font face='xvm' size='15' color='#FF0000'>{{alive? |{{blownup?&#x7C;|<font size='19'>&#x77;</font>}}}}</font><tab>|{{name%.15s~..}} <font alpha='#A0'>{{clan}}</font></textformat>"


    "formatHistory": "<textformat tabstops='[30,70,120,210]'><font face='$FieldFont' size='15' color='#CCCCCC'>\u00D7{{n-player}}:<tab><font color='{{c:dmg-kind}}'>{{dmg}}</font><tab><font color='#FFFFFF'>{{dmg-player}}</font><tab><font color='{{c:vtype}}'><b>{{vehicle}}</b></font><tab><b><font alpha='#A0'>{{clan}}</font> {{name}}</b></font></textformat>"
    },
    
    
    
    
    // Log of applied damage (alternative mode).
    "logAlt": {
      "$ref": { "path":"hitLog.log" },
      "formatHistory": ""
      //"formatHistory": "<textformat leading='-4' tabstops='[20,50,90,190]'><font size='12'>\u00D7{{n-player}}:</font><tab><font color='{{c:dmg-kind}}'>{{dmg-ratio~%}}</font><tab>| {{dmg-ratio-player~%}}<tab>|<font color='{{c:vtype}}'>{{vehicle}}</font> <font face='xvm' size='15' color='#FF0000'>{{alive? |{{blownup?&#x7C;|<font size='19'>&#x77;</font>}}}}</font><tab>|{{name%.15s~..}} <font alpha='#A0'>{{clan}}</font></textformat>"
    },
    // Background of the log of applied damage.
    "logBackground": {
      "$ref": { "path":"hitLog.log" },
      "formatHistory": "<img height='17' width='310' src='xvm://res/icons/damageLog/{{alive?no_dmg|dmg}}.png'>"
    },
    // Background of the log of applied damage (alternative mode).
    "logAltBackground": {
      "$ref": { "path":"hitLog.log" },
      "formatHistory": ""
      //"<img height='20' width='310' src='xvm://res/icons/damageLog/{{alive?no_dmg|dmg}}.png'>"
    }
  }
}
