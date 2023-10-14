@echo off
title Se-Go-Ku 1.0
::Basics

::Welcome menu
:welcome
cls
echo Welcome in Se-Go-Ku! Enter 6 to begin.
echo.
set /p enter="Entree : "
if %enter% equ 6 goto main_menu
if %enter% neq 7 goto credits_et_avancee

::Credits
:credits_et_avancee
cls
echo Se-Go-Ku
echo.
echo Jeu cree par : moi
echo Idee originale de : moi
echo Code par : moi
echo Beta-test par : personne
echo.
echo Se-Go-Ku 1.1
echo.
echo Tous droits reserves.
pause
goto :welcome

::Main menu
:main_menu
cls
echo Main Menu
echo.
echo To start a battle, enter 1. (HALF TRANSLATED!)
echo To access Segodex, enter 2. (NOT TRANSLATED!)
echo To see the tutorials, enter 3. (NOT TRANSLATED!)
echo To enter the evolution menu, enter 4.
echo To see your inventory, enter 5. (NOT TRANSLATED!)
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :battle_menu
if %enter% equ 2 goto :segodex
if %enter% equ 3 goto :tutorial_menu
if %enter% equ 4 goto evolution_menu
if %enter% equ 5 goto :inventory

::Battle Menu
:battle_menu
cls
echo Battle Menu
echo.
echo Here you will fight against monsters and, if you're lucky, catch them, and if you're not, lose your segoballs!
echo Joking.
echo.
echo Enter 1 to begin.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :monsterchoicea

::Random choice of the monster
:monsterchoicea
if %segoballs% equ 0 goto :notenoughballs
if %segoballs% neq 0 goto :monsterchoice

:notenoughballs
cls
echo Oh no! You don't have any segoballs.
pause
goto :main_menu

::Random choice; a number between 0 and 30 according to the following list
:monsterchoice
set /a monster=%RANDOM%%%31
if %monster% equ 0 goto :nomonster
if %monster% equ 1 goto :chimparonbattle
if %monster% equ 2 goto :octopetbattle
if %monster% equ 3 goto :flamizelbattle
if %monster% equ 4 goto :raccocoonbattle
if %monster% equ 5 goto :dragorakbattle
if %monster% equ 6 goto :dolphylebattle
if %monster% equ 7 goto :porpoisonbattle
if %monster% equ 8 goto :pandunabattle
if %monster% equ 9 goto :camousebattle
if %monster% equ 10 goto :chamemichbattle
if %monster% equ 11 goto :electriumbattle
if %monster% equ 12 goto :buffiabattle
if %monster% equ 13 goto :vaporcbattle
if %monster% equ 14 goto :kangaroarbattle
if %monster% equ 15 goto :porcuplumebattle
if %monster% equ 16 goto :chameceonbattle
if %monster% equ 17 goto :woolfbattle
if %monster% equ 18 goto :meltiboubattle
if %monster% equ 19 goto :porcupidebattle
if %monster% equ 20 goto :crocodaidbattle
if %monster% equ 21 goto :rhinodosbattle
if %monster% equ 22 goto :mounticanbattle
if %monster% equ 23 goto :elephantombattle
if %monster% equ 24 goto :coyodrillbattle
if %monster% equ 25 goto :flamishbattle
if %monster% equ 26 goto :pelicairbattle
if %monster% equ 27 goto :vulturiabattle
if %monster% equ 28 goto :burnamanderbattle
if %monster% equ 29 goto :plouficouacbattle
if %monster% equ 30 goto :segokubattle

:nomonster
cls
echo Agh. No monster there.
echo.
pause
goto :main_menu

:chimparonbattle
cls
echo Oh, un Chimparon sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :chimparonbattleno
if %chance% geq 26 if %chance% leq 75 goto :chimparonbattlechance
if %chance% geq 76 if %chance% leq 100 goto :chimparonbattleyes

:chimparonbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:chimparonbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :chimparonbattleno
if %chance% equ 1 goto :chimparonbattleyes

:chimparonbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Chimparon, 1 perle de Terre
echo.
set /a chimparonnum=%chimparonnum%+1
set /a terramysticpearls=%terramysticpearls%+1
echo %chimparonnum%
echo %terramysticpearls%
echo.
pause
goto :main_menu

:octopetbattle
cls
echo Oh, un Octopet sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :octopetbattleno
if %chance% geq 26 if %chance% leq 75 goto :octopetbattlechance
if %chance% geq 76 if %chance% leq 100 goto :octopetbattleyes

:octopetbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:octopetbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :octopetbattleno
if %chance% equ 1 goto :octopetbattleyes

:octopetbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Octopet, 1 perle d'Ordre
echo.
set /a octopetnum=%octopetnum%+1
set /a ordomysticpearls=%ordomysticpearls%+1
echo Nombre de Octopet : %octopetnum%
echo Nombre de perles d'Ordre : %ordomysticpearls%
echo.
pause
goto :main_menu

:flamizelbattle
cls
echo Oh, un Flamizel sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :flamizelbattleno
if %chance% geq 26 if %chance% leq 75 goto :flamizelbattlechance
if %chance% geq 76 if %chance% leq 100 goto :flamizelbattleyes

:flamizelbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:flamizelbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :flamizelbattleno
if %chance% equ 1 goto :flamizelbattleyes

:flamizelbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Flamizel, 1 perle de Feu, 1 perle d'Air
echo.
set /a flamizelnum=%flamizelnum%+1
set /a aermysticpearls=%aermysticpearls%+1
set /a ignismysticpearls=%ignismysticpearls%+1
echo Nombre de Flamizel : %flamizelnum%
echo Nombre de perles d'Air : %aermysticpearls%
echo Nombre de perles de Feu : %ignismysticpearls%
echo.
pause
goto :main_menu

:raccocoonbattle
cls
echo Oh, un Raccocoon sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :raccocoonbattleno
if %chance% geq 26 if %chance% leq 75 goto :raccocoonbattlechance
if %chance% geq 76 if %chance% leq 100 goto :raccocoonbattleyes

:raccocoonbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:raccocoonbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :raccocoonbattleno
if %chance% equ 1 goto :raccocoonbattleyes

:raccocoonbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Raccocoon, 1 perle d'eau
echo.
set /a raccocoonnum=%raccocoonnum%+1
set /a aquamysticpearls=%aquamysticpearls%+1
echo Nombre de Raccocoon : %raccocoonnum%
echo Nombre de perles d'Eau : %aquamysticpearls%
echo.
pause
goto :main_menu

:dragorakbattle
cls
echo Oh, un Dragorak sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :dragorakbattleno
if %chance% geq 26 if %chance% leq 75 goto :dragorakbattlechance
if %chance% geq 76 if %chance% leq 100 goto :dragorakbattleyes

:dragorakbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:dragorakbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :dragorakbattleno
if %chance% equ 1 goto :dragorakbattleyes

:dragorakbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Dragorak, 1 perle de Feu
echo.
set /a dragoraknum=%dragoraknum%+1
set /a ignismysticpearls=%ignismysticpearls%+1
echo Nombre de Dragorak : %dragoraknum%
echo Nombre de perles de Feu : %ignismysticpearls%
echo.
pause
goto :main_menu

:dolphylebattle
cls
echo Oh, un Dolphyle sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :dolphylebattleno
if %chance% geq 26 if %chance% leq 75 goto :dolphylebattlechance
if %chance% geq 76 if %chance% leq 100 goto :dolphylebattleyes

:dolphylebattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:dolphylebattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :dolphylebattleno
if %chance% equ 1 goto :dolphylebattleyes

:dolphylebattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Dolphyle, 1 perle d'Eau
echo.
set /a dolphylenum=%dolphylenum%+1
set /a aquamysticpearls=%aquamysticpearls%+1
echo Nombre de Dolphyle : %dolphylenum%
echo Nombre de perles d'Eau : %aquamysticpearls%
echo.
pause
goto :main_menu

:porpoisonbattle
cls
echo Oh, un Porpoison sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :porpoisonbattleno
if %chance% geq 26 if %chance% leq 75 goto :porpoisonbattlechance
if %chance% geq 76 if %chance% leq 100 goto :porpoisonbattleyes

:porpoisonbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:porpoisonbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :porpoisonbattleno
if %chance% equ 1 goto :porpoisonbattleyes

:porpoisonbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Porpoison, 1 perle d'Eau
echo.
set /a porpoisonnum=%porpoisonnum%+1
set /a aquamysticpearls=%aquamysticpearls%+1
echo Nombre de Porpoison : %porpoisonnum%
echo Nombre de perles d'Eau : %aquamysticpearls%
echo.
pause
goto :main_menu

:pandunabattle
cls
echo Oh, un Panduna sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :pandunabattleno
if %chance% geq 26 if %chance% leq 75 goto :pandunabattlechance
if %chance% geq 76 if %chance% leq 100 goto :pandunabattleyes

:pandunabattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:pandunabattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :pandunabattleno
if %chance% equ 1 goto :pandunabattleyes

:pandunabattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Panduna, 1 perle de Chaos
echo.
set /a pandunanum=%pandunanum%+1
set /a chaosmysticpearls=%chaosmysticpearls%+1
echo Nombre de Panduna : %pandunanum%
echo Nombre de perles de Chaos : %chaosmysticpearls%
echo.
pause
goto :main_menu

:camousebattle
cls
echo Oh, un Camouse sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :camousebattleno
if %chance% geq 26 if %chance% leq 75 goto :camousebattlechance
if %chance% geq 76 if %chance% leq 100 goto :camousebattleyes

:camousebattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:camousebattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :camousebattleno
if %chance% equ 1 goto :camousebattleyes

:camousebattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Camouse, 1 perle de Chaos
echo.
set /a camousenum=%camousenum%+1
set /a chaosmysticpearls=%chaosmysticpearls%+1
echo Nombre de Camouse : %camousenum%
echo Nombre de perles de Chaos : %chaosmysticpearls%
echo.
pause
goto :main_menu

