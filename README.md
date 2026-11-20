# Baobab Digital

Application Android de l’agence Baobab Digital : les deux offres, un exemple de carte numérique et le bouton WhatsApp.

## Obtenir l’APK

1. Mets les fichiers dans ton dépôt GitHub : `build-apk.yml` dans `.github/workflows/`, `main.dart` dans `lib/`, le reste à la racine.
2. Ouvre l’onglet **Actions** : « Build APK » démarre tout seul (ou clique sur **Run workflow**).
3. Quand l’exécution est verte, ouvre-la et télécharge **baobab-digital-apk** en bas de page.
4. Décompresse le fichier, puis installe `app-release.apk` sur ton téléphone.

## Modifier

- Numéro WhatsApp : la ligne `whatsapp` en haut de `lib/main.dart`.
- Prix et textes : dans `lib/main.dart`.
