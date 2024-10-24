#! /bin/bash

mkdir rn.iconset

REDNOTEBOOK_ICONS_PATH=./rednotebook/images/rednotebook-icon

sips -z 16 16 $REDNOTEBOOK_ICONS_PATH/rn-1024.png --out rn.iconset/icon_16x16.png
sips -z 32 32 $REDNOTEBOOK_ICONS_PATH/rn-1024.png --out rn.iconset/icon_16x16@2x.png
sips -z 32 32 $REDNOTEBOOK_ICONS_PATH/rn-1024.png --out rn.iconset/icon_32x32.png
sips -z 64 64 $REDNOTEBOOK_ICONS_PATH/rn-1024.png --out rn.iconset/icon_32x32@2x.png
sips -z 128 128 $REDNOTEBOOK_ICONS_PATH/rn-1024.png --out rn.iconset/icon_128x128.png
sips -z 256 256 $REDNOTEBOOK_ICONS_PATH/rn-1024.png --out rn.iconset/icon_128x128@2x.png
sips -z 256 256 $REDNOTEBOOK_ICONS_PATH/rn-1024.png --out rn.iconset/icon_256x256.png
sips -z 512 512 $REDNOTEBOOK_ICONS_PATH/rn-1024.png --out rn.iconset/icon_256x256@2x.png
sips -z 512 512 $REDNOTEBOOK_ICONS_PATH/rn-1024.png --out rn.iconset/icon_512x512.png
cp $REDNOTEBOOK_ICONS_PATH/rn-1024.png rn.iconset/icon_512x512@2x.png 

iconutil -c icns rn.iconset
rm -rf rn.iconset
mv rn.icns macosx/rednotebook.icns