:chamemishbattle
cls
echo Oh, un Chamemish sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :chamemishbattleno
if %chance% geq 26 if %chance% leq 75 goto :chamemishbattlechance
if %chance% geq 76 if %chance% leq 100 goto :chamemishbattleyes

:chamemishbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:chamemishbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :chamemishbattleno
if %chance% equ 1 goto :chamemishbattleyes

:chamemishbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Chamemish, 1 perle de Terre
echo.
set /a chamemishnum=%chamemishnum%+1
set /a terramysticpearls=%terramysticpearls%+1
echo Nombre de Chamemish : %chamemishnum%
echo Nombre de perles de Terre : %terramysticpearls%
echo.
pause
goto :main_menu

:electriumbattle
cls
echo Oh, un Electrium sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :electriumbattleno
if %chance% geq 26 if %chance% leq 75 goto :electriumbattlechance
if %chance% geq 76 if %chance% leq 100 goto :electriumbattleyes

:electriumbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:electriumbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :electriumbattleno
if %chance% equ 1 goto :electriumbattleyes

:electriumbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Electrium, 1 perle d'Ordre
echo.
set /a electriumnum=%electriumnum%+1
set /a ordomysticpearls=%ordomysticpearls%+1
echo Nombre de Electrium : %electriumnum%
echo Nombre de perles de Ordre : %ordomysticpearls%
echo.
pause
goto :main_menu

:buffiabattle
cls
echo Oh, un Buffia sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :buffiabattleno
if %chance% geq 26 if %chance% leq 75 goto :buffiabattlechance
if %chance% geq 76 if %chance% leq 100 goto :buffiabattleyes

:buffiabattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:buffiabattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :buffiabattleno
if %chance% equ 1 goto :buffiabattleyes

:buffiabattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Buffia, 1 perle de Feu
echo.
set /a buffianum=%buffianum%+1
set /a ignismysticpearls=%ignismysticpearls%+1
echo Nombre de Buffia : %buffianum%
echo Nombre de perles de Feu : %ignismysticpearls%
echo.
pause
goto :main_menu

:vaporcbattle
cls
echo Oh, un Vaporc sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :vaporcbattleno
if %chance% geq 26 if %chance% leq 75 goto :vaporcbattlechance
if %chance% geq 76 if %chance% leq 100 goto :vaporcbattleyes

:vaporcbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:vaporcbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :vaporcbattleno
if %chance% equ 1 goto :vaporcbattleyes

:vaporcbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Vaporc, 1 perle d'Air
echo.
set /a vaporcnum=%vaporcnum%+1
set /a aermysticpearls=%aermysticpearls%+1
echo Nombre de Vaporc : %vaporcnum%
echo Nombre de perles d'Air : %aermysticpearls%
echo.
pause
goto :main_menu

:kangaroarbattle
cls
echo Oh, un Kangaroar sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :kangaroarbattleno
if %chance% geq 26 if %chance% leq 75 goto :kangaroarbattlechance
if %chance% geq 76 if %chance% leq 100 goto :kangaroarbattleyes

:kangaroarbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:kangaroarbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :kangaroarbattleno
if %chance% equ 1 goto :kangaroarbattleyes

:kangaroarbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Kangaroar, 1 perle d'Eau
echo.
set /a kangaroarnum=%kangaroarnum%+1
set /a aquamysticpearls=%aquamysticpearls%+1
echo Nombre de Kangaroar : %kangaroarnum%
echo Nombre de perles d'Eau : %aquamysticpearls%
echo.
pause
goto :main_menu

:porcuplumebattle
cls
echo Oh, un Porcuplume sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :porcuplumebattleno
if %chance% geq 26 if %chance% leq 75 goto :porcuplumebattlechance
if %chance% geq 76 if %chance% leq 100 goto :porcuplumebattleyes

:porcuplumebattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:porcuplumebattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :porcuplumebattleno
if %chance% equ 1 goto :porcuplumebattleyes

:porcuplumebattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Porcuplume, 1 perle de Terre
echo.
set /a porcuplumenum=%porcuplumenum%+1
set /a terramysticpearls=%terramysticpearls%+1
echo Nombre de Kangaroar : %porcuplumenum%
echo Nombre de perles de Terre : %terramysticpearls%
echo.
pause
goto :main_menu

:chameceonbattle
cls
echo Oh, un Chameceon sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :chameceonbattleno
if %chance% geq 26 if %chance% leq 75 goto :chameceonbattlechance
if %chance% geq 76 if %chance% leq 100 goto :chameceonbattleyes

:chameceonbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:chameceonbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :chameceonbattleno
if %chance% equ 1 goto :chameceonbattleyes

:chameceonbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Chameceon, 1 perle d'Eau
echo.
set /a chameceonnum=%chameceonnum%+1
set /a aquamysticpearls=%aquamysticpearls%+1
echo Nombre de Chameceon : %chameceonnum%
echo Nombre de perles d'Eau : %aquamysticpearls%
echo.
pause
goto :main_menu

:woolfbattle
cls
echo Oh, un Woolf sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :woolfbattleno
if %chance% geq 26 if %chance% leq 75 goto :woolfbattlechance
if %chance% geq 76 if %chance% leq 100 goto :woolfbattleyes

:woolfbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:woolfbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :woolfbattleno
if %chance% equ 1 goto :woolfbattleyes

::
:woolfbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Woolf, 1 perle de Chaos
echo.
set /a woolfnum=%woolfnum%+1
set /a chaosmysticpearls=%chaosmysticpearls%+1
echo Nombre de Woolf : %woolfnum%
echo Nombre de perles de Chaos : %chaosmysticpearls%
echo.
pause
goto :main_menu

:meltiboubattle
cls
echo Oh, un Meltibou sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :meltiboubattleno
if %chance% geq 26 if %chance% leq 75 goto :meltiboubattlechance
if %chance% geq 76 if %chance% leq 100 goto :meltiboubattleyes

:meltiboubattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:meltiboubattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :meltiboubattleno
if %chance% equ 1 goto :meltiboubattleyes

:meltiboubattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Meltibou, 1 perle d'Ordre
echo.
set /a meltibounum=%meltibounum%+1
set /a ordomysticpearls=%ordomysticpearls%+1
echo Nombre de Meltibou : %meltibounum%
echo Nombre de perles d'Ordre : %ordomysticpearls%
echo.
pause
goto :main_menu

:porcupidbattle
cls
echo Oh, un Porcupid sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :porcupidbattleno
if %chance% geq 26 if %chance% leq 75 goto :porcupidbattlechance
if %chance% geq 76 if %chance% leq 100 goto :porcupidbattleyes

:porcupidbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:porcupidbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :porcupidbattleno
if %chance% equ 1 goto :porcupidbattleyes

:porcupidbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Porcupid, 1 perle de Terre
echo.
set /a porcupidnum=%porcupidnum%+1
set /a terramysticpearls=%terramysticpearls%+1
echo Nombre de Porcupid : %porcupidnum%
echo Nombre de perles de Terre : %terramysticpearls%
echo.
pause
goto :main_menu

:crocodaidbattle
cls
echo Oh, un Crocodaid sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :crocodaidbattleno
if %chance% geq 26 if %chance% leq 75 goto :crocodaidbattlechance
if %chance% geq 76 if %chance% leq 100 goto :crocodaidbattleyes

:crocodaidbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:crocodaidbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :crocodaidbattleno
if %chance% equ 1 goto :crocodaidbattleyes

:crocodaidbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Crocodaid, 1 perle d'Air
echo.
set /a crocodaidnum=%crocodaidnum%+1
set /a aermysticpearls=%aermysticpearls%+1
echo Nombre de Crocodaid : %crocodaidnum%
echo Nombre de perles de Terre : %aermysticpearls%
echo.
pause
goto :main_menu

:rhinodosbattle
cls
echo Oh, un Rhinodos sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :rhinodosbattleno
if %chance% geq 26 if %chance% leq 75 goto :rhinodosbattlechance
if %chance% geq 76 if %chance% leq 100 goto :rhinodosbattleyes

:rhinodosbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:rhinodosbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :rhinodosbattleno
if %chance% equ 1 goto :rhinodosbattleyes

:rhinodosbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Rhinodos, 1 perle de Feu
echo.
set /a rhinodosnum=%rhinodosnum%+1
set /a ignismysticpearls=%ignismysticpearls%+1
echo Nombre de Rhinodos : %rhinodosnum%
echo Nombre de perles de Feu : %ignismysticpearls%
echo.
pause
goto :main_menu

:meltiboubattle
cls
echo Oh, un Meltibou sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :meltiboubattleno
if %chance% geq 26 if %chance% leq 75 goto :meltiboubattlechance
if %chance% geq 76 if %chance% leq 100 goto :meltiboubattleyes

:meltiboubattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:meltiboubattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :meltiboubattleno
if %chance% equ 1 goto :meltiboubattleyes

:meltiboubattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Meltibou, 1 perle de Chaos
echo.
set /a meltibounum=%meltibounum%+1
set /a chaosmysticpearls=%chaosmysticpearls%+1
echo Nombre de Meltibou : %meltibounum%
echo Nombre de perles de Chaos : %chaosmysticpearls%
echo.
pause
goto :main_menu

:elephantombattle
cls
echo Oh, un Elephantom sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :elephantombattleno
if %chance% geq 26 if %chance% leq 75 goto :elephantombattlechance
if %chance% geq 76 if %chance% leq 100 goto :elephantombattleyes

:elephantombattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:elephantombattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :elephantombattleno
if %chance% equ 1 goto :elephantombattleyes

:elephantombattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Elephantom, 1 perle d'Ordre
echo.
set /a elephantomnum=%elephantomnum%+1
set /a ordomysticpearls=%ordomysticpearls%+1
echo Nombre de Elephantom : %elephantomnum%
echo Nombre de perles de Chaos : %ordomysticpearls%
echo.
pause
goto :main_menu

