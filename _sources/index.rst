=====================
Remezcla
=====================


Ejercicio 0
===========

.. dragndrop:: dnd1
    :prim_comp: ASSIGNMENT
    :feedback: This is feedback.
    :match_1: un string|||"0---0---0---0---"
    :match_2: una variable|||compas
    :match_3: un nombre de un sonido en EarSketch|||YG_POP_KICK_3
    :match_4: una instrucción que se usa para repetir bloques de instrucciones|||for
    :match_5: la función que se usa para crear ritmos|||makeBeat


    Parea.


Ejercicio 1
===========

Deseamos recrear lo que hace las siguientes instrucciones de EarSketch, pero usando for loops.

::

      kick = YG_POP_KICK_3
      snare = YG_ALT_POP_SNARE_5

      makeBeat(kick, 1, 2, "0---0---0---0---")
      makeBeat(kick, 1, 5, "0---0---0---0---")
      makeBeat(kick, 1, 7, "0---0---0---0---")

      makeBeat(snare, 2, 2, "0---0---0---0---")
      makeBeat(snare, 2, 4, "0---0---0---0---")
      makeBeat(snare, 2, 8, "0---0---0---0---")


.. parsonsprob:: simple_dag_src02
    :grader: dag

    -----
    kick = YG_POP_KICK_3 #tag:0; depends:;
    =====
    snare = YG_ALT_POP_SNARE_5 #tag:1; depends:;
    =====
    for compas in [2,5,7]: #tag:2; depends: 0;
    =====
        makeBeat(kick, 1, compas, "0<span>-</span><span>-</span><span>-</span>0<span>-</span><span>-</span><span>-</span>0<span>-</span><span>-</span><span>-</span>0<span>-</span><span>-</span><span>-</span>") #tag:3; depends: 2;
    =====
    for compas in [2,4,8]: #tag:4; depends: 1,2,3;
    =====
        makeBeat(snare, 2, compas, "0<span>-</span><span>-</span><span>-</span>0<span>-</span><span>-</span><span>-</span>0<span>-</span><span>-</span><span>-</span>0<span>-</span><span>-</span><span>-</span>") #tag:5; depends: 2,3,4;
    =====
        makeBeat(compas, 2, 2, "0<span>-</span><span>-</span><span>-</span>0<span>-</span><span>-</span><span>-</span>0<span>-</span><span>-</span><span>-</span>0<span>-</span><span>-</span><span>-</span>") #distractor
    =====
        makeBeat(2, 1, kick, "0<span>-</span><span>-</span><span>-</span>0<span>-</span><span>-</span><span>-</span>0<span>-</span><span>-</span><span>-</span>0<span>-</span><span>-</span><span>-</span>") #distractor


Ejercicio 2
===========

::

      kick = YG_POP_KICK_3
      snare = YG_ALT_POP_SNARE_5

      makeBeat(kick, 1, 2, "0---0---0---0---")
      makeBeat(kick, 1, 4, "0---0---0---0---")
      makeBeat(kick, 1, 6, "0---0---0---0---")

      makeBeat(snare, 2, 2, "--00--00--00--00")
      makeBeat(snare, 2, 4, "--00--00--00--00")
      makeBeat(snare, 2, 6, "--00--00--00--00")


.. parsonsprob:: simple_dag_src03
    :grader: dag

    -----
    kick = YG_POP_KICK_3 #tag:0; depends:;
    =====
    snare = YG_ALT_POP_SNARE_5 #tag:1; depends:;
    =====
    kickPattern = "0<span>-</span><span>-</span><span>-</span>0<span>-</span><span>-</span><span>-</span>0<span>-</span><span>-</span><span>-</span>0<span>-</span><span>-</span><span>-</span>" #tag:2; depends:;
    =====
    snarePattern = "<span>-</span><span>-</span>00<span>-</span><span>-</span>00<span>-</span><span>-</span>00<span>-</span><span>-</span>00" #tag:3; depends:;
    =====
    for compas in [2,4,6]: #tag:4; depends: 0,1,2,3;
    =====
        makeBeat(kick, 1, compas, kickPattern) #tag:5; depends: 4;
    =====
        makeBeat(snare, 2, compas, snarePattern) #tag:6; depends: 4;
    =====
    for compas in [1,2,3]: #distractor   



