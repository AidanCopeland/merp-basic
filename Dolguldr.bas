���� ��: � REPT� � � � ��� "Select Countryside (1) or Dol Guldur (2)":� I:PLC�I:� I���� (I) � I� � I� � � � ��� PLC � �,L �� REPT� � � � 9��:� "Select location around Dol Guldur" i�� "Southern Mirkwood (day)             - 1" ��� "Emyn Guldur (day)                   - 2" ��� "Men Uruk (day)                      - 3" ��� "Nan Lanc (day)                      - 4" )�� "Rad Angalaladh (day)                - 5" Y�� "Southern Mirkwood (night)           - 6" ��� "Emyn Guldur (night)                 - 7" ��� "Men Uruk (night)                    - 8" ��� "Nan Lanc (night)                    - 9" �� "Rad Angalaladh (night)              - 10" J�� I:PLC2�I:� I���� (I) � I� � I�
 � � � ��MERP�:� PLC2 � �,�,�,�, ,,,,, ��� �:�  ��� �:�  ��� �:�  ��� �:�  � � �:�  �� �:�  �� �:�  � �:�  � �:�   � � ;� PLC2� � PLC2�PLC2� V� TIME:� DIST:� CHANCE �	� "Distance travelled is ";DIST;" miles" �
� "Time taken is ";TIME;" hours" �X����d:� X�CHANCE � � � �X����d �� � �� I� �  	� CH:� PLC2�I � CHANCE�CH � I -� E$:� X�CHANCE � �  7� � LL� REPT� � � U �M�:� "Select location within Dol Guldur":� "The Precipices                      - 1" �N� "1st-6th Levels                      - 2" O� "Mines                               - 3" 4P� "7th Level                           - 4" dQ� "The Web                             - 5" �R� "1st-3rd Strata                      - 6" �S� "4th Stratum                         - 7" �T� I:PLC2�I:� I����(I) � I� � I� � � T U� PLC2 � V,W,X,Y,Z,[,\ +V� 4:� ` ;W� 5:� ` KX� 6:� ` [Y� 7:� ` kZ� 8:� ` {[� 9:� ` �\� ::� ` �`� "Time interval is 4 hours (if stationary); 2 hours if moving" �a� CHANCE �eX����d:� X�CHANCE � � � fX����d g� > h� I� �  =j� CH:� PLC2�I � CHANCE�CH El� I am� E$:� X�CHANCE � � h ky� � x�� 5,5,20 ��� 6,6,20 ��� 4,5,25 ��� 1,1,45 ��� 5,5,20 ��� 4,3,20 ��� 4,4,20 ��� 3,3,25 ��� 1,5,45 ��� 4,3,20 �� 1,0,1,1,0,"Trap" �� 2,2,0,0,0,"Lair" >�� 3,3,2,2,1,"Natural Disaster" V�� 4,4,3,0,2,"Ruins" x�� 5,5,6,0,4,"Settlement/Camp" ��� 9,9,10,0,8,"Stream/Creek" ��� 0,0,0,0,10,"Caravan" ��� 12,0,0,0,13,"Hunting Party" ��� 14,10,14,0,0,"Raiding Pary (Human)" #�� 0,0,0,0,17,"Human Travellers" H�� 17,11,15,0,22,"Woodmen Patrol" v�� 20,12,18,12,23,"Orc/Troll Large Patrol" ��� 25,17,28,32,28,"Orc/Troll Normal Patrol" ��� 27,18,31,36,31,"Orc/Troll Raiding Party" �� 0,0,33,0,33,"Orc/Troll Tribtue Caravan" )�� 30,19,35,46,34,"Uruk-hai Patrol" P�� 32,20,37,50,35,"Olog-hai Patrol" r�� 33,21,0,0,37,"Elven Scouts" ��� 34,22,0,0,38,"Elven Patrol (small)" ��� 0,0,0,0,39,"Elven Travellers" ��� 0,0,0,0,40,"Dwarven Trading Party" �� 0,0,0,0,41,"Dwarven Travellers" /�� 40,28,42,60,44,"Bats (N)" U�� 44,30,44,0,47,"Black Bears (N)" q�� 49,32,47,0,51,"Boars" ��� 50,0,48,0,52,"Coireals" ��� 60,37,60,70,57,"Crebain" ��� 61,38,61,0,58,"Eagles" ��� 62,43,63,77,59,"Fell Beasts" �� 64,45,65,0,62,"Forest Trolls (N)" :�� 69,50,69,0,67,"Giant Spiders" ^�� 0,55,70,82,0,"Great Bats (N)" ��� 70,56,71,0,68,"Great Eagles" ��� 0,59,0,0,0,"Great Falcons" ��� 72,64,72,0,71,"Hill Trolls (N)" ��� 77,67,76,0,74,"Lesser Huorn"  �� 80,70,78,0,77,"Greater Huorn" - �� 83,72,81,0,81,"Nimfiar" X  � 85,73,83,0,83,"Short-Eared Owls (N)" v � 90,79,86,85,88,"Spider" � � 94,90,93,90,93,"Wargs (N)" � � 100,100,100,100,100,"Wolves" � 4� 60 � 5� 80 � 6� 25 � 7� 90 � 8� 35 � 9� 40 � :� 35 !>� 5,2,2,0,5,1,1,"Trap" 2!?� 14,7,20,0,25,0,0,"Bats" U!@� 0,0,25,0,28,0,0,"Cave Worms" |!A� 0,10,35,0,38,0,0,"Giant Spiders" �!B� 19,13,45,0,48,0,0,"Great Bats" �!C� 70,55,0,50,63,55,69,"Guards (2-5)" "D� 0,60,0,60,68,0,0,"Large Patrol (leaving fortress)" 9"E� 75,70,0,70,71,71,84,"Messenger (Uruk or Hildo)" w"F� 0,81,0,80,0,81,89,"Servants (Orc {65%} or Hildo {35%})" �"G� 80,84,65,0,81,84,92,"Spiders" �"H� 90,93,85,91,0,89,0,"Thralls" �"I� 97,98,100,95,99,94,0,"Wargs" #J� 100,100,0,100,100,100,100,"Special" +#�� "There are no encounters" E#��� "merpstra",W,ALL g#�� "The encounter is with ";E$ �#��� "merpstra",W,ALL   