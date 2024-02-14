#!/bin/bash

if [ -n "$DIR" ]; then
  cd $DIR
  echo "Working in $DIR"
fi

# find . -type f -exec sed -i -e 's|\(tscsoft[/\.$]naroureader\)|\1_mod|g' -e 's|naroureader://|naroureader_mod://|g' -e 's|"naroureader"|"naroureader_mod"|g' {} +
find . -type f -exec perl -i -pe 's:(?<!net/|policy/)naroureader:naroureader_mod:g' {} +
sed -i -e s/なろうリーダ/なろうリーダ[MOD]/ res/values/strings.xml 
mv smali_classes2/com/tscsoft/naroureader smali_classes2/com/tscsoft/naroureader_mod

# change icon
find . -type f -name ic_launcher.png -exec mogrify -modulate 100,90,170 {} +
sed -i -e '/name="ic_launcher_background"/s/ffe97a06/ff11db8d/' res/values/colors.xml