:coyodrillbattle
cls
echo Oh, un Coyodrill sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :coyodrillbattleno
if %chance% geq 26 if %chance% leq 75 goto :coyodrillbattlechance
if %chance% geq 76 if %chance% leq 100 goto :coyodrillbattleyes

:coyodrillbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:coyodrillbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :coyodrillbattleno
if %chance% equ 1 goto :coyodrillbattleyes

:coyodrillbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Coyodrill, 1 perle d'Air
echo.
set /a coyodrillnum=%coyodrillnum%+1
set /a aermysticpearls=%aermysticpearls%+1
echo Nombre de Coyodrill : %coyodrillnum%
echo Nombre de perles de Air : %aermysticpearls%
echo.
pause
goto :main_menu

:flamishbattle
cls
echo Oh, un Flamish sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :flamishbattleno
if %chance% geq 26 if %chance% leq 75 goto :flamishbattlechance
if %chance% geq 76 if %chance% leq 100 goto :flamishbattleyes

:flamishbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:flamishbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :flamishbattleno
if %chance% equ 1 goto :flamishbattleyes

:flamishbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Flamish, 1 perle de Feu
echo.
set /a flamishnum=%flamishnum%+1
set /a ignismysticpearls=%ignismysticpearls%+1
echo Nombre de Flamish : %flamishnum%
echo Nombre de perles de Feu : %ignismysticpearls%
echo.
pause
goto :main_menu

:pelicairbattle
cls
echo Oh, un Pelicair sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :pelicairbattleno
if %chance% geq 26 if %chance% leq 75 goto :pelicairbattlechance
if %chance% geq 76 if %chance% leq 100 goto :pelicairbattleyes

:pelicairbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:pelicairbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :pelicairbattleno
if %chance% equ 1 goto :pelicairbattleyes

:pelicairbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Pelicair, 1 perle d'Eau
echo.
set /a pelicairnum=%pelicairnum%+1
set /a aquamysticpearls=%aquamysticpearls%+1
echo Nombre de Pelicair : %pelicairnum%
echo Nombre de perles d'Eau : %aquamysticpearls%
echo.
pause
goto :main_menu

:vulturiabattle
cls
echo Oh, un Vulturia sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :vulturiabattleno
if %chance% geq 26 if %chance% leq 75 goto :vulturiabattlechance
if %chance% geq 76 if %chance% leq 100 goto :vulturiabattleyes

:vulturiabattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:vulturiabattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :vulturiabattleno
if %chance% equ 1 goto :vulturiabattleyes

:vulturiabattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Vulturia, 1 perle d'Eau
echo.
set /a vulturianum=%pelicairnum%+1
set /a aquamysticpearls=%aquamysticpearls%+1
echo Nombre de Vulturia : %vulturianum%
echo Nombre de perles d'Eau : %aquamysticpearls%
echo.
pause
goto :main_menu

:burnamanderbattle
cls
echo Oh, un Burnamander sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 25 goto :burnamanderbattleno
if %chance% geq 26 if %chance% leq 75 goto :burnamanderbattlechance
if %chance% geq 76 if %chance% leq 100 goto :burnamanderbattleyes

:burnamanderbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:burnamanderbattlechance
set /a chance=%RANDOM%%%2
if %chance% equ 0 goto :burnamanderbattleno
if %chance% equ 1 goto :burnamanderbattleyes

:burnamanderbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Burnamander, 1 perle de Terre
echo.
set /a burnamandernum=%burnamandernum%+1
set /a terramysticpearls=%terramysticpearls%+1
echo Nombre de Burnamander : %burnamandernum%
echo Nombre de perles de Terre : %terramysticpearls%
echo.
pause
goto :main_menu

:plouficouacbattle
cls
echo Oh, un Plouficouac sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 80 goto :plouficouacbattleno
if %chance% geq 81 if %chance% leq 100 goto :plouficouacbattleyes

:plouficouacbattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:plouficouacbattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Plouficouac, 1 perle d'Eau
echo.
set /a plouficouacnum=%plouficouacnum%+1
set /a aquamysticpearls=%aquamysticpearls%+1
set /a segoballs=%segoballs%-2
echo Nombre de Plouficouac : %plouficouacnum%
echo Nombre de perles d'Eau : %aquamysticpearls%
echo.
pause
goto :main_menu

:segokubattle
cls
echo Oh, un Se- sauvage ! Tu lances ta segoball...
echo.
set /a chance=%RANDOM%%%101
if %chance% geq 0 if %chance% leq 80 goto :segokubattleno
if %chance% geq 81 if %chance% leq 100 goto :segokubattleyes

:segokubattleno
echo Oh non ! Tu l'as raté...
echo.
pause
goto :main_menu

:segokubattleyes
echo Oui ! Tu l'as attrape !
echo.
echo Tu obtiens : 1 Se-, 1 perle d'Eau
echo.
set /a senum=%senum%+1
set /a aquamysticpearls=%aquamysticpearls%+1
set /a segoballs=%segoballs%-2
echo Nombre de Se- : %senum%
echo Nombre de perles d'Eau : %aquamysticpearls%
echo.
pause
goto :main_menu

::Tutorials menu
:tutorial_menu
cls
echo Menu des tutoriels
echo.
echo Ici, vous pouvez acceder aux tutoriels de sorte a ce que vous puissiez jouer de maniere simple.
echo.
echo 1) Attraper des monstres
echo 2) Faire l'inventaire
echo 3) Utiliser le Segodex
echo 4) Faire evoluer les monstres
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :tuto1
if %enter% equ 2 goto :tuto2
if %enter% equ 3 goto :tuto3
if %enter% equ 4 goto :tuto4

::Tuto 1
:tuto1
setlocal enableDelayedExpansion
cls
echo TUTORIAL 1
echo Catch Monsters
echo.
echo Attraper des monstres est la base et le but de Se-Go-Ku. Ils rempliront votre Segodex, et ensuite, vous pourrez les faire evoluer, pour obtenir les deuxieme et troiseme generation de monstres. Nous verrons comment faire evoluer les monstres dans le dernier tutoriel, mais pour l'instant, nous allons nous contenter de chercher des monstres.
echo Chaque monstre (comme nous pouvons le voir dans le Segodex) possede des niveaux de capture, mais nous verrons cela dans le troiseme tutoriel, pour apprendre comment se servir du Segodex.
echo Pour attraper des monstres, il faut aller en mode bataille. Si vous avez des Segoballs, aucun problème, vous pourrez facilement attraper quelques monstres (ou pas, si vous êtes très malchanceux), qui rempliront votre Segodex. Le jeu vous guidera dans cette quete.
echo Attraper des monstres vous rapportera en plus des segoballs et des perles mystiques. Que demande le peuple !
echo Mais, si je ne me trompes pas, vous n'avez pas de segoballs, si vous regardez ce tutoriel ! Eh bien, je vous en donne 5 ! (Et n'essayez pas de gruger pour augmenter votre nombre de segoballs, ça ne marchera que si vous n'en avez plus aucune !)
if !segoballs! equ 0 set segoballs=5
echo Nombre de segoballs : !segoballs!.
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu des tutoriels.
echo.
set /p enter="Entree : "
if !enter! equ 1 goto :main_menu
if !enter! equ 2 goto :tutorial_menu
endlocal

::Tuto 2
:tuto2
cls
echo TUTORIEL 2
echo Faire l'inventaire
echo.
echo L'inventaire est une des choses les plus importantes dans Se-Go-Ku, puisque c'est lui qui va vous servir a faire evoluer vos monstres.
echo Au premier abord, l'inventaire peut paraitre une chose tres abstraite, mais il ne l'est pas si on connait un minimum ce qui est de son ressort.
echo La premiere chose indiquee par l'inventaire est le nombre de segoballs; nous avons vu dans le precedent tutoriel son utilite, qui est d'attraper des monstres. Si le nombre de segoballs tombe a 0, retournez sur le tutoriel 1, il vous redonnera 5 segoballs.
echo La deuxieme chose indiquee par l'inventaire, c'est le nombre de pierres et de perles mystiques. Nous verrons leur utilite quant a l'evolution des monstres dans le dernier tutoriel, mais dites vous qu'il y a six types de pierres et de perles mystiques :
echo Aer = Air	Aqua = Eau
echo Ignis = Feu  Ordo = Ordre
echo Perditio = Chaos Terra = Terre
echo Ces perles et pierres sont d'ailleurs les aspects primordiaux des monstres.
echo Il faut trois perles du même type pour faire une pierre mystique.
echo Leur utilité sera vue plus tard dans le dernier tutoriel.
echo.
pause
goto :main_menu

::Tuto 3
:tuto3
cls
echo TUTORIEL 3
echo Utiliser le Segodex
echo.
echo Le Segodex est un outil complexe, accessible, mais dont les secrets ne sont accessibles qu'a une petite fourchette de personnes, dont vous allez faire partie apres ce tutoriel.
echo La premiere chose que nous dit le Segodex est "Quelle generation souhaitez vous consulter ?". Il existe en effet trois generations de monstres. La premiere correspond aux monstres que l'on peut attraper dans le mode bataille. Les deux autres sont celles du rang d'evolution du monstre.
echo Une fois la generation choisie, choisissez le numero du monstre que vous souhaitez consulter. Il en existe 30 pour chaque generation.
echo Prenons par exemple : Premiere generation - 1) Chimparon.
echo Des informations de base nous permettent d'en savoir plus sur le monstre : son nom, son numero, sa description, sa ligne evolutive (ses evolutions).
echo Apres la description, cependant, les choses se compliquent. On trouve une information plus qu'interessante : le taux de capture. Dans notre exemple, cette suite fait office de taux de capture : 0-25 : N / 26-75 1/2 / 76-100 O
echo Sachez qu'il peut y avoir deux ou trois parties a un taux de capture; Se-, par exemple, a un taux de capture a deux parties : 0-80 N / 81-100 O.
echo Pour comprendre le taux de capture, il faut savoir comment Se-Go-Ku definit si vous attrapez un monstre ou pas.
echo Le jeu genere un nombre aleatoire entre 1 et 100. Si le nombre est entre une certaine fourchette, vous avez une certaine chance d'obtenir le monstre.
echo La premiere partie comporte la fourchette du "Non", où vous n'obtenez pas le monstre. La deuxieme (si il y en a trois) comporte la fourchette du "une chance sur...". Et la troisieme (ou la deuxieme, si il n'y en a que deux) represente la fourchette du "oui", où vous attrapez le monstre.
echo Dans notre exemple, si le nombre est entre 0 et 25, on ne recupere pas le monstre. Si il est entre 26 et 75, on a une chance sur deux de recuperer le monstre. Et si il est entre 76 et 100, on le recupere.
echo Le nombre apres le taux de capture est le nombre de monstres de cette espece que vous avez capture. Pratique si vous voulez savoir si vous pouvez faire evoluer un monstre.
echo.
pause
goto :main_menu

