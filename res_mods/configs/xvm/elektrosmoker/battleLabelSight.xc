{
  "def": {
///////// reticle //////////////////////////////////////
    "cameraMode": {
      "enabled": true,
      "updateEvent": "PY(ON_AIM_MODE), PY(ON_MY_HP)",
   "x": "{{py:aim.mode=arc?-2|{{py:aim.mode=sn?15}}}}",
   "y": "{{py:aim.mode=arc?-73|{{py:aim.mode=sn?80}}}}",
      "width": 536,
      "height": 283,
      "screenHAlign": "center",
      "screenVAlign": "center",
      "alpha" : "{{my-alive?100|0}}",
      "shadow": { 
                "distance": 1, 
                "angle": 90, 
                "alpha": 70, 
                "blur": 5, 
                "strength": 3 
                },
      "format": "<img src='cfg://icons_sight/{{py:aim.mode}}Sight1.png'>"
    },
    
    
     //////// central sights marker /////////////////////////////////////////////////////////	
    "element": {
      "enabled": true, 
      "layer": "bottom",
      "updateEvent": "PY(ON_AIM_MODE), PY(ON_PLAYER_HEALTH), PY(ON_CALC_ARMOR)",
      // "scaleX": -1,
      "x": "{{py:aim.mode=arc?-9|{{py:aim.mode=sn?-9}}}}",
      "y": "{{py:aim.mode=arc?-63|{{py:aim.mode=sn?19}}}}",
      "rotation": -45,
       //"borderColor": "0x000000",
      "width": 40,
      "height": 40,
      "screenHAlign": "center",
      "screenVAlign": "center",
	  "alpha" : "{{py:aim.mode(45, 45, 0)}}",
      "shadow": { "distance": 1, "angle": 90, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0xffffff" },
      "format": "<font face='DS-Digital' color='{{py:sight.c_piercingChance}}' size='40'>+</font>"
    },	
    
    
//////// info sight arcade mode ///////////////////////////////////////  
    "name": {
      "enabled": true,
      "updateEvent": "PY(ON_AIM_MODE), PY(ON_TARGET)",
      // "scaleX": -1,
      "x": "{{py:aim.mode(170, 290, 275)}}",
      "y": "{{py:aim.mode(-210, -140, -45)}}",
      "rotation": 0,
       //"borderColor": "0x000000",
      "width": 250,
      "height": 35,
      "screenHAlign": "center",
      "screenVAlign": "center",
      "alpha" : "{{py:sight.nameTarget?{{py:aim.mode=arc?100|100}}|100}}",
      "shadow": { "distance": 1, "angle": 90, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "left", "color": "0xd4ffaa" },
      "format": "<font face='' size='14'>{{py:sight.nameTarget}}</font>"
    },
    "infoTank": {
      "enabled": true,
      "updateEvent": "PY(ON_AIM_MODE), PY(ON_TARGET)",
      // "scaleX": -1,
      "x": "{{py:aim.mode(190, 310, 275)}}",
      "y": "{{py:aim.mode(190, -120, -75)}}",
      "rotation": 0,
       //"borderColor": "0x000000",
      "width": 250,
      "height": 35,
      "screenHAlign": "center",
      "screenVAlign": "center",
      "alpha" : "{{py:sight.nameTarget?{{py:aim.mode=arc?100|100}}|100}}",
      "shadow": { "distance": 1, "angle": 90, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "left", "color": "0xd4ffaa" },
      "format": "<font face='' size='16'>{{py:sight.vehicleTarget}}</font> / <font face='' size='12'>{{py:sight.vtypeTarget}}</font>"
    },
	 "infoTTX": {
      "enabled": true,
      "updateEvent": "PY(ON_AIM_MODE), PY(ON_TARGET)",
      // "scaleX": -1,
      "x": "{{py:aim.mode(220, 160, 275)}}",
      "y": "{{py:aim.mode(-150, -30, 15)}}",
      "rotation": 0,
       //"borderColor": "0x000000",
      "width": 250,
      "height": 35,
      "screenHAlign": "center",
      "screenVAlign": "center",
      "alpha" : "{{py:sight.nameTarget?{{py:aim.mode=arc?100|100}}|100}}",
      "shadow": { "distance": 1, "angle": 90, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "left", "color": "0xd4ffaa" },
      "format": "reloads ~<font face='' size='12'>{{py:sight.reloadTarget%3.1f}}sec</font>"
    },
      "visionTTX": {
      "enabled": true,
      "updateEvent": "PY(ON_AIM_MODE), PY(ON_TARGET)",
      // "scaleX": -1,
      "x": "{{py:aim.mode(130, 235, 200)}}",
      "y": "{{py:aim.mode(-170, -95, -15)}}",
      "rotation": 0,
       //"borderColor": "0x000000",
      "width": 100,
      "height": 35,
      "screenHAlign": "center",
      "screenVAlign": "center",
      "alpha" : "{{py:sight.nameTarget?{{py:aim.mode=arc?100|100}}|100}}",
      "shadow": { "distance": 1, "angle": 90, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "left", "color": "0xd4ffaa" },
      "format": "Vision ~<font face='' size='12'>{{py:sight.visionRadiusTarget%3.f}}m</font>"
    },


/////////////////////////// Arcade Sight //////////////////////////////////////////////////////////////////////	
	"shells": {
      "enabled": true,
      "updateEvent": "PY(ON_AMMO_CHANGED), PY(ON_AIM_MODE)",
      // "scaleX": -1,
//      "x": "{{py:aim.mode=arc?-5|{{py:aim.mode=sn?-5|{{py:aim.mode=str?-5}}}}}}",
//      "y": "{{py:aim.mode=arc?80|{{py:aim.mode=sn?245|{{py:aim.mode=str?270}}}}}}",
      "x": "{{py:aim.mode(-5, -5, -5)}}",
      "y": "{{py:aim.mode(100, 245, 270)}}",
      "rotation": 0,
       //"borderColor": "0x000000",
      "width": 200,
      "height": 40,
      "screenHAlign": "center",
      "screenVAlign": "center",
	  "alpha" : "{{py:aim.mode(80, 80, 80)}}",
      "shadow": { "distance": 1, "angle": 315, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0xd4ffaa" },
      "format": "Shells: <font face='DS-Digital' size='26'>{{py:sight.quantityInClipShells~/}}</font><font face='DS-Digital' size='20'>{{py:sight.quantityInClipShellsMax}}</font>    <font face='DS-Digital' size='20'>{{py:sight.quantityShells}}</font>"
    },
	"shells_types": {
      "enabled": true,
      "updateEvent": "PY(ON_PLAYER_HEALTH), PY(ON_TARGET), PY(ON_AMMO_CHANGED), PY(ON_AIM_MODE)",
      // "scaleX": -1,
      "x": "{{py:aim.mode(110, 160, -120)}}",
      "y": "{{py:aim.mode(45, 195, 140)}}",
	  "rotation": 0,
       //"borderColor": "0x000000",
      "width": 200,
      "height": 40,
      "screenHAlign": "center",
      "screenVAlign": "center",
	  "alpha" : "{{py:aim.mode(80, 80, 80)}}",
      "shadow": { "distance": 1, "angle": 315, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0xd4ffaa" },
      "format": "Type: <font face='' size='18'>{{py:sight.shellType}}</font>"
    },	
	"shells_speed": {
      "enabled": true,
      "updateEvent": "PY(ON_PLAYER_HEALTH), PY(ON_TARGET), PY(ON_AMMO_CHANGED), PY(ON_AIM_MODE)",
      // "scaleX": -1,
      "x": "{{py:aim.mode(-5, -5, -5)}}",
      "y": "{{py:aim.mode(110, 275, 300)}}",
      "rotation": 0,
       //"borderColor": "0x000000",
      "width": 200,
      "height": 40,
      "screenHAlign": "center",
      "screenVAlign": "center",
	  "alpha" : "{{py:aim.mode(0, 0, 80)}}",
      "shadow": { "distance": 1, "angle": 315, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0xd4ffaa" },
      "format": "Shell speed: <font face='DS-Digital' size='24'>{{py:sight.shellSpeed%3.0f}}</font>m/s"
    },
    "reloadBar_line": {
      "enabled": true,
      "updateEvent": "PY(ON_RELOAD), PY(ON_AIM_MODE)",
      "x": "{{py:aim.mode=arc?-120|{{py:aim.mode=sn?265}}}}",
      "y": "{{py:aim.mode=arc?5|{{py:aim.mode=sn?-100}}}}",	  
      "rotation": 0,
       //"borderColor": "0x000000",
      "width": 300,
      "height": 140,
      "screenHAlign": "center",
      "screenVAlign": "center",
	  "alpha" : "{{py:aim.mode(60, 60, 0)}}",
      "shadow": { "distance": 1, "angle": 90, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0x{{py:dynamic_colorGRB( 0xd4ffaa, 0xff5d00,{{py:sight.reloadPercent}})}}" },	  
      "format": "<font face='dynamic' size='130'>{{py:sight.reloadPercent%.436a}}</font>"
    },
    "reload_percent": {
      "enabled": true,
      "updateEvent": "PY(ON_RELOAD), PY(ON_AIM_MODE)",
      "x": "{{py:aim.mode=arc?-120|{{py:aim.mode=sn?268}}}}",
      "y": "{{py:aim.mode=arc?60|{{py:aim.mode=sn?15}}}}",	  
      "rotation": 0,
       //"borderColor": "0x000000",
      "width": 300,
      "height": 140,
      "screenHAlign": "center",
      "screenVAlign": "center",
	  "alpha" : "{{py:aim.mode(60, 60, 0)}}",
      "shadow": { "distance": 1, "angle": 90, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0x{{py:dynamic_colorGRB( 0xd4ffaa, 0xff5d00,{{py:sight.reloadPercent}})}}" },	  
      "format": "Reloading <font face='DS-Digital' size='20'>{{py:sight.reloadPercent%3.f}}%</font>"
    },
    "distances": {
      "enabled": true,
      "updateEvent": "PY(ON_AIM_MODE), PY(ON_MARKER_POSITION)",
      "x": "{{py:aim.mode(-10, -10, -10)}}",
      "y": "{{py:aim.mode(-235, -235, -135)}}",
      "rotation": 0,
      "width": 100,
      "height": 45,
       //"borderColor": "0x000000",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "alpha" : "{{py:aim.mode(80, 80, 0)}}",
      "shadow": { "distance": 1, "angle": 90, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0xd4ffaa" },
      "format": "Distance: <font face='DS-Digital' size='24'>{{py:sight.distance%3.f}}</font> m"
    },
    "timeReloadClip": {
      "enabled": true,
      "updateEvent": "PY(ON_RELOAD), PY(ON_AIM_MODE)",
      "x": "{{py:aim.mode(-147, -225, -155)}}",
      "y": "{{py:aim.mode(-165, -88, -75)}}",
      "rotation": 0,
      "width": 100,
      "height": 45,
       //"borderColor": "0x000000",
      "screenHAlign": "center",
      "screenVAlign": "center",
	  "alpha" : "{{py:aim.mode(80, 80, 80)}}",
      "shadow": { "distance": 1, "angle": 90, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0xd4ffaa" },
      "format": "<font face='DS-Digital' size='24'>{{py:sight.reloadTimeClip%3.2f}}</font>"
    },
    "baseTimeReload": {
      "enabled": true,
      "updateEvent": "PY(ON_RELOAD), PY(ON_AIM_MODE)",
      "x": "{{py:aim.mode(-165, -235, -170)}}",
      "y": "{{py:aim.mode(-100, -25, 1)}}",
      "rotation": 0,
      "width": 100,
      "height": 45,
       //"borderColor": "0x000000",
      "screenHAlign": "center",
      "screenVAlign": "center",
	  "alpha" : "{{py:aim.mode(80, 80, 80)}}",
      "shadow": { "distance": 1, "angle": 90, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0xd4ffaa" },
      "format": "<font face='DS-Digital' size='24'>{{py:sight.reloadTime%3.2f}}</font>"
//      "format": "<font face='DS-Digital' size='24'>{{py:sight.reloadTime?{{py:sight.reloadTimeClip>0?}}{{py:sight.reloadTime%3.2f}}}}</font>"
    },
	"timeReload": {
      "enabled": true,
      "updateEvent": "PY(ON_RELOAD), PY(ON_AIM_MODE)",
      "x": "{{py:aim.mode(-158, -230, -155)}}",
      "y": "{{py:aim.mode(-30, 48, 80)}}",
      "rotation": 0,
      "width": 100,
      "height": 45,
       //"borderColor": "0x000000",
      "screenHAlign": "center",
      "screenVAlign": "center",
 	  "alpha" : "{{py:aim.mode(80, 80, 80)}}",
      "shadow": { "distance": 1, "angle": 90, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0x{{py:dynamic_colorGRB( 0xd4ffaa, 0xff5d00,{{py:sight.reloadPercent}})}}" },	 	  
      "format": "<font face='DS-Digital' size='24'>{{py:sight.leftTime=0?{{py:sight.quantityInClipShells>0?{{py:sight.reloadTimeClip%3.2f}}|{{py:sight.reloadTime%3.2f}}}}|{{py:sight.leftTime%3.2f}}}}</font>"
    },
/////////////////////////////////  arty sight ///////////////////////////////////////////////////////////////////////////////////	
  	  "piercingActual_arty": {
      "enabled": true,
      "updateEvent": "PY(ON_AIM_MODE), PY(ON_MARKER_POSITION)",
      "x": -25,
      "y": 300,
      "rotation": 0,
      "width": 150,
      "height": 150,
       //"borderColor": "0x000000",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "alpha" : "{{py:aim.mode=str?80|0}}",
      "shadow": { "distance": 1, "angle": 90, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0xd4ffaa" },
      "format": "Piercing ~<font face='DS-Digital' size='24'>{{py:sight.piercingActual=0?{{py:sight.piercingActual%3.f}}}}</font>mm / "
    },	 
	  "timeAIM_arty": {
      "enabled": true,
      "updateEvent": "PY(ON_AIM_MODE), PY(ON_MARKER_POSITION), PY(ON_RELOAD)",
      "x": -15,
      "y": -190,
      "rotation": 0,
      "width": 150,
      "height": 150,
       //"borderColor": "0x000000",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "alpha" : "{{py:aim.mode=str?80|0}}",
      "shadow": { "distance": 1, "angle": 90, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0xd4ffaa" },
      "format": "Aim Time ~ <font face='DS-Digital' size='24'>{{py:sight.timeAIM%3.0f}}</font>"
    },	
	  "distances_arty": {
      "enabled": true,
      "updateEvent": "PY(ON_AIM_MODE), PY(ON_MARKER_POSITION)",
      "x": -10,
      "y": -135,
      "rotation": 0,
      "width": 150,
      "height": 150,
       //"borderColor": "0x000000",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "alpha" : "{{py:aim.mode=str?80|0}}",
      "shadow": { "distance": 1, "angle": 90, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0xd4ffaa" },
      "format": "Distance ~ <font face='DS-Digital' size='24'>{{py:sight.distance%3.0f}}</font>m"
    },
	  "timeFlight_arty": {
      "enabled": true,
      "updateEvent": "PY(ON_PLAYER_HEALTH), PY(ON_AIM_MODE), PY(ON_MARKER_POSITION)",
      // "scaleX": -1,
      "x": -5,
      "y": -160,
      "rotation": 0,
       //"borderColor": "0x000000",
      "width": 150,
      "height": 150,
      "screenHAlign": "center",
      "screenVAlign": "center",
      "alpha" : "{{py:aim.mode=str?80|0}}",
      "shadow": { "distance": 1, "angle": 315, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0xd4ffaa" },
      "format": "Flight Time ~ <font face='DS-Digital' size='22'>{{py:sight.timeFlight%3.2f}}</font>"
    },
    "reloadBar_arty": {
      "enabled": true,
      "updateEvent": "PY(ON_RELOAD), PY(ON_AIM_MODE)",
      "x": 0,
      "y": 5,
      "rotation": 0,
       //"borderColor": "0x000000",
      "width": 600,
      "height": 140,
      "screenHAlign": "center",
      "screenVAlign": "center",
	  "alpha" : "{{py:aim.mode=str?35|0}}",
      "shadow": { "distance": 1, "angle": 90, "alpha": 70, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0x{{py:dynamic_colorGRB( 0xd4ffaa, 0xff5d00,{{py:sight.reloadPercent}})}}" },
      "format": "<font face='dynamic2' size='130'>{{py:sight.reloadPercent%.335a}}</font>"
    },


////////////////////////////// gun constraints ///////////////////////////////

"angleAimingLeft": {
      "enabled": true,
      "updateEvent": "PY(ON_ANGLES_AIMING), PY(ON_AIM_MODE)",
      "x": "{{py:anglesAiming.left}}",
      "y": "{{py:aim.y}}",
      "width": 19,
      "height": 66,
      "screenHAlign": "center",
      "screenVAlign": "center",
      "format": "{{py:anglesAiming.left>-5?<img src='xvm://res/Angles/Left_limit.png'>|<img src='xvm://res/Angles/Left.png'>}}"
    }, 
    "angleAimingRight": {
      "enabled": true,
      "updateEvent": "PY(ON_ANGLES_AIMING), PY(ON_AIM_MODE)",
      "x": "{{py:anglesAiming.right}}",
      "y": "{{py:aim.y}}",
      "width": 19,
      "height": 66,
      "screenHAlign": "center",
      "screenVAlign": "center",
      "format": "{{py:anglesAiming.right<5?<img src='xvm://res/Angles/Right_limit.png'>|<img src='xvm://res/Angles/Right.png'>}}"
    }, 
    "angleAimingBottom": {
      "enabled": true,
      "updateEvent": "PY(ON_ANGLES_AIMING)",
      "x": 0,
      "y": "{{py:anglesAiming.bottom(12)}}",
      "width": 194,
      "height": 29,
      "alpha" : "{{py:anglesAiming.bottom(12)<350?{{py:math.sub(350, {{py:anglesAiming.bottom(12)}})}}|0}}",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "format": "<img src='xvm://res/Angles/Bottom.png'>"
    }, 
    "angleAimingTop": {
      "enabled": true,
      "updateEvent": "PY(ON_ANGLES_AIMING)",
      "x": 0,
      "y": "{{py:anglesAiming.top(-12)}}",
      "width": 194,
      "height": 29,
      "alpha" : "{{py:anglesAiming.top(-12)>-350?{{py:math.sum({{py:anglesAiming.top(-12)}}, 350)}}|0}}",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "format": "<img src='xvm://res/Angles/Top.png'>"
    }


		
  }
}