# Gestion Scolaire Pro Plus

Logiciel de gestion scolaire complet pour les écoles primaires.

## Fonctionnalités

- Connexion et déconnexion sécurisées
- Gestion des élèves (ajout, modification, suppression)
- Gestion des classes et niveaux
- Gestion des matières et coefficients
- Saisie des notes et calcul automatique des moyennes
- Classements par composition et par niveau
- Bulletins scolaires avec appréciations
- Registre d'appel (matin / après-midi)
- Suivi d'assiduité (taux de présence)
- Paramètres de l'établissement
- Sauvegardes et archivage des années scolaires
- Importation et exportation de données
- Génération de PDF et impression
- Journal des impressions
- Journal d'activité (historique)
- Gestion des licences
- Thème clair / sombre
- Interface responsive et moderne

## Utilisation

Ouvrez le fichier `GestionScolaire_Pro_Plus.html` dans un navigateur web moderne.

Toutes les données sont stockées localement dans le navigateur (LocalStorage).

## Compilation

### Windows (Electron)

```bash
npm install
npm run dist
```

Génère :
- `GestionScolaire_Pro_Plus_Setup_*.exe` — Installateur professionnel
- `GestionScolaire_Pro_Plus_Portable_*.exe` — Version portable

### Android (Cordova)

```bash
cordova create cordova-app com.gestionscolaire.proplus "Gestion Scolaire Pro Plus"
cd cordova-app
cordova platform add android
cordova build android --release
```

## Licence

Propriétaire — Tous droits réservés.
