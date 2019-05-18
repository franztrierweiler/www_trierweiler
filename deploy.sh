#!/bin/bash
TARGET=/var/www/html
echo "Déploiement sur Apache"
cp index.html $TARGET
cp jstrial.html $TARGET
cp -r static $TARGET
echo "Fin du déploiement"
