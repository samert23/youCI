# YouCI

Application web de présentation et de gestion de clips musicaux ivoiriens.

## Fonctionnalités
- catalogue de clips vidéo
- recherche et filtres par genre
- favoris côté client
- panneau d'administration pour ajouter / modifier / supprimer des clips
- intégration Supabase pour les données

## Technologies
- HTML
- CSS
- JavaScript
- Supabase

## Lancement
Ouvrez simplement le fichier `index.html` dans un navigateur.
Pour l'administration, ouvrez `admin.html`.

## Structure
- `index.html` : page publique
- `admin.html` : interface d’administration
- `script.js` : logique publique
- `supabase-client.js` : client Supabase
- `supabase.sql` : script SQL de création de table / policies

## Remarque
Pour que l’admin fonctionne pleinement, créez un utilisateur Supabase Auth dans le dashboard et configurez les politiques RLS de la table `clips`.
