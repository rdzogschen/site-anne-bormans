@echo off
chcp 65001 >nul
REM Telecharge les images du site actuel (Simplebo) dans assets\img
REM Double-cliquer une seule fois sur ce fichier. Necessite Windows 10 ou plus recent.
cd /d "%~dp0"
if not exist "assets\img" mkdir "assets\img"
echo Telechargement des images...
curl -sSfL -o "assets\img\logo.png" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/businesses/1763385147/colored-photologo-_ff4a02.png" && echo   OK  logo.png || echo   ECHEC logo.png
curl -sSfL -o "assets\img\hero-colonnes.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1763385930/6740467/2000/photo-1590410051810-08d7d33f0322.jpeg" && echo   OK  hero-colonnes.jpg || echo   ECHEC hero-colonnes.jpg
curl -sSfL -o "assets\img\accueil-parcours.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1764680942/6845840/2000/image-demo.jpeg" && echo   OK  accueil-parcours.jpg || echo   ECHEC accueil-parcours.jpg
curl -sSfL -o "assets\img\accueil-contact.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1764684000/6845917/600/image-demo.jpeg" && echo   OK  accueil-contact.jpg || echo   ECHEC accueil-contact.jpg
curl -sSfL -o "assets\img\presentation-commercial.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1764681575/6845943/600/image-demo.jpeg" && echo   OK  presentation-commercial.jpg || echo   ECHEC presentation-commercial.jpg
curl -sSfL -o "assets\img\presentation-penal.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1764681577/6845944/600/image-demo.jpeg" && echo   OK  presentation-penal.jpg || echo   ECHEC presentation-penal.jpg
curl -sSfL -o "assets\img\presentation-pi.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1764681575/6845945/600/image-demo.jpeg" && echo   OK  presentation-pi.jpg || echo   ECHEC presentation-pi.jpg
curl -sSfL -o "assets\img\bio-experiences.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1765364952/6879545/600/image-demo.jpeg" && echo   OK  bio-experiences.jpg || echo   ECHEC bio-experiences.jpg
curl -sSfL -o "assets\img\bio-formation.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1765364970/6879546/600/image-demo.jpeg" && echo   OK  bio-formation.jpg || echo   ECHEC bio-formation.jpg
curl -sSfL -o "assets\img\commercial-1.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1764681835/6845969/600/image-demo.jpeg" && echo   OK  commercial-1.jpg || echo   ECHEC commercial-1.jpg
curl -sSfL -o "assets\img\commercial-2.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1765370704/6845970/600/image-demo.jpeg" && echo   OK  commercial-2.jpg || echo   ECHEC commercial-2.jpg
curl -sSfL -o "assets\img\pi-1.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1764682243/6845995/600/image-demo.jpeg" && echo   OK  pi-1.jpg || echo   ECHEC pi-1.jpg
curl -sSfL -o "assets\img\pi-2.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1764684080/6845993/600/image-demo.jpeg" && echo   OK  pi-2.jpg || echo   ECHEC pi-2.jpg
curl -sSfL -o "assets\img\tech-1.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1764682490/6846021/600/image-demo.jpeg" && echo   OK  tech-1.jpg || echo   ECHEC tech-1.jpg
curl -sSfL -o "assets\img\tech-2.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1764684095/6846024/600/image-demo.jpeg" && echo   OK  tech-2.jpg || echo   ECHEC tech-2.jpg
curl -sSfL -o "assets\img\societes-1.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1765370614/6846029/600/image-demo.jpeg" && echo   OK  societes-1.jpg || echo   ECHEC societes-1.jpg
curl -sSfL -o "assets\img\penal-1.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1764682766/6846044/600/image-demo.jpeg" && echo   OK  penal-1.jpg || echo   ECHEC penal-1.jpg
curl -sSfL -o "assets\img\penal-2.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1764684120/6846047/600/image-demo.jpeg" && echo   OK  penal-2.jpg || echo   ECHEC penal-2.jpg
curl -sSfL -o "assets\img\honoraires-1.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1764683620/6846124/600/image-demo.jpeg" && echo   OK  honoraires-1.jpg || echo   ECHEC honoraires-1.jpg
curl -sSfL -o "assets\img\honoraires-2.jpg" "https://files.sbcdnsb.com/images/pX4Vpsl0erpgLFDaqSEKnw/content/1764684136/6846125/600/image-demo.jpeg" && echo   OK  honoraires-2.jpg || echo   ECHEC honoraires-2.jpg
echo.
echo Termine. Vous pouvez fermer cette fenetre.
pause
