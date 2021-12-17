#!/bin/sh
test -f WaterFALL.dmg && rm WaterFALL.dmg
rm build/waterfall
create-dmg \
  --volname "WaterFALL" \
  --window-pos 200 120 \
  --window-size 800 400 \
  --icon-size 100 \
  --icon "WaterFALL.app" 200 190 \
  --hide-extension "WaterFALL.app" \
  --app-drop-link 600 185 \
  "WaterFALL_Darwin_x86_64.dmg" \
  "build/"
