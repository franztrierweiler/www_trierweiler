# www_trierweiler
Point d'entrée sur le VPS

Projet d'apprentissages des technos web (front et back):
- js
- nodejs
- Python
- Technos AWS simples (Ligthsail)

En 2019 et 2020, ce projet est déployé sur une machine Debian hébergée en tant que VM AWS Lightsail.
Sur cette même machine fonctionne une instance Cloud9 fournie par AWS.

Il évolue de temps en temps au cours de mon temps libres

Les autres projets associés sont
- https://github.com/franztrierweiler/nodejs_cnx

Installation des dépendances nodejs via npm sur le serveur:
- npm install -g <module_name>
- L'option -g installe dans /usr/local/lib au lieu d'installer dans le répertoire en cours où la commande npm est exécutée.

Subtilités de nodejs:
- Le fichier /etc/environment doit contenir la variable NODE_PATH (elle est définie quelque part mais je n'ai pas trouvé où)
    - PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
    - NODE_PATH=$NODE_PATH:/home/ubuntu/.c9/lib/node_modules
- Dans les réjouissances de nodejs:
    - Très confusant: sur la machine AWS on ne sait pas trop où est le "gobal" aevc npm

__Exemple:__
Use the `printf`
`ubuntu@ip-172-26-4-202:~/apps/nodejs_cnx$ npm list
/home/ubuntu/apps/nodejs_cnx
└── (empty)

ubuntu@ip-172-26-4-202:~/apps/nodejs_cnx$ npm list -g
/home/ubuntu/.c9/lib
├──  error: ENOENT: no such file or directory, open '/home/ubuntu/.c9/lib/node_modules/etc/package.json
└── utf8@3.0.0

npm ERR! error in /home/ubuntu/.c9/lib/node_modules/etc: ENOENT: no such file or directory, open '/home/ubuntu/.c9/lib/node_modules/etc/package.json'
ubuntu@ip-172-26-4-202:~/apps/nodejs_cnx$`