::Tuto 4
:tuto4
cls
echo TUTORIEL 4
echo Faire evoluer les monstres
echo.
echo Les monstres peuvent evoluer. Chaque monstre de premiere generation peut evoluer en deux monstres successivement. Ceux-cis sont definis par la ligne evolutive du monstre (qui est accessible dans son entree dans le Segodex).
echo Pour evoluer, vous devez avoir des perles mystiques, que vous recuperez en attrapant des monstres de même aspect primordial que celui que vous voulez evoluer. IL N'EST PAS OBLIGATOIRE QUE CE DERNIER SOIT DE LA MEME ESPECE.
echo Avec des perles mystiques, vous pouvez creer des pierres mystiques, qui servent a faire evoluer les monstres. Le menu d'evolution vous guide dans cette demarche : les instructions sont claires, et je vous invite a les suivre, car il serait trop long de tout expliquer dans ce tutoriel.
echo.
pause
goto :main_menu

::Inventory
:inventory
cls
echo Inventory
echo.
echo Welcome in the Inventory! Here you can check your statistics.
echo.
echo YOUR INVENTORY :
echo Segoballs number : %segoballs%
echo Air Mystical Stones : %aermysticstones%
echo Air Mystical Pearls : %aermysticpearls%
echo Water Mystical Stones : %aquamysticstones%
echo Water Mystical Pearls : %aquamysticpearls%
echo Fire Mystical Stones : %ignismysticstones%
echo Fire Mystical Pearls : %ignismysticpearls%
echo Order Mystical Stones : %ordomysticstones%
echo Order Mystical Pearls : %ordomysticpearls%
echo Chaos Mystical Stones : %chaosmysticstones%
echo Chaos Mystical Pearls : %chaosmysticpearls%
echo Earth Mystical Stones : %terramysticstones%
echo Earth Mystical Pearls : %terramysticpearls%
echo.
echo Enter 9 to continue...
echo.
set /p enter="Entree : "
if %enter% equ 9 goto :main_menu

::Segodex. Just, Segodex.
:segodex
cls
echo Segodex
echo.
echo Bienvenue dans le Segodex ! C'est ici que sont repertories tous les monstres que tu as attrape dans le mode bataille ainsi que ceux que tu as deja fait evoluer.
echo.
echo Choisis une generation de monstres a afficher :
echo 1) Premiere generation
echo 2) Deuxieme generation
echo 3) Trosieme generation
echo.
set /p enter="Entree : "
if %enter% equ "1" goto :firstgen
if %enter% equ "2" goto :firstgen
if %enter% equ "3" goto :firstgen
if %enter% equ "4" goto :ornithorynque

:firstgen
cls
echo Bienvenue dans la premiere generation de monstres ! Ici se trouvent les monstres pas encore evolues.
echo.
echo 1) Chimparon
echo 2) Octopet
echo 3) Flamizel
echo 4) Raccocoon
echo 5) Dragorak
echo 6) Dolphyle
echo 7) Porpoison
echo 8) Panduna
echo 9) Camouse
echo 10) Chamemish
echo 11) Electrium
echo 12) Buffia
echo 13) Vaporc
echo 14) Kangaroar
echo 15) Porcuplume
echo 16) Chamceon
echo 17) Woolf
echo 18) Meltibou
echo 19) Porcupid
echo 20) Crocodaid
echo 21) Rhinodos
echo 22) Mountican
echo 23) Elephantom
echo 24) Coyodrill
echo 25) Flamish
echo 26) Pelicair
echo 27) Vulturia
echo 28) Burnamander
echo 29) Plouficouac
echo 30) Se-
echo.
echo Choisissez le monstre dont vous desirez connaitre les informations
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :chimparon
if %enter% equ 2 goto :octopet
if %enter% equ 3 goto :flamizel
if %enter% equ 4 goto :raccocoon
if %enter% equ 5 goto :dragorak
if %enter% equ 6 goto :dolphyle
if %enter% equ 7 goto :porpoison
if %enter% equ 8 goto :panduna
if %enter% equ 9 goto :camouse
if %enter% equ 10 goto :chamemish
if %enter% equ 11 goto :electrium
if %enter% equ 12 goto :buffia
if %enter% equ 13 goto :vaporc
if %enter% equ 14 goto :kangaroar
if %enter% equ 15 goto :porcuplume
if %enter% equ 16 goto :chameceon
if %enter% equ 17 goto :woolf
if %enter% equ 18 goto :meltibou
if %enter% equ 19 goto :porcupid
if %enter% equ 20 goto :crocodaid
if %enter% equ 21 goto :rhinodos
if %enter% equ 22 goto :mountican
if %enter% equ 23 goto :elephantom
if %enter% equ 24 goto :coyodrill
if %enter% equ 25 goto :flamish
if %enter% equ 26 goto :pelicair
if %enter% equ 27 goto :vulturia
if %enter% equ 28 goto :burnamander
if %enter% equ 29 goto :plouficouac
if %enter% equ 30 goto :se

