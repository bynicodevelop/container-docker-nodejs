# Récupération d'une image de node js
FROM node:12

# Déclaration de variables d'environnement
ENV HOST=0.0.0.0
ENV PORT=3000

# Création d'un dossier project qui contient
# un dossier app à la racine de notre serveur
RUN mkdir -p /project/app

# On copie le contenu de notre dossier app
# (en local) vers le container
COPY ./app /project/app

# On copie les fichiers package.json
# (en local) vers le container
COPY package.json /project
COPY package-lock.json /project

# Cette commande indique que notre dossier
# par défaut est le dossier de project
WORKDIR /project

# On expose notre port par defaut
EXPOSE $PORT

# On installe les dépendances Node JS
RUN npm i

# Cette commande permet de lancer la commande "start"
# de notre fichier package.json
CMD ["npm", "start"]
