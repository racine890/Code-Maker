#C'est une appli tk
use tk

entry.size: 20

#L'image de fond
#Une image au fond
BackGround: app/res/bg.png
BackGround.x: 280
BackGround.y: 170

#Au démarrage, afficher le texte de license, la checkbox et griser le bouton.
OnDisplay: app/scripts/licence_showlicense.gcs

Text.nb: 1
Text1: J'ai lu et j'accepte les conditions d'utilisation
Text1.id: 0
0.x: 300
0.y: 200

buttons.nb: 1
Button1: Suivant
Button1.id: 1
1.x: 300
1.y: 250
1.link: app/scripts/licence_next.gcs

Edit.BeginX: 150
Edit.width: 300
Edit.BeginY: 50
Edit.size: 150

[events]
Button-1: app/scripts/licence_accept.gcs
[/events]