:chimparon
cls
echo Monstre No 1 : Chimparon
echo.
echo Ligne evolutive : Chimparon - Chimparoux - Chimpatrique
echo Description : Chimparon ressemble à un grand singe, de la famille des chimpanzes (d'ou il tire son nom). Ses yeux sont bleus.
echo.
echo Taille : 76 cm	Poids : 14 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Chimparons possedes actuellement : %chimparonnum%.
echo Nombre de Chimparoux possedes actuellement : %chimparouxnum%.
echo Nombre de Chimpatriques possedes actuellement : %chimpatriquesnum%.
echo Aspect : Terra (Terre)
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:flamizel
cls
echo Monstre No 3 : Flamizel
echo.
echo Ligne evolutive : Flamizel - Flambeur - Phenixe
echo Description : Flamizel est un bebe phéneau de taille moyenne pour cet age. Ses yeux sont noirs et ses plumes arrieres sont jaunes.
echo Aspect : Ignis (Feu) / Aer (Air)
echo.
echo Taille : 25 cm	Poids : 3 kg
echo Taux de capture : 0-25 : N / 26-80 : 1/2 / 81-100 : O
echo Nombre de Flamizel possedes : %flamizelnum%
echo Nombre de Flambeurs possedes : %flambeurnum%
echo Nombre de Phenixes possedes : %phenixenum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:octopet
cls
echo Monstre No 2 : Octopet
echo.
echo Ligne evolutive : Octopet - Octopron - Octon
echo Description : Octopet est une lampe volante, contenant une flamme bleu-violet l'illuminant en permanence.
echo Aspect : Ordo (Ordre)
echo.
echo Taille : 25 cm	Poids : 800 g
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre d'Octopets possedes : %octopetnum%
echo Nombre d'Octoprons possedes : %octopronnum%
echo Nombre d'Octons possedes : %octonnum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:raccocoon
cls
echo Monstre No 4 : Raccocoon
echo.
echo Ligne evolutive : Raccocoon - Rancocoon - Rancoon
echo Description : Raccocoon est une souris de 3 ans grise. Elle a ete recuperee dans un laboratoire, aux Etats-Unis.
echo Aspect : Aqua (Eau)
echo.
echo Taille : 25 cm	Poids : 800 g
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Raccocoon possedes : %raccocoonnum%
echo Nombre de Rancocoon possedes : %rancocoonnum%
echo Nombre de Rancoon possedes : %rancoonnum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:dragorak
cls
echo Monstre No 5 : Dragorak
echo.
echo Ligne evolutive : Dragorak - Dragoroi - Dragoldorak 
echo Description : Dragorak est un dragon chinois bleu adulte de grande taille. Ceux qui cependant on pu le voir en vrai ne sont jamais revenus pour le confirmer.
echo Aspect : Ignis (Feu)
echo.
echo Taille : 5,78 m 	Poids : 800 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Dragorak possedes : %dragoraknum%
echo Nombre de Dragorois possedes : %dragoroinum%
echo Nombre de Dragoldorak possedes : %dragoldoraknum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:dolphyle
cls
echo Monstre No 6 : Dolphyle
echo.
echo Ligne evolutive : Dolphyle - Dolphino - Flipper
echo Description : Dolphyle est un dolphineau d'environ 1 an et demi. Il est plutot grand pour son age, ce qui en fait un animal feroce.
echo Aspect : Aqua (Eau)
echo.
echo Taille : 2m 	Poids : 100 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Dolphyle possedes : %dolphylenum%
echo Nombre de Dolphino possedes : %dolphinonum%
echo Nombre de Flipper possedes : %flippernum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:porpoison
cls
echo Monstre No 7 : Porpoison
echo.
echo Ligne evolutive : Porpoison - Pufferfish - Fugu
echo Description : Porpoison est un poisson de la famille des poissons-globe, aussi appeles poissons fugus. Le fait de consommer un mince bout de sa chair vous tuera instantanement.
echo Aspect : Aqua (Eau)
echo.
echo Taille : 20 cm	 Poids : 1 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Porpoison possedes : %porpoisonnum%
echo Nombre de Pufferfish possedes : %pufferfishnum%
echo Nombre de Fugu possedes : %fugunum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:panduna
cls
echo Monstre No 8 : Panduna
echo.
echo Ligne evolutive : Panduna - Pandinours - Pandi-Panda
echo Description : Panduna est une femelle panda de 7 ans. Ses yeux sont noirs et une tache marron sur son dos la rend reconaissable facilement.
echo Aspect : Perditio (Chaos)
echo.
echo Taille : 150 cm	 Poids : 70 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Panduna possedes : %pandunanum%
echo Nombre de Pandinours possedes : %pandinoursnum%
echo Nombre de Pandi-Panda possedes : %pandipandanum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:camouse
cls
echo Monstre No 9 : Camouse
echo.
echo Ligne evolutive : Camouse - Camé - Camouré
echo Description : Camouse est un cameleon de 3 ans. Sa couleur est generalement verte rayee de orange.
echo Aspect : Perditio (Chaos)
echo.
echo Taille : 30 cm	 Poids : 2 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Camouse possedes : %camousenum%
echo Nombre de Came possedes : %camenum%
echo Nombre de Camoure possedes : %camourenum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:chamemish
cls
echo Monstre No 10 : Chamemish
echo.
echo Ligne evolutive : Chamemish - Nabooris - Chamech
echo Description : Chamemish est une femelle chameau de 15 ans. Elle est recouverte d'un tapis brode rouge, bleu, et blanc.
echo Aspect : Terra (Terre)
echo.
echo Taille : 30 cm	 Poids : 2 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Chamemish possedes : %chamemishnum%
echo Nombre de Nabooris possedes : %naboorisnum%
echo Nombre de Chamech possedes : %chamechnum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:electrium
cls
echo Monstre No 11 : Electrium
echo. 
echo Ligne evolutive : Electrium - Electrizz - Electrum
echo Description : Electrium est une boule de fer forgé de 50 cm de diametre, entouree d'arcs electriques. 
echo Aspect : Ordo (Ordre)
echo.
echo Taille : 50 cm	 Poids : 2 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre d'Electrium possedes : %electriumnum%
echo Nombre d'Electrizz possedes : %electrizznum%
echo Nombre d'Electrum possedes : %electrumnum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:buffia
cls
echo Monstre No 12 : Buffia
echo.
echo Ligne evolutive : Buffia - Buffleia - Buffla
echo Description : Buffia est un buffle de 4 ans, ayant la queue en tire-bouchon.
echo Aspect : Ignis (Feu)
echo.
echo Taille : 150 cm	 Poids : 200 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Buffia possedes : %buffianum%
echo Nombre de Buffleia possedes : %buffleianum%
echo Nombre de Buffla possedes : %bufflanum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:vaporc
cls
echo Monstre No 13 : Vaporc
echo.
echo Ligne evolutive : Vaporc - Vapapeur - Vaporcinet
echo Description : Vaporc est un cochon de 3 ans, toujours couvert de boue.
echo Aspect : Aer (Air)
echo.
echo Taille : 100 cm	 Poids : 50 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Vaporc possedes : %vaporcnum%
echo Nombre de Vapapeur possedes : %vapapeurcnum%
echo Nombre de Vaporcinet possedes : %vaporcinetnum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:kangaroar
cls
echo Monstre No 14 : Kangaroar
echo.
echo Ligne evolutive : Kangaroar - Kangarou - Kajarou
echo Description : Kangaroar est un kangourou dont le ventre est jaune. Il comporte un bebe, appele Kangaroar-1.
echo Aspect : Eau (Aqua)
echo.
echo Taille : 200 cm	 Poids : 125 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Kangaroar possedes : %kangaroarnum%
echo Nombre de Kangarou possedes : %kangarounum%
echo Nombre de Kajarou possedes : %kajarounum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:porcuplume
cls
echo Monstre No 15 : Porcuplume
echo.
echo Ligne evolutive : Porcuplume - Porplume - Porquaipique
echo Description : Porcuplume est un porc avec des plumes.
echo Aspect : Terre (Terra)
echo.
echo Taille : 100 cm	 Poids : 50 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Porcuplume possedes : %porcuplumenum%
echo Nombre de Porplume possedes : %porplumenum%
echo Nombre de Porquaipique possedes : %porquaipiquenum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:chameceon
cls
echo Monstre No 16 : Chameceon
echo.
echo Ligne evolutive : Chameceon - Chamanish - Chameceonish
echo Description : Chameceon est un poulpe blanc aux yeux exorbites.
echo Aspect : Aqua (Eau)
echo.
echo Taille : 25 cm	 Poids : 2 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Chameceon possedes : %chameceonnum%
echo Nombre de Chamanish possedes : %chamanishnum%
echo Nombre de Chameceonish possedes : %chameceonishnum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:woolf
cls
echo Monstre No 17 : Woolf
echo.
echo Ligne evolutive : Woolf - Wolfy - Fluffy
echo Description : Woolf est un loup des montagnes gris de 5 ans au poil long.
echo Aspect : Perditio (Chaos)
echo.
echo Taille : 150 cm	 Poids : 50 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Woolf possedes : %woolfnum%
echo Nombre de Wolfy possedes : %wolfynum%
echo Nombre de Fluffy possedes : %fluffynum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:meltibou
cls
echo Monstre No 18 : Meltibou
echo.
echo Ligne evolutive : Meltibou - Didonou - Dinodon 
echo Description : Meltibou est un dindon. C'est tout.
echo Aspect : Ordo (Ordre)
echo.
echo Taille : 100 cm	 Poids : 25 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Meltibou possedes : %meltibounum%
echo Nombre de Dindinou possedes : %dindinounum%
echo Nombre de Dinodon possedes : %dinodonnum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:porcupid
cls
echo Monstre No 19 : Porcupid
echo.
echo Ligne evolutive : Porcupid - Porcupidon - Porcupidicon
echo Description : Porcupid est un cochon cupide.
echo Aspect : Terra (Terre)
echo.
echo Taille : 100 cm	 Poids : 25 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Porcupid possedes : %porcupidnum%
echo Nombre de Porcupidon possedes : %porcupidonnum%
echo Nombre de Porcupidicon possedes : %porcupidiconnum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:crocodaid
cls
echo Monstre No 20 : Crocodaid
echo.
echo Ligne evolutive : Crocodaid - Crocodilaid - Captain Kroko
echo Description : Crocodaid est un crocodile, ou un aligator (on ne sait pas vraiment) d'environ 5 ans capable de se tenir debout. Il porte un T-Shirt avec marqué dessus Captain Kroko.
echo Aspect : Aer (Air)
echo.
echo Taille : 120 cm	 Poids : 56 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Crocodaid possedes : %crocodaidnum%
echo Nombre de Crocodilaid possedes : %crocodilaidnum%
echo Nombre de Captain Kroko possedes : %captainkrokonum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:rhinodos
cls
echo Monstre No 21 : Rhinodos
echo.
echo Ligne evolutive : Rhinodos - Rhinodegou - Rhinocedos
echo Description : Rhinodos est un male rhinoceros de 14 ans a la corne demesuree.
echo Aspect : Ignis (Feu)
echo.
echo Taille : 300 cm	 Poids : 570 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Rhinodos possedes : %rhinodosnum%
echo Nombre de Rhinodegou possedes : %rhinodegounum%
echo Nombre de Rhinocedos possedes : %rhinocedosnum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:mountican
cls
echo Monstre No 22 : Mountican
echo.
echo Ligne evolutive : Mountican - Mounticanis - Mounty Python
echo Description : Mountican est un ocelot de 3 ans.
echo Aspect : Perditio (Chaos)
echo.
echo Taille : 50 cm	 Poids : 4 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Mountican possedes : %mounticannum%
echo Nombre de Mounticanis possedes : %mounticanisnum%
echo Nombre de Mounty Python possedes : %mountypythonnum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:elephantom
cls
echo Monstre No 23 : Elephantom
echo.
echo Ligne evolutive : Elephantom - Elephantisum - Dumbo
echo Description : Elephantom est un elephant de 40 ans.
echo Aspect : Ordo (Ordre)
echo.
echo Taille : 300 cm	 Poids : 570 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Elephantom possedes : %elephantomnum%
echo Nombre de Elephantisum possedes : %elephantisumnum%
echo Nombre de Dumbo possedes : %dumbonum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:coyodrill
cls
echo Monstre No 24 : Coyodrill
echo.
echo Ligne evolutive : Coyodrill - Coyodaq - Bip-Bip-Coyote
echo Description : Coyodrill est un coyote de 5 ans.
echo Aspect : Aer (Air)
echo.
echo Taille : 100 cm	 Poids : 25 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Coyodrill possedes : %coyodrillnum%
echo Nombre de Coyodaq possedes : %coyodaqnum%
echo Nombre de Bip-Bip-Coyote possedes : %bipbipcoyotenum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:flamish
cls
echo Monstre No 25 : Flamish
echo.
echo Ligne evolutive : Flamish - Flamidei - Flamflam
echo Description : Flamish est un moineau rouge.
echo Aspect : Ignis (Feu) 
echo.
echo Taille : 10 cm	 Poids : 500 g
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Flamish possedes : %flamishnum%
echo Nombre de Flamidei possedes : %flamideinum%
echo Nombre de Flamflam possedes : %flamflamnum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:pelicair
cls
echo Monstre No 26 : Pelicair
echo.
echo Ligne evolutive : Pelicair - Entrapelic - Pelicanos
echo Description : Pelicair est un pelican noir d'environ 3 ans.
echo Aspect : Aqua (Eau)
echo.
echo Taille : 70 cm	 Poids : 6 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Pelicair possedes : %pelicairnum%
echo Nombre de Entrapelic possedes : %entrapelicnum%
echo Nombre de Pelicanos possedes : %pelicanosnum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:vulturia
cls
echo Monstre No 27 : Vulturia 
echo.
echo Ligne evolutive : Vulturia - Vulture - Rapacera
echo Description : Vulturia est une femelle aigle royal de 5 ans.
echo Aspect : Aqua (Eau)
echo.
echo Taille : 70 cm	 Poids : 8 kg
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Vulturia possedes : %vulturianum%
echo Nombre de Vulture possedes : %vulturenum%
echo Nombre de Rapacera possedes : %rapaceranum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:burnamander
cls
echo Monstre No 28 : Burnamander
echo.
echo Ligne evolutive : Burnamander - Burncal - Hamgeur
echo Description : Burnamander est un hamburguer MacDonald.
echo Aspect : Terra (Terre)
echo.
echo Taille : 10 cm	 Poids : 250 g
echo Taux de capture : 0-25 : N / 26-75 : 1/2 / 76-100 : O
echo Nombre de Burnamander possedes : %burnamandernum%
echo Nombre de Burncal possedes : %burncalnum%
echo Nombre de Hamgeur possedes : %hamgeurnum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:plouficouac
cls
echo Monstre No 29 : Plouficouac
echo.
echo Ligne evolutive : Plouficouac - Plouficouac Niv. 2 - Plouficouac Niv. 3
echo Description : Plouficouac est une carpe koi.
echo Aspect : Aqua (Eau)
echo.
echo Taille : 40 cm	 Poids : 500 g
echo Taux de capture : 0-80 : N / 81-100 : O
echo Nombre de Plouficouac possedes : %plouficouacnum%
echo Nombre de Plouficouac Lvl. 2 possedes : %plouficouacdeuxnum%
echo Nombre de Plouficouac Lvl. 3 possedes : %plouficouactroisnum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

:se
cls
echo Monstre No 30 : Se-
echo.
echo Ligne evolutive : Se- - Se-Go - Se-Go-Ku
echo Description : Se- est un ornithorynque.
echo Aspect : Aqua (Eau)
echo.
echo Taille : 70 cm	 Poids : 2 kg
echo Taux de capture : 0-84 : N / 85-100 : O
echo Nombre de Se- possedes : %senum%
echo Nombre de Se-Go possedes : %segonum%
echo Nombre de Se-Go-Ku possedes : %segokunum%
echo.
echo Appuyez sur 1 pour retourner au menu principal.
echo Appuyez sur 2 pour retourner au menu du Segodex.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :main_menu
if %enter% equ 2 goto :segodex

::Easter egg
:ornithorynque
cls
echo ...
echo Tu es tres fort. Encore un easter-egg ! Bon, pour celui-la, on va revenir aux origines du jeu.
echo Sais-tu d'ou vient le nom du jeu Se-Go-Ku ? Eh bien, c'est le nom du premier monstre cree, et aussi du plus fort et du plus rare.
echo Penses-tu que c'etait un animal tres fort ? En fait, c'etait un... un ornithorynque. Oui, moques-toi. Vas-y, tu peux.
echo Mais saches que Se-Go-Ku est le monstre le plus rare du jeu... Son taux de capture est de 0-84 N / 85-100 O !
echo Et pourquoi s'appelle-il Se-Go-Ku ? En fait, il y a trois syllabes, comme dans Yu-Gi-Oh, et je trouvais que le meilleur ennemi de Pokemon, c'etait... Dragon Ball. Donc Son Goku + Yu-Gi-Oh + Un peu d'inspiration = Se-Go-Ku.
echo.
pause
goto :main_menu

::Evolution.
:evolution_menu
cls
echo Menu d'evolution
echo.
echo Bienvenue dans le menu d'evolution ! Ici, vous pourrez faire evoluer vos monstres de premiere generation !
echo.
echo Appuyez sur 1 pour fusionner des perles mystiques.
echo Appuyez sur 2 pour faire evoluer un monstre de premiere generation.
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :fusion
if %enter% equ 2 goto :evolution

::Choix de la fusion des perles
:fusion
cls
echo Choisissez l'aspect primordial de perles a fusionner :
echo.
echo 1) Aer	4)Ordo
echo 2) Aqua	5)Perditio	
echo 3) Ignis	6)Terra
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :fusion_aer
if %enter% equ 2 goto :fusion_aqua
if %enter% equ 3 goto :fusion_ignis
if %enter% equ 4 goto :fusion_ordo
if %enter% equ 5 goto :fusion_perditio
if %enter% equ 6 goto :fusion_terra

