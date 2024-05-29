Background: app/res/bg2.png
OnDisplay: @init
main_text_size: 10
entry.size: 20

#3 champs de texte
Text.nb: 3
Text1: Code Maker
Text1.id: 0
Text2: Master Password
Text2.id: 1
Text3: New Password
Text3.id: 2

#2 inputs
Input.nb: 2
Input1.id: 3
Input2.id: 4

#4 boutons
buttons.nb: 7

button1: Change
button1.id: 5
button2: My Passwords
button2.id: 7
button3: Manage
button3.id: 15
button4: Configure 
button4.id: 16
button5: Copy Database
button5.id: 17
button6: Restore Database
button6.id: 18
button7: Digest Database
button7.id: 19
15.x: 10
15.y: 10

16.x: 10
16.y: 40

#On "resize" les boutons quand meme...
button.size: 20
button.width: 130

#Positions de chaque élément dans la fenetre. (se référer aux id)
0.x: 50
0.y: 0

1.x: 270
1.y: 20

2.x: 260
2.y: 70

3.x: 200
3.y: 60

4.x: 200
4.y: 110

5.x: 230
5.y: 150

17.x: 230
17.y: 180

18.x: 230
18.y: 210

19.x: 230
19.y: 240

6.x: 230
6.y: 125

7.x: 10
7.y: 70

8.x: 230
8.y: 175

#Les actions des boutons. gcs pour script, ch pour chargement d'écran, exit pour quitter
5.link: app/scripts/update.gcs
7.link: app/screens/list.ch
14.link: home.ch
8.link: @[exit]
16.link: app/screens/config.ch
15.link: app/screens/main.ch
17.link: app/scripts/bak.gcs
18.link: app/scripts/getDb.gcs
19.link: app/scripts/mergeDbs.gcs

1.x: 10
1.y: 70

button1: Copy
button1.id: 5

5.x: 230
5.y: 125
5.link: app/scripts/copy.gcs

button2: Delete
button2.id: 7
7.x: 230
7.y: 150
7.link: app/scripts/delete.gcs

button3: Quit
button3.id: 6
6.x: 230
6.y: 175
6.link: @[exit]

Text1: Current Password
Text1.id: 3

Text2: New Password
Text2.id: 4

3.x: 220

4.x: 200
4.y: 100

[events]
Button.1: @[end]
Key: @[end]
[/events]

[@init]
ConfigButton 16 bg="#42B3AF", fg="white"
ConfigButton 5 bg="#E05200", fg="white"
[/@init]

#END