#!/bin/sh
test -f Test.dmg && rm Test.dmg
rm build/test
create-dmg \
  --volname "Test" \
  --window-pos 200 120 \
  --window-size 800 400 \
  --icon-size 100 \
  --icon "Test.app" 200 190 \
  --hide-extension "Test.app" \
  --app-drop-link 600 185 \
  "Test_Darwin_x86_64.dmg" \
  "build/"