::fusion air
:fusion_aer
if %aermysticpearls% leq 2 goto :not_more
cls
echo Fusion de perles mystiques d'Air
echo.
echo Voulez-vous echanger 3 perles mystiques d'Air contre une pierre mystique ?
echo 1) Oui	2) Non
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :realaerfusion
if %enter% equ 2 goto :main_menu

:realaerfusion
cls
echo FUUUUUUUU-SIOOOOOOOON !
set /a aermysticpearls=%aermysticpearls%-3
set /a aermysticstones=%aermysticstones%+1
echo Nombre de perles mystiques d'Air : %aermysticpearls%
echo Nombre de pierres mystiques d'Air : %aermysticstones%
echo.
pause
goto :main_menu

::fusion eau
:fusion_aqua
if %aquamysticpearls% leq 2 goto :not_more
cls
echo Fusion de perles mystiques d'Eau
echo.
echo Voulez-vous echanger 3 perles mystiques d'Eau contre une pierre mystique ?
echo 1) Oui	2) Non
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :realaquafusion
if %enter% equ 2 goto :main_menu

:realaquafusion
cls
echo FUUUUUUUU-SIOOOOOOOON !
set /a aquamysticpearls=%aquamysticpearls%-3
set /a aquamysticstones=%aquamysticstones%+1
echo Nombre de perles mystiques d'Eau : %aquamysticpearls%
echo Nombre de pierres mystiques d'Eau : %aquamysticstones%
echo.
pause
goto :main_menu

::fusion feu
:fusion_ignis
if %ignismysticpearls% leq 2 goto :not_more
cls
echo Fusion de perles mystiques de Feu
echo.
echo Voulez-vous echanger 3 perles mystiques de Feu contre une pierre mystique ?
echo 1) Oui	2) Non
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :realignisfusion
if %enter% equ 2 goto :main_menu

:realignisfusion
cls
echo FUUUUUUUU-SIOOOOOOOON !
set /a ignismysticpearls=%ignismysticpearls%-3
set /a ignismysticstones=%ignismysticstones%+1
echo Nombre de perles mystiques de Feu : %ignismysticpearls%
echo Nombre de pierres mystiques de Feu : %ignismysticstones%
echo.
pause
goto :main_menu

::fusion ordre
:fusion_ordo
if %ordomysticpearls% leq 2 goto :not_more
cls
echo Fusion de perles mystiques d'Ordre
echo.
echo Voulez-vous echanger 3 perles mystiques d'Ordre contre une pierre mystique ?
echo 1) Oui	2) Non
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :realordofusion
if %enter% equ 2 goto :main_menu

:realordofusion
cls
echo FUUUUUUUU-SIOOOOOOOON !
set /a ordomysticpearls=%ordomysticpearls%-3
set /a ordomysticstones=%ordomysticstones%+1
echo Nombre de perles mystiques d'Ordre : %ordomysticpearls%
echo Nombre de pierres mystiques d'Ordre : %ordomysticstones%
echo.
pause
goto :main_menu

:: fusion chaos
:fusion_perditio
if %chaosmysticpearls% leq 2 goto :not_more
cls
echo Fusion de perles mystiques de Chaos
echo.
echo Voulez-vous echanger 3 perles mystiques de Chaos contre une pierre mystique ?
echo 1) Oui	2) Non
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :realchaosfusion
if %enter% equ 2 goto :main_menu

:realchaosfusion
cls
echo FUUUUUUUU-SIOOOOOOOON !
set /a chaosmysticpearls=%chaosmysticpearls%-3
set /a chaosmysticstones=%chaosmysticstones%+1
echo Nombre de perles mystiques de Chaos : %chaosmysticpearls%
echo Nombre de pierres mystiques de Chaos : %chaosmysticstones%
echo.
pause
goto :main_menu

::fusion terre
:fusion_terra
if %terramysticpearls% leq 2 goto :not_more
cls
echo Fusion de perles mystiques de Terra
echo.
echo Voulez-vous echanger 3 perles mystiques de Terre contre une pierre mystique ?
echo 1) Oui	2) Non
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :realterrafusion
if %enter% equ 2 goto :main_menu

:realterrafusion
cls
echo FUUUUUUUU-SIOOOOOOOON !
set /a terramysticpearls=%terramysticpearls%-3
set /a terramysticstones=%terramysticstones%+1
echo Nombre de perles mystiques de Terre : %terramysticpearls%
echo Nombre de pierres mystiques de Terra : %terramysticstones%
echo.
pause
goto :main_menu

::Pas assez de perles
:not_more
cls
echo Malheureusement, vous n'avez pas assez de perles mystiques.
echo.
pause
goto :main_menu

:evolution
cls
echo Evolution de monstres
echo.
echo Quelle generation de monstres voulez-vous evoluer ?
echo 1) Premiere generation
echo 2) Deuxieme generation
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :ev_firstgen
if %enter% equ 2 goto :ev_secgen

