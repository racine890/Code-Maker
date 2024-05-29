#login.ch
Title: Passwords Creator
Width: 420
Size: 300
AppIcon: app/res/bg.png
use tk

#Rendre invisible le mot de passe
OnDisplay: app/scripts/home_configPasswordInput.gcs
OnLoad: app/scripts/checkBackup.gcs

buttons.nb: 1
Input.nb: 1
Text.nb: 1

entry.size: 20
entry.width: 200

button.width: 130
button.size: 20
main_text_size: 18

Input1.id: 1
1.x: 130
1.y: 130

Text1: Please, type your master password!
Text1.id: 2
2.x: 350
2.y: 50

button1: Submit
button1.id: 5
5.x: 150
5.y: 200

#Vérifier l'existence de l'utilisateur
5.link: app/scripts/home_checkMaster.gcs

#Une image au fond
BackGround: app/res/bg.png
BackGround.x: 280
BackGround.y: 170

[events]
Control.b: app/scripts/pushDb.gcs
Control.r: app/scripts/getDb.gcs
Control.t: app/screens/main.ch
[/events]

#END
