{
  "def": {
    "InfoPanel": {
      "enabled": true,
      "hotKeyCode": 72, "onHold": "false", "visibleOnHotKey": false,
      
      "updateEvent": "PY(ON_INFO_PANEL)",
      "x": 370, "y": 350,
      
      "width": 289, "height": 125,
      "align": "center", "valign": "center", "alpha": 100, "screenHAlign": "center", "screenVAlign": "center",
      "shadow": { "enabled": true, "distance": 1, "angle": 90, "color": "0x000000", "alpha": 100, "blur": 2, "strength": 2 },
      "textFormat": { "font": "Arial", "size": 13, "color": "0xFFFFFF", "align": "left", "leading": -9 },
      "format": "{{py:infoPanel.format}}"
    },
    "InfoPanelbg": {
      "enabled": true,
      "hotKeyCode": 72, "onHold": "false", "visibleOnHotKey": false,
      
      "updateEvent": "PY(ON_INFO_PANEL)",
      "layer": "bottom",
      "x": 370, "y": 350,
      
      "width": 288, "height": 124,
      "align": "center", "valign": "center", "alpha": "{{py:infoPanel.format?100|0}}", "screenHAlign": "center", "screenVAlign": "center",
      "format": "<img src='xvm://res/icons/InfoPanel/InfoPanelbg.png' width='287' height='123'>"
    }
  }
}