:ev_firstgen
echo 1) Chimparon
echo 2) Octopet
echo 3) Flamizel
echo 4) Raccocoon
echo 5) Dragorak
echo 6) Dolphyle
echo 7) Porpoison
echo 8) Panduna
echo 9) Camouse
echo 10) Chamemish
echo 11) Electrium
echo 12) Buffia
echo 13) Vaporc
echo 14) Kangaroar
echo 15) Porcuplume
echo 16) Chamceon
echo 17) Woolf
echo 18) Meltibou
echo 19) Porcupid
echo 20) Crocodaid
echo 21) Rhinodos
echo 22) Mountican
echo 23) Elephantom
echo 24) Coyodrill
echo 25) Flamish
echo 26) Pelicair
echo 27) Vulturia
echo 28) Burnamander
echo 29) Plouficouac
echo 30) Se-
echo.
echo Choisissez le monstre que vous souhaitez faire evoluer :
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :chimparonev
if %enter% equ 2 goto :octopetev
if %enter% equ 3 goto :flamizelev
if %enter% equ 4 goto :raccocoonev
if %enter% equ 5 goto :dragorakev
if %enter% equ 6 goto :dolphyleev
if %enter% equ 7 goto :porpoisonev
if %enter% equ 8 goto :pandunaev
if %enter% equ 9 goto :camouseev
if %enter% equ 10 goto :chamemishev
if %enter% equ 11 goto :electriumev
if %enter% equ 12 goto :buffiaev
if %enter% equ 13 goto :vaporcev
if %enter% equ 14 goto :kangaroarev
if %enter% equ 15 goto :porcuplumeev
if %enter% equ 16 goto :chameceonev
if %enter% equ 17 goto :woolfev
if %enter% equ 18 goto :meltibouev
if %enter% equ 19 goto :porcupidev
if %enter% equ 20 goto :crocodaidev
if %enter% equ 21 goto :rhinodosev
if %enter% equ 22 goto :mounticanev
if %enter% equ 23 goto :elephantomev
if %enter% equ 24 goto :coyodrillev
if %enter% equ 25 goto :flamishev
if %enter% equ 26 goto :pelicairev
if %enter% equ 27 goto :vulturiaev
if %enter% equ 28 goto :burnamanderev
if %enter% equ 29 goto :plouficouacev
if %enter% equ 30 goto :seev

:chimparonev
cls
echo Evolution de Chimparon
echo.
echo Chimparon evolue...
echo.
set /a chimparonnum=%chimparonnum%-1
set /a chimparouxnum=%chimparouxnum%+1
set /a terramysticstones=%terramysticstones%-1
pause
goto :main_menu

:octopetev
cls
echo Evolution de Octopet
echo.
echo Octopet evolue...
echo.
set /a octopetnum=%octopetnum%-1
set /a octopronnum=%octopronnum%+1
set /a ordomysticstones=%ordomysticstones%-1
pause
goto :main_menu

:flamizelev
cls
echo Evolution de Flamizel
echo.
echo Flamizel evolue...
echo.
set /a flamizelnum=%flamizelnum%-1
set /a flambeurnum=%flambeurnum%+1
set /a ignismysticstones=%ignismysticstones%-1
pause
goto :main_menu

:raccocoonev
cls
echo Evolution de Raccocoon
echo.
echo Raccocoon evolue...
echo.
set /a raccocoonnum=%raccocoonnum%-1
set /a rancocoonnum=%rancocoonnum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:dragorakev
cls
echo Evolution de Dragorak
echo.
echo Dragorak evolue...
echo.
set /a dragoraknum=%dragoraknum%-1
set /a dragoroinum=%dragoroinum%+1
set /a ignismysticstones=%ignismysticstones%-1
pause
goto :main_menu

:dolphyleev
cls
echo Evolution de Dolphyle
echo.
echo Dolphyle evolue...
echo.
set /a dolphylenum=%dolphylenum%-1
set /a dolphinonum=%dolphinonum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:porpoisonev
cls
echo Evolution de Porpoison
echo.
echo Porpoison evolue...
echo.
set /a porpoisonnum=%porpoisonnum%-1
set /a pufferfishnum=%pufferfishnum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:pandunaev
cls
echo Evolution de Panduna
echo.
echo Panduna evolue...
echo.
set /a pandunanum=%pandunanum%-1
set /a pandinoursnum=%pandinoursnum%+1
set /a perditiomysticstones=%perditiomysticstones%-1
pause
goto :main_menu

:camouseev
cls
echo Evolution de Camouse
echo.
echo Camouse evolue...
echo.
set /a camousenum=%camousenum%-1
set /a camenum=%camenum%+1
set /a perditiomysticstones=%perditiomysticstones%-1
pause
goto :main_menu

:chamemishev
cls
echo Evolution de Chamemish
echo.
echo Chamemish evolue...
echo.
set /a chamemishnum=%chamemishnum%-1
set /a naboorisnum=%naboorisnum%+1
set /a terramysticstones=%terramysticstones%-1
pause
goto :main_menu

:electriumev
cls
echo Evolution de Electrium
echo.
echo Electrium evolue...
echo.
set /a electriumnum=%electriumnum%-1
set /a electrizznum=%electrizznum%+1
set /a ordomysticstones=%ordomysticstones%-1
pause
goto :main_menu

:buffiaev
cls
echo Evolution de Buffia
echo.
echo Buffia evolue...
echo.
set /a buffianum=%buffianum%-1
set /a buffleianum=%buffleianum%+1
set /a ignismysticstones=%ignismysticstones%-1
pause
goto :main_menu

:vaporcev
cls
echo Evolution de Vaporc
echo.
echo Vaporc evolue...
echo.
set /a vaporcnum=%vaporcnum%-1
set /a vapapeurnum=%vapapeurnum%+1
set /a aermysticstones=%aermysticstones%-1
pause
goto :main_menu

:kangarorarev
cls
echo Evolution de Kangaroar
echo.
echo Kangaroar evolue...
echo.
set /a kangaroarnum=%kangaroarnum%-1
set /a kangarounum=%kagarounum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:porcuplumeev
cls
echo Evolution de Porcuplume
echo.
echo Porcuplume evolue...
echo.
set /a porcuplumenum=%porcuplumenum%-1
set /a porplumenum=%porplumenum%+1
set /a terramysticstones=%terramysticstones%-1
pause
goto :main_menu

:chameceonev
cls
echo Evolution de Chameceon
echo.
echo Chameceon evolue...
echo.
set /a chameceonnum=%chameceonnum%-1
set /a chamanishnum=%chamanishnum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:woolfev
cls
echo Evolution de Woolf
echo.
echo Woolf evolue...
echo.
set /a woolfnum=%woolfnum%-1
set /a wolfynum=%wolfynum%+1
set /a perditiomysticstones=%perditiomysticstones%-1
pause
goto :main_menu

:meltibouev
cls
echo Evolution de Meltibou
echo.
echo Meltibou evolue...
echo.
set /a metibounum=%meltibounum%-1
set /a dindonounum=%dindonounum%+1
set /a ordomysticstones=%ordomysticstones%-1
pause
goto :main_menu

:porcupidev
cls
echo Evolution de Porcupid
echo.
echo Porcupid evolue...
echo.
set /a porcupidnum=%porcupidnum%-1
set /a porcupidonnum=%porcupidonnum%+1
set /a terramysticstones=%terramysticstones%-1
pause
goto :main_menu

:crocodaidev
cls
echo Evolution de Crocodaid
echo.
echo Crocodaid evolue...
echo.
set /a crocodaidnum=%crocodaidnum%-1
set /a crocodilaidnum=%crocodilaidnum%+1
set /a aermysticstones=%aermysticstones%-1
pause
goto :main_menu

:rhinodosev
cls
echo Evolution de Rhinodos
echo.
echo Rhinodos evolue...
echo.
set /a rhinodosnum=%rhinodosnum%-1
set /a rhinodegounum=%rhinodegounum%+1
set /a ignismysticstones=%ignismysticstones%-1
pause
goto :main_menu

:mounticanev
cls
echo Evolution de Mountican
echo.
echo Mountican evolue...
echo.
set /a mounticannum=%mounticannum%-1
set /a mounticanisnum=%mounticanisnum%+1
set /a perditiomysticstones=%perditiomysticstones%-1
pause
goto :main_menu

:elephantomev
cls
echo Evolution de Elephantom
echo.
echo Elephantom evolue...
echo.
set /a elephantomnum=%elephantomnum%-1
set /a elephantisumnum=%elephantisumnum%+1
set /a ordomysticstones=%ordomysticstones%-1
pause
goto :main_menu

:coyodrillev
cls
echo Evolution de Coyodrill
echo.
echo Coyodrill evolue...
echo.
set /a coyodrillnum=%coyodrillnum%-1
set /a coyodaqnum=%coyodaqnum%+1
set /a aermysticstones=%aermysticstones%-1
pause
goto :main_menu

:flamishev
cls
echo Evolution de Flamish
echo.
echo Flamish evolue...
echo.
set /a flamishnum=%flamishnum%-1
set /a flamideinum=%flamideinum%+1
set /a ignismysticstones=%ignismysticstones%-1
pause
goto :main_menu

:pelicairev
cls
echo Evolution de Pelicair
echo.
echo Pelicair evolue...
echo.
set /a pelicairnum=%pelicairnum%-1
set /a entrapelicnum=%entrapelicnum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:vulturiaev
cls
echo Evolution de Vulturia
echo.
echo Vulturia evolue...
echo.
set /a vulturianum=%vulturianum%-1
set /a vulturenum=%vulturenum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:burnamanderev
cls
echo Evolution de Burnamander
echo.
echo Burnamander evolue...
echo.
set /a burnamandernum=%burnamandernum%-1
set /a burncalnum=%burncalnum%+1
set /a terramysticstones=%terramysticstones%-1
pause
goto :main_menu

