# Site de Maître Anne PIGEON BORMANS – Avocat

Site vitrine statique (HTML + CSS + un peu de JavaScript). Pas de base de données, pas de CMS, pas d'abonnement.

## Voir le site sur son ordinateur

Ouvrir `index.html` dans un navigateur.

## Organisation des fichiers

| Fichier | Contenu |
|---|---|
| `index.html` | Accueil |
| `maitre-pigeon-bormans-avocat-paris-8.html` | Présentation |
| `bio.html` | Bio |
| `droit-*.html` (5 pages) | Compétences |
| `honoraires.html`, `contact-…html` | Honoraires, Contact |
| `plan-du-site.html`, `mentions-legales.html` | Pages légales |
| `assets/css/style.css` | Toute la mise en forme. Couleurs et polices en haut du fichier. |
| `assets/js/main.js` | Menu mobile, onglets, « Afficher le téléphone », formulaire |
| `assets/img/logo.png` | Logo (seule image du site, à la demande de Me Bormans) |

Les noms des pages reprennent les adresses de l'ancien site (bon pour Google).

## Formulaire de contact

Le formulaire passe par Web3Forms (gratuit), compte **anne.bormans@gmail.com**, formulaire « Contact site avocat ». Les messages arrivent dans cette boîte mail. La clé (`access_key`) est dans `contact-anne-pigeon-bormans-avocat-paris-8.html`. Quand le domaine annebormansavocat.fr sera branché, mettre à jour le « Website URL » du formulaire dans le tableau de bord Web3Forms.

## Mise en ligne (GitHub Pages)

1. Créer un compte sur github.com, puis un dépôt **public** (ex. `site-avocat`) et y déposer tout le contenu de ce dossier.
2. Dans le dépôt : **Settings → Pages → Source : Deploy from a branch → main / (root)**.
3. **Custom domain** : `www.annebormansavocat.fr`, puis cocher **Enforce HTTPS**.
4. Chez le gestionnaire du nom de domaine : enregistrement `CNAME` `www` → `<compte>.github.io`, et pour le domaine sans www les 4 enregistrements `A` indiqués par GitHub (185.199.108.153, 185.199.109.153, 185.199.110.153, 185.199.111.153).

Chaque modification enregistrée dans le dépôt est en ligne 1 à 2 minutes plus tard.

## Consignes pour Claude (modifications)

- L'en-tête, les deux menus (ordinateur + mobile), le bloc « Informations pratiques » et le pied de page sont **recopiés dans chaque page** : une modification de téléphone, d'adresse ou de menu doit être faite dans **tous** les fichiers `.html`.
- Après toute modification de `style.css` ou `main.js`, changer le numéro `?v=…` de leur lien dans **toutes** les pages (sinon les navigateurs gardent l'ancienne version en mémoire).
- Pas de photos sur le site (choix de Me Bormans) : seulement le logo.
- Réutiliser les classes existantes (`section bg-gris / bg-noir / bg-brique`, `title`, `text-block`, `card`, `box`, `checks`, `btn`) plutôt que d'ajouter du style en ligne.
- Une nouvelle page = copier une page existante, changer `<title>`, `<meta name="description">`, le `<h1>` et le contenu de `<main>`, puis l'ajouter aux menus, au pied de page si besoin et à `plan-du-site.html`.
