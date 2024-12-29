Background: app/res/bg2.png

OnDisplay: app/scripts/voirListe.gcs

#3 champs de texte
Text.nb: 2
buttons.nb: 6

button4: My Passwords
button4.id: 1

button5: Manage
button5.id: 15

button6: Configure 
button6.id: 16

15.x: 10
15.y: 10

16.x: 10
16.y: 40

1.link: app/screens/list.ch
16.link: app/screens/config.ch
15.link: app/screens/main.ch

1.x: 10
1.y: 70

button1: Copy
button1.id: 5

5.x: 230
5.y: 155
5.link: app/scripts/copy.gcs

button2: Delete
button2.id: 7
7.x: 230
7.y: 180
7.link: app/scripts/delete.gcs

button3: Quit
button3.id: 6
6.x: 230
6.y: 205
6.link: @[exit]

Text1: Search Term
Text1.id: 3

Text2.id: 4

3.x: 280
3.y: 25

4.x: 260
4.y: 150

Input.nb: 1
Input1.id: 0
0.x: 195
0.y: 55

button.width: 130
button.size: 20

[events]
Button.1: app/scripts/choose.gcs
Key: app/scripts/search.gcs
[/events]

#END