:plouficouacev
cls
echo Evolution de Plouficouac
echo.
echo Plouficouac evolue...
echo.
set /a plouficouacnum=%plouficouacnum%-1
set /a plouficouacdeuxnum=%plouficouacdeuxnum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:seev
cls
echo Evolution de Se-
echo.
echo Se- evolue...
echo.
set /a senum=%senum%-1
set /a segonum=%segonum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:ev_secgen
echo 1) Chimparon
echo 2) Octopet
echo 3) Flamizel
echo 4) Raccocoon
echo 5) Dragorak
echo 6) Dolphyle
echo 7) Porpoison
echo 8) Panduna
echo 9) Camouse
echo 10) Chamemish
echo 11) Electrium
echo 12) Buffia
echo 13) Vaporc
echo 14) Kangaroar
echo 15) Porcuplume
echo 16) Chamceon
echo 17) Woolf
echo 18) Meltibou
echo 19) Porcupid
echo 20) Crocodaid
echo 21) Rhinodos
echo 22) Mountican
echo 23) Elephantom
echo 24) Coyodrill
echo 25) Flamish
echo 26) Pelicair
echo 27) Vulturia
echo 28) Burnamander
echo 29) Plouficouac
echo 30) Se-
echo.
echo Choisissez le monstre que vous souhaitez faire evoluer :
echo.
set /p enter="Entree : "
if %enter% equ 1 goto :chimparouxev
if %enter% equ 2 goto :octopronev
if %enter% equ 3 goto :flambeurev
if %enter% equ 4 goto :rancocoonev
if %enter% equ 5 goto :dragoroiev
if %enter% equ 6 goto :dolphinoev
if %enter% equ 7 goto :pufferfishev
if %enter% equ 8 goto :pandinoursev
if %enter% equ 9 goto :cameev
if %enter% equ 10 goto :naboorisev
if %enter% equ 11 goto :electrizzev
if %enter% equ 12 goto :buffleiaev
if %enter% equ 13 goto :vapapeurev
if %enter% equ 14 goto :kangarouev
if %enter% equ 15 goto :porplumeev
if %enter% equ 16 goto :chamanishev
if %enter% equ 17 goto :wolfyev
if %enter% equ 18 goto :dindonouev
if %enter% equ 19 goto :porcupidonev
if %enter% equ 20 goto :crocodilaidev
if %enter% equ 21 goto :rhinodegouev
if %enter% equ 22 goto :mounticanisev
if %enter% equ 23 goto :elephantomiusev
if %enter% equ 24 goto :coyodaqev
if %enter% equ 25 goto :flamideiev
if %enter% equ 26 goto :entrapelicev
if %enter% equ 27 goto :vultureev
if %enter% equ 28 goto :burncalev
if %enter% equ 29 goto :plouficouacdeuxev
if %enter% equ 30 goto :segoev

:chimparouxev
cls
echo Evolution de Chimparoux
echo.
echo Chimparon evolue...
echo.
set /a chimparouxnum=%chimparouxnum%-1
set /a chimpatriquenum=%chimpatriquenum%+1
set /a terramysticstones=%terramysticstones%-1
pause
goto :main_menu

:octopetronev
cls
echo Evolution de Octopetron
echo.
echo Octopetron evolue...
echo.
set /a octopetronnum=%octopetronnum%-1
set /a octonnum=%octonnum%+1
set /a ordomysticstones=%ordomysticstones%-1
pause
goto :main_menu

:flambeurev
cls
echo Evolution de Flambeur
echo.
echo Flambeur evolue...
echo.
set /a flambeurnum=%flambeurnum%-1
set /a phenixenum=%phenixenum%+1
set /a ignismysticstones=%ignismysticstones%-1
pause
goto :main_menu

:rancocoonev
cls
echo Evolution de Rancocoon
echo.
echo Rancocoon evolue...
echo.
set /a rancocoonnum=%rancocoonnum%-1
set /a rancoonnum=%rancoonnum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:dragoroiev
cls
echo Evolution de Dragoroi
echo.
echo Dragoroi evolue...
echo.
set /a dragoroinum=%dragoroinum%-1
set /a dragoldoraknum=%dragoldoraknum%+1
set /a ignismysticstones=%ignismysticstones%-1
pause
goto :main_menu

:dolphinoev
cls
echo Evolution de Dolphino
echo.
echo Dolpino evolue...
echo.
set /a dolphylenum=%dolphylenum%-1
set /a dolphinonum=%dolphinonum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:pufferfishev
cls
echo Evolution de Pufferfish
echo.
echo Pufferfish evolue...
echo.
set /a pufferfishnum=%pufferfishnum%-1
set /a fugunum=%fugunum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:pandinoursev
cls
echo Evolution de Pandinours
echo.
echo Pandinours evolue...
echo.
set /a pandinoursnum=%pandinoursnum%-1
set /a pandipandanum=%pandipandanum%+1
set /a perditiomysticstones=%perditiomysticstones%-1
pause
goto :main_menu

:cameev
cls
echo Evolution de Came
echo.
echo Came evolue...
echo.
set /a camenum=%camenum%-1
set /a camourenum=%camoruenum%+1
set /a perditiomysticstones=%perditiomysticstones%-1
pause
goto :main_menu

:naboorisev
cls
echo Evolution de Nabooris
echo.
echo Nabooris evolue...
echo.
set /a naboorisnum=%naboorisnum%-1
set /a chamechnum=%chamechnum%+1
set /a terramysticstones=%terramysticstones%-1
pause
goto :main_menu

:electrizzev
cls
echo Evolution de Electrizz
echo.
echo Electrizz evolue...
echo.
set /a electrizznum=%electrizznum%-1
set /a electrumnum=%electrumnum%+1
set /a ordomysticstones=%ordomysticstones%-1
pause
goto :main_menu

:buffleiaev
cls
echo Evolution de Buffleia
echo.
echo Buffleia evolue...
echo.
set /a buffleianum=%buffleianum%-1
set /a bufflanum=%bufflanum%+1
set /a ignismysticstones=%ignismysticstones%-1
pause
goto :main_menu

:vapapeurcev
cls
echo Evolution de Vapapeur
echo.
echo Vapapeur evolue...
echo.
set /a vapapeurnum=%vapapeurcnum%-1
set /a vaporcinetnum=%vaporcinetnum%+1
set /a aermysticstones=%aermysticstones%-1
pause
goto :main_menu

:kangarouarev
cls
echo Evolution de Kangarou
echo.
echo Kangarou evolue...
echo.
set /a kangarounum=%kangarounum%-1
set /a kajarounum=%kajarounum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:porplumeev
cls
echo Evolution de Porplume
echo.
echo Porplume evolue...
echo.
set /a porplumenum=%porplumenum%-1
set /a porquaipiquenum=%porquaipiquenum%+1
set /a terramysticstones=%terramysticstones%-1
pause
goto :main_menu

:chamanishev
cls
echo Evolution de Chamanish
echo.
echo Chamanish evolue...
echo.
set /a chamanishnum=%chamanishnum%-1
set /a chameceonishnum=%chameceonishnum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:wolfyev
cls
echo Evolution de Wolfy
echo.
echo Wolfy evolue...
echo.
set /a wolfynum=%wolfynum%-1
set /a fluffynum=%fluffynum%+1
set /a perditiomysticstones=%perditiomysticstones%-1
pause
goto :main_menu

:dindonouev
cls
echo Evolution de Dindonou
echo.
echo Dindonou evolue...
echo.
set /a dindonounum=%dindonounum%-1
set /a dinodounum=%dinodounum%+1
set /a ordomysticstones=%ordomysticstones%-1
pause
goto :main_menu

:porcupidonev
cls
echo Evolution de Porcupidon
echo.
echo Porcupidon evolue...
echo.
set /a porcupidonnum=%porcupidonnum%-1
set /a porcupidiconnum=%porcupidiconnum%+1
set /a terramysticstones=%terramysticstones%-1
pause
goto :main_menu

:crocodilaidev
cls
echo Evolution de Crocodilaid
echo.
echo Crocodilaid evolue...
echo.
set /a crocodilaidnum=%crocodilaidnum%-1
set /a captainkrokonum=%captainkrokonum%+1
set /a aermysticstones=%aermysticstones%-1
pause
goto :main_menu

:rhinodegouev
cls
echo Evolution de Rhinodegou
echo.
echo Rhinodegou evolue...
echo.
set /a rhinodegounum=%rhinodegounum%-1
set /a rhinodegounum=%rhinodegounum%+1
set /a ignismysticstones=%ignismysticstones%-1
pause
goto :main_menu

:mounticanisev
cls
echo Evolution de Mounticanis
echo.
echo Mounticanis evolue...
echo.
set /a mounticanisnum=%mounticanisnum%-1
set /a mountypythonnum=%mountypythonnum%+1
set /a perditiomysticstones=%perditiomysticstones%-1
pause
goto :main_menu

:elephantisumev
cls
echo Evolution de Elephantisum
echo.
echo Elephantisum evolue...
echo.
set /a elephantisumnum=%elephantisumnum%-1
set /a dumbonum=%dumbonum%+1
set /a ordomysticstones=%ordomysticstones%-1
pause
goto :main_menu

:coyodrillev
cls
echo Evolution de Coyodaq
echo.
echo Coyodaq evolue...
echo.
set /a coyodaqnum=%coyodaqnum%-1
set /a bipbipcoyotenum=%bipbipcoyotenum%+1
set /a aermysticstones=%aermysticstones%-1
pause
goto :main_menu

:flamideiev
cls
echo Evolution de Flamidei
echo.
echo Flamidei evolue...
echo.
set /a flamideinum=%flamideinum%-1
set /a flamflamnum=%flamflamnum%+1
set /a ignismysticstones=%ignismysticstones%-1
pause
goto :main_menu

:entrapelicev
cls
echo Evolution de Entrapelic
echo.
echo Entrapelic evolue...
echo.
set /a entrapelicnum=%entrapelicnum%-1
set /a pelicanosnum=%pelicanosnum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:vultureev
cls
echo Evolution de Vulture
echo.
echo Vulture evolue...
echo.
set /a vulturenum=%vulturenum%-1
set /a rapaceranum=%rapaceranum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:burnamanderev
cls
echo Evolution de Burncal
echo.
echo Burncal evolue...
echo.
set /a burncalnum=%burncalnum%-1
set /a hamgeurnum=%hamgeurnum%+1
set /a terramysticstones=%terramysticstones%-1
pause
goto :main_menu

:plouficouacev
cls
echo Evolution de Plouficouac Lvl. 2
echo.
echo Plouficouac Lvl. 2 evolue...
echo.
set /a plouficouacdeuxnum=%plouficouacdeuxnum%-1
set /a plouficouactroisnum=%plouficouactroisnum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

:seev
cls
echo Evolution de Se-Go
echo.
echo Se-Go evolue...
echo.
set /a segonum=%segonum%-1
set /a segokunum=%segokunum%+1
set /a aquamysticstones=%aquamysticstones%-1
pause
goto :main_menu

pause>nul  