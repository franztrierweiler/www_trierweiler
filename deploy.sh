#!/bin/bash
TARGET=/var/www/html
echo "Déploiement sur Apache"
cp index.html $TARGET
cp jstrial.html $TARGET
cp anime.html $TARGET
cp brythontrial.html $TARGET
cp terminal_sample.html $TARGET
cp -r static $TARGET
cp -r css $TARGET
cp -r js $TARGET
echo "Fin du déploiement"
