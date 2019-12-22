/**
 * Parameters of the Battle Statistics form.
 * Параметры окна статистики по клавише Tab.
 */
{
  "templates": {
    // Clan icon definition.
    // Шаблон иконки клана.
    "clanIcon": {
      "enabled": true,
      "x": -23 , "y": 0, "width": 24, "height": 24, "align": "center", "alpha": 75, "bindToIcon": true,
      "src": "{{clanicon}}"
    }
  },
  "statisticForm": {
    // true - disable Platoon/rank icons.
    // true - убрать отображение иконки взвода/ранга.
    "removeSquadIcon": false,
    // true - disable rank badge icons
    // true - убрать отображение иконки бейджа ранга
    "removeRankBadgeIcon": false,
    // Opacity percentage of vehicle icon. 0 - transparent ... 100 - opaque.
    // Прозрачность в процентах иконки танка. 0 - прозрачные, 100 - не прозрачные.
    "vehicleIconAlpha": 100,
    // true - disable vehicle level indicator.
    // true - убрать отображение уровня танка.
    "removeVehicleLevel": true,
    // true - disable vehicle type icon. This space will be used for formatted vehicle field.
    // true - убрать отображение типа танка. Пустое место будет использовано под форматируемое поле.
    "removeVehicleTypeIcon": true,
    // true - disable player status icon.
    // true - убрать отображение иконки статуса игрока.
    "removePlayerStatusIcon": false,
    // Show border for name field (useful for config tuning)
    // Показывать рамку для поля имени игрока (полезно для настройки конфига)
    "nameFieldShowBorder": false,
    // Show border for vehicle field (useful for config tuning)
    // Показывать рамку для поля имени танка (полезно для настройки конфига)
    "vehicleFieldShowBorder": false,
    // Show border for frags field (useful for config tuning)
    // Показывать рамку для поля фрагов (полезно для настройки конфига)
    "fragsFieldShowBorder": false,
    // X offset for allies squad icons
    // Смещение по оси X значка взвода союзников
    "squadIconOffsetXLeft": 0,
    // X offset for enemies squad icons
    // Смещение по оси X значка взвода противников
    "squadIconOffsetXRight": 0,
    // X offset for allies player names field
    // Смещение по оси X поля ника союзников
    "nameFieldOffsetXLeft": -7,
    // X offset for enemies player names field
    // Смещение по оси X поля ника противников
    "nameFieldOffsetXRight": -6,
    // Width of allies player names field
    // Ширина поля ника союзников
    "nameFieldWidthLeft": 130,
    // Width of enemies names field
    // Ширина поля ника противников
    "nameFieldWidthRight": 130,
    // X offset for "formatLeftVehicle" field
    // Смещение по оси X поля названия танка союзников
    "vehicleFieldOffsetXLeft": 39,
    // X offset for "formatRightVehicle" field
    // Смещение по оси X поля названия танка противников
    "vehicleFieldOffsetXRight": 23,
    // Width of "formatLeftVehicle" field
    // Ширина поля названия танка союзников
    "vehicleFieldWidthLeft": 250,
    // Width of "formatRightVehicle" field
    // Ширина поля названия танка противников
    "vehicleFieldWidthRight": 250,
    // X offset for allies vehicle icons
    // Смещение по оси X иконки танка союзников
    "vehicleIconOffsetXLeft": 0,
    // X offset for enemies vehicle icons
    // Смещение по оси X иконки танка противников
    "vehicleIconOffsetXRight": 0,
    // X offset for allies frags
    // Смещение по оси X фрагов союзников
    "fragsFieldOffsetXLeft": -1,
    // X offset for enemies frags
    // Смещение по оси X фрагов противников
    "fragsFieldOffsetXRight": -4,
    // Width of frags field for allies
    // Ширина поля фрагов союзников
    "fragsFieldWidthLeft": 40,
    // Width of frags field for enemies
    // Ширина поля фрагов противников
    "fragsFieldWidthRight": 40,
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftNick": "<font alpha='#A0'>{{clan}}</font> <font color='{{c:r|{{.colors.anonymousColor}}}}'>{{name%.15s~..}}{{my-anonym? <img src='cfg://default/icons/anonim.png' vspace='-3'>}}</font>",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightNick": "<font color='{{c:r|{{.colors.anonymousColor}}}}'>{{name%.15s~..}}{{my-anonym? <img src='cfg://default/icons/anonim.png' vspace='-3'>}}</font> <font alpha='#A0'>{{clan}}</font>",
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftVehicle": "{{vehicle}}<font face='Lucida Console' size='12' alpha='{{alive?#FF|#80}}'> <font color='{{c:kb}}'>{{kb%2d~k|--k}}</font> <font color='{{c:r}}'>{{r}}</font> <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></font>",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightVehicle": "<font face='Lucida Console' size='12' alpha='{{alive?#FF|#80}}'><font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font> <font color='{{c:r}}'>{{r}}</font> <font color='{{c:kb}}'>{{kb%2d~k|--k}}</font> </font>{{vehicle}}",
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftFrags": "{{frags}}",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightFrags": "{{frags}}",
    // Extra fields. Fields are placed one above the other.
    // Дополнительные поля. Поля располагаются друг над другом.
    // Set of formats for left panel (extended format supported, see extra-field.txt)
    // Набор форматов для левой панели (поддерживается расширенный формат, см. extra-field.txt)
    "extraFieldsLeft": [
      ${"templates.clanIcon"}
    ],
    // Set of formats for right panel (extended format supported, see extra-field.txt)
    // Набор форматов для правой панели (поддерживается расширенный формат, см. extra-field.txt)
    "extraFieldsRight": [
      ${"templates.clanIcon"}
    ]
  }
}