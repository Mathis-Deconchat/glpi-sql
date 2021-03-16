# Requêtes SQL GLPI et pense bêtes
Récapitulation des différentes requêtes que j'ai pu utiliser sur la base de données d'un serveur GLPI \
:exclamation: Ces scripts et requêtes ne sont en aucun cas la 'meilleure' manière de faire

### Rappel et infos
Tables les plus couramment utiliser dans mes scripts

| Nom  | Fonction |
| ------------- | ------------- |
| glpi_tickets  | Tout les tickets GLPI  |
| glpi_users  | Tout les utilisateurs GLPI  |
| glpi_tickets_users  | Lien entre les tickets et les utilisateurs |
| glpi_groups  | Tout les groupes GLPI  |
| glpi_groups_tickets  | Lien entre les tickets et les groupes  |
| glpi_entities  | Toutes les entitès GLPI  |

Code des status des tickets
| code | statut |
|-------|---------|
| 1 | Nouveau |
| 2 | En cours - assigné |
| 3 | En cours - planifié |
| 4 | En cours - en attente |
| 5 | Résolu|
| 6 | Clos|
