﻿{
"assistLog": {
      "enabled": true,
      "updateEvent": "PY(ON_ASSIST_LOG)",
      "x": "{{py:xvm.assistLog_x}}",
      "y": "{{py:xvm.assistLog_y}}",
      "width": 300,
      "height": 500,
      "layer": "bottom",
      "screenHAlign": "right",      
      "textFormat": { "color": "0xF4EFE8", "size": 15},
      "format": "<u><b><font face='visitor TT1 BRK' size='16' color='#9999ff'>AssistLog:</font></b></u>\n{{py:xvm.assistLog}}",
      "﻿﻿mouseEvents": {
        "mouseDown": "assis﻿tLog_mouseDown",
        "mouseUp": "assistLog_mouseUp",
        "mouseMove": "assistLog_mouseMove"
        }
    },
    "assistLog_Background": {
      "enabled": true,
      "$ref": { "path":"assistLog" },
      "format": "{{py:xvm.assistLog_Background}}"
      }
      
}      