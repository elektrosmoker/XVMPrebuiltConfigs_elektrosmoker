﻿{
  "boosters": {
    "enabled": true,
    "layer": "top",
    "type": "extrafield",
    "formats": [
      { "updateEvent": "ON_EVERY_SECOND",
        "x": 340,
        "y": 0,
        "width": 400,
        "height": 80,
        "alpha": 200,
        "textFormat": { "color": "0xA8A888", "size": 12},
        "format": "<textformat tabstops='[50]'>{{py:bst.leftTime(1)}}<tab>{{py:bst.name(1)}}</textformat>\n<textformat tabstops='[50]'>{{py:bst.leftTime(2)}}<tab>{{py:bst.name(2)}}</textformat>\n<textformat tabstops='[50]'>{{py:bst.leftTime(3)}}<tab>{{py:bst.name(3)}}</textformat>"
      }
    ]
  },
  
      
  "boostersBG": {
    "enabled": true,
    "layer": "top",
    "type": "extrafield",
    "formats": [
      { 
        "x": 330,
        "y": -1,
        "width": 317,
        "height": 80,
        "alpha": 50,
        "format": "<img src='xvm://res/icons/boostersBG.png'>"
      }
    ]	  
  }      
      
      
      
}
