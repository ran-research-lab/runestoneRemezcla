======================
Estucturas de decisión
======================



Ejercicio 1
===========

Deseamos crear un programa tal que si la variable instrumento tiene valor 1, entonces 
la pieza consiste de 8 compases de guitarra, de lo contrario 8 compases de drums. 
Coloca las siguientes instrucciones en orden y con las indentaciones necesarias para que suceda.

Asume que a la variable ``instrumento`` le ha sido asignado un valor al principio del programa.

.. parsonsprob:: remezcla_if01
    :grader: dag

    -----
    if instrumento == 1:  #tag:0; depends:;
    =====
        fitMedia(AK_UNDERDOG_ACOUSTIC_GUITAR,1,1,9) #tag:1; depends: 0;
    =====
    else: #tag:2; depends: 1;
    =====
        fitMedia(AK_UNDOG_PEC_DRUMS,1,1,9) #tag:3; depends: 2;
    =====
    for instrumento in [1]: #distractor   
    =====
    if else in [instrumento, 1]: #distractor
        

Ejercicio 2
===========

Trata de hacer un programa que haga lo mismo que el del ejercicio 1 pero usando  las  instrucciones que se proveen a continuación.


Nuevamente, asume que a la variable ``instrumento`` le ha sido asignado un valor al principio del programa.


.. parsonsprob:: remezcla_if02
    :grader: dag

    -----
    if instrumento == 1:  #tag:0; depends:;
    =====
        sonido = AK_UNDERDOG_ACOUSTIC_GUITAR   #tag:1; depends:0;
    =====
    else: #tag:2; depends: 1;
    =====
        sonido = AK_UNDOG_PEC_DRUMS   #tag:3; depends:2;
    =====
    fitMedia(sonido,1,1,9) #tag:4; depends: 3;  

        

Ejercicio 3
===========

Trata de hacer un programa que imprima el nombre en español del valor de la variable x, e.g. imprime "uno", "dos" u "otro".


Asume que a la variable ``x`` le ha sido asignado un valor al principio del programa.


.. parsonsprob:: remezcla_if03
    :grader: dag

    -----
    if x == 1:  #tag:0; depends:;
    =====
        print("uno")   #tag:1; depends:0;
    =====
    elif x == 2: #tag:2; depends: 1;
    =====
        print("dos")   #tag:3; depends:2;
    =====
    else: #tag:4; depends: 3;
    =====
        print("otro")   #tag:5; depends:4; 
