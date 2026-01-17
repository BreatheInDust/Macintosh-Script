#!/bin/bash

API_KEY="b54cc4fb742799ca26ba7ca5d8cccd05526932ca2de5e1c11766414fe6445427"
ENDPOINT="https://api.macosicons.com/api/search"
SAVE_FOLDER="Macintosh_Script_Icons"

# List of apps you want icons for
APPS=("Finder" "Safari" "Notes" "Mail")  # <-- add more here

# Create folder if it doesn't exist
mkdir -p "$SAVE_FOLDER"

for APP_NAME in "${APPS[@]}"
do
  echo "Searching icon for '$APP_NAME'..."

  RESPONSE=$(curl -s -G "$ENDPOINT" \
    -H "Authorization: Bearer $API_KEY" \
    --data-urlencode "query=$APP_NAME")

  ICON_URL=$(echo "$RESPONSE" | grep -o '"url":"[^"]*"' | head -n 1 | sed 's/"url":"\(.*\)"/\1/')

  if [ -z "$ICON_URL" ]; then
    echo "  ⚠️ No icon found for $APP_NAME"
    continue
  fi

  FILE_NAME="$SAVE_FOLDER/${APP_NAME// /_}.png"
  curl -s "$ICON_URL" -o "$FILE_NAME"
  echo "  ✅ Downloaded $APP_NAME icon as $FILE_NAME"

done

echo "All done! Icons saved in $SAVE_FOLDER."
