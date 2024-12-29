Background: app/res/bg2.png

OnDisplay: @init
Onquit: @commitSave

main_text_size: 10
entry.size: 20

#3 champs de texte
Text.nb: 4
Text1: Code Maker
Text1.id: 0
Text2: Label
Text2.id: 1
Text3: Password
Text3.id: 2
Text4: Username
Text4.id: 17

#2 inputs
Input.nb: 3
Input1.id: 3
Input2.id: 4
Input3.id: 18

#4 boutons
buttons.nb: 6
button1: Generate
button1.id: 5
button2: Save
button2.id: 6
button3: My Passwords
button3.id: 7
button4: Quit
button4.id: 8
button5: Manage
button5.id: 15
button6: Configure 
button6.id: 16
15.x: 10
15.y: 10

16.x: 10
16.y: 40

#On "resize" les boutons quand meme...
button.size: 20
button.width: 130

#Positions de chaque élément dans la fenetre. (se référer aux id)
0.x: 50
0.y: 14

1.x: 220
1.y: 20

2.x: 240
2.y: 100

3.x: 200
3.y: 40

17.x: 240
17.y: 65

18.x: 200
18.y: 75

4.x: 200
4.y: 110

5.x: 230
5.y: 150

6.x: 230
6.y: 125

7.x: 10
7.y: 70

8.x: 230
8.y: 175

#Les actions des boutons. gcs pour script, ch pour chargement d'écran, exit pour quitter
5.link: app/scripts/generer.gcs
6.link: app/scripts/sauver.gcs
7.link: app/screens/list.ch
14.link: home.ch
8.link: @[exit]
16.link: app/screens/config.ch
15.link: app/screens/main.ch

LB.y: 150

[
************************************************************************************
********************************* FONCTIONS GCS ************************************
************************************************************************************
]

[@init]
ConfigButton 15 bg="#42B3AF", fg="white"
ConfigButton 5 bg="#E05200", fg="white"
[/@init]

[events]
Button.1: @[end]
Key: @[end]
[/events]

[@commitSave]
try @[commit;close_database;end] else @[nope]
[/@commitSave]

#END
