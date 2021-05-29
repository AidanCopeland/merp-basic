1000 RANDOMIZE TIMER:IF REPT=1 THEN GOTO 1006
1001 PRINT "Select type of terrain"
1002 PRINT "Roadside and Wilderness             - 1"
1003 PRINT "Town and City                       - 2"
1004 PRINT "Ocean                               - 3"
1005 INPUT I: PLC = I: IF I <> INT (I) OR I < 1 OR I >3 THEN GOTO 1005
1006 ON PLC GOTO 1009, 1100, 1200
1009 IF REPT = 1 THEN GOTO 1050
1010 CLS: PRINT "Select location"
1011 PRINT "Anorien                             - 1"
1012 PRINT "Druedain Forest                     - 2"
1013 PRINT "Westfold/Eastfold                   - 3"
1014 PRINT "Westmarch                           - 4"
1015 PRINT "Dunland                             - 5"
1016 PRINT "Gwathlo Basin                       - 6"
1017 PRINT "Barrow-downs                        - 7"
1018 PRINT "The Shire                           - 8"
1019 PRINT "Old Arthedain                       - 9"
1020 PRINT "Ice Bay                             - 10"
1021 PRINT "Forochel                            - 11"
1022 PRINT "Rammas Formen                       - 12"
1023 PRINT "Talath Muil                         - 13"
1024 PRINT "Numeriador                          - 14"
1025 PRINT "Hills of Evendim                    - 15"
1026 PRINT "North Downs                         - 16"
1027 PRINT "East Emnet                          - 17"
1028 PRINT "The Wold                            - 18"
1029 PRINT "Emyn Muil                           - 19"
1030 PRINT "Dead Marshes                        - 20"
1031 PRINT "More                                - 21"
1032 INPUT I: PLC2 = I: IF I <> INT(I) OR I < 1 OR I > 21 THEN GOTO 1032
1033 IF I < 21 THEN GOTO 1050
1034 CLS
1035 PRINT "Ithilien                            - 21"
1036 PRINT "Dagorlad                            - 22"
1037 PRINT "Rhovanion Grasslands                - 23"
1038 PRINT "Greenwood                           - 24"
1040 INPUT I: PLC2 = I: IF I <> INT(I) OR I < 1 OR I > 24 THEN GOTO 1032
1050 MERP = 1: ON PLC2 GOTO 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074
1051 RESTORE 2001: GOTO 1080
1052 RESTORE 2002: GOTO 1080
1053 RESTORE 2003: GOTO 1080
1054 RESTORE 2004: GOTO 1080
1055 RESTORE 2005: GOTO 1080
1056 RESTORE 2006: GOTO 1080
1057 RESTORE 2007: GOTO 1080
1058 RESTORE 2008: GOTO 1080
1059 RESTORE 2009: GOTO 1080
1060 RESTORE 2010: GOTO 1080
1061 RESTORE 2011: GOTO 1080
1062 RESTORE 2012: GOTO 1080
1063 RESTORE 2013: GOTO 1080
1064 RESTORE 2014: GOTO 1080
1065 RESTORE 2015: GOTO 1080
1066 RESTORE 2016: GOTO 1080
1067 RESTORE 2017: GOTO 1080
1068 RESTORE 2018: GOTO 1080
1069 RESTORE 2019: GOTO 1080
1070 RESTORE 2020: GOTO 1080
1071 RESTORE 2021: GOTO 1080
1072 RESTORE 2022: GOTO 1080
1073 RESTORE 2023: GOTO 1080
1074 RESTORE 2024: GOTO 1080
1080 CLS
1081 READ TIME: READ DIST: READ CHANCE
1082 PRINT "Distance travelled is "; DIST; " miles"
1083 PRINT "Time taken is "; TIME; " hours"
1084 X = RND * 100: IF X > CHANCE THEN GOTO 5000
1085 X = RND * 100
1086 RESTORE 2025
1087 FOR I = 1 TO 24
1088 READ CH: IF PLC2 = I THEN CHANCE = CH
1089 NEXT I
1090 READ E$: IF X > CHANCE THEN GOTO 1087
1091 GOTO 5100
1100 IF REPT=1 THEN GOTO 1114
1101 PRINT: PRINT "Select urban area"
1102 PRINT "Minas Tirith: level 1               - 1"
1103 PRINT "Minas Tirith: level 2               - 2"
1104 PRINT "Minas Tirith: level 3               - 3"
1105 PRINT "Minas Tirith: level 4               - 4"
1106 PRINT "Minas Tirith: level 5               - 5"
1107 PRINT "Minas Tirith: level 6               - 6"
1108 PRINT "Minas Tirith: level 7               - 7"
1109 PRINT "Larach Duhnnan                      - 8"
1110 PRINT "Tharbad                             - 9"
1111 PRINT "Bree                                - 10"
1112 PRINT "Lake-town                           - 11"
1113 INPUT I: PLC2 = I: IF I <> INT(I) OR I < 1 OR I > 11 THEN GOTO 1113
1114 MERP = 1: ON PLC2 GOTO 1115, 1116, 1117, 1118, 1119, 1120, 1121, 1122, 1123, 1124, 1125
1115 RESTORE 2201: GOTO 1130
1116 RESTORE 2202: GOTO 1130
1117 RESTORE 2203: GOTO 1130
1118 RESTORE 2204: GOTO 1130
1119 RESTORE 2205: GOTO 1130
1120 RESTORE 2206: GOTO 1130
1121 RESTORE 2207: GOTO 1130
1122 RESTORE 2208: GOTO 1130
1123 RESTORE 2209: GOTO 1130
1124 RESTORE 2210: GOTO 1130
1125 RESTORE 2211: GOTO 1130
1130 CLS: READ TIME: READ DIST: READ CHANCE
1131 PRINT "Time taken is ";TIME; " hours": PRINT "Distance travelled is ";DIST;" miles"
1132 X = RND * 100: IF X > CHANCE THEN GOTO 5000
1133 X = RND * 100: RESTORE 2220
1134 FOR I = 1 TO 11
1135 READ CH: IF PLC2 = I THEN CHANCE = CH
1136 NEXT I
1137 READ E$: IF X > CHANCE THEN GOTO 1134
1140 GOTO 5100
1200 IF REPT = 1 THEN GOTO 1210
1201 PRINT: PRINT "Select ocean area"
1202 PRINT "South coast of Eriador              - 1"
1203 PRINT "West coast of Eriador               - 2"
1204 PRINT "North coast of Eriador              - 3"
1205 PRINT "Ice Bay                             - 4"
1206 INPUT I: PLC2 = I: IF I <> INT(I) OR I < 1 OR I > 4 THEN GOTO 1206
1210 MERP = 1: ON PLC2 GOTO 1211, 1212, 1213, 1214
1211 RESTORE 2301: GOTO 1220
1212 RESTORE 2302: GOTO 1220
1213 RESTORE 2303: GOTO 1220
1214 RESTORE 2304: GOTO 1220
1220 CLS: READ TIME: READ DIST: READ CHANCE
1221 PRINT "Time taken is ";TIME;" hours": PRINT "Distance travelled is ";DIST;" miles"
1222 X = RND * 100: IF X > CHANCE THEN GOTO 5000
1223 X = RND * 100: RESTORE 2310
1224 FOR I = 1 TO 4
1225 READ CH: IF PLC2 = I THEN CHANCE = CH
1226 NEXT I
1227 READ E$: IF X > CHANCE THEN GOTO 1224
1230 GOTO 5100
2001 DATA 4, 8, 10
2002 DATA 2, 2, 25
2003 DATA 4, 10, 20
2004 DATA 4, 10, 15
2005 DATA 4, 10, 15
2006 DATA 4, 10, 20
2007 DATA 2, 2, 25
2008 DATA 5, 10, 20
2009 DATA 5, 10, 15
2010 DATA 8, 7, 10
2011 DATA 8, 7, 7
2012 DATA 4, 10, 15
2013 DATA 8, 3, 10
2014 DATA 8, 10, 5
2015 DATA 8, 10, 15
2016 DATA 6, 10, 10
2017 DATA 4, 10, 5
2018 DATA 5, 10, 5
2019 DATA 5, 10, 5
2020 DATA 8, 10, 10
2021 DATA 4, 10, 20
2022 DATA 4, 10, 5
2023 DATA 4, 10, 10
2024 DATA 8, 10, 20
2025 DATA 1, 7, 1, 1, 1, 1, 1, 1, 1, 4, 3, 1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, "General Trap"
2026 DATA 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, "Avalanche"
2027 DATA 3, 0, 0, 2, 2, 3, 0, 2, 2, 0, 0, 0, 4, 3, 3, 0, 3, 0, 0, 0, 2, 0, 0, 0, "Flash Flood"
2028 DATA 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 3, 0, 0, 0, 2, 0, 0, 0, "Forest Fire"
2029 DATA 0, 0, 2, 4, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 6, 2, 0, 0, 0, 2, 3, 0, "Grass Fire"
2030 DATA 6, 10, 3, 5, 3, 5, 8, 5, 6, 6, 4, 5, 8, 5, 9, 5, 7, 10, 3, 0, 4, 3, 4, 3, "Cave/Cavern/Lair"
2031 DATA 8, 0, 4, 6, 4, 0, 0, 7, 8, 0, 0, 6, 9, 6, 11, 8, 0, 13, 0, 0, 5, 4, 5, 0, "Mine/Quarry"
2032 DATA 9, 15, 5, 7, 5, 7, 35, 8, 11, 7, 5, 7, 11, 7, 13, 10, 8, 14, 4, 2, 6, 8, 6, 4, "Burial Sites"
2033 DATA 11, 18, 8, 8, 8, 9, 36, 10, 18, 0, 0, 8, 13, 8, 18, 12, 10, 15, 5, 3, 9, 11, 8, 6, "Ruins"
2034 DATA 13, 19, 15, 10, 9, 12, 0, 20, 24, 11, 8, 9, 14, 11, 20, 13, 12, 16, 8, 4, 13, 12, 12, 7, "Settlement/Camp"
2035 DATA 14, 20, 16, 11, 10, 13, 37, 21, 25, 0, 0, 11, 15, 12, 21, 14, 13, 17, 9, 11, 14, 13, 13, 9, "Bat"
2036 DATA 0, 22, 0, 0, 11, 0, 38, 0, 26, 12, 9, 12, 17, 14, 25, 16, 14, 18, 10, 0, 15, 0, 0, 10, "Cave Bear"
2037 DATA 15, 24, 17, 12, 12, 14, 0, 0, 28, 13, 10, 15, 21, 20, 29, 17, 15, 19, 11, 0, 18, 0, 0, 12, "Black Bear"
2038 DATA 0, 0, 0, 0, 0, 0, 0, 0, 29, 15, 11, 18, 26, 22, 31, 18, 0, 0, 0, 0, 0, 0, 0, 13, "Great Bear"
2039 DATA 16, 26, 18, 14, 13, 16, 42, 23, 32, 17, 12, 20, 28, 24, 33, 20, 17, 22, 13, 20, 20, 16, 16, 15, "Bees/Hornets"
2040 DATA 0, 0, 0, 0, 0, 0, 0, 0, 34, 19, 14, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Dumbledoors"
2041 DATA 0, 0, 0, 0, 0, 0, 0, 0, 35, 20, 15, 25, 30, 25, 34, 21, 0, 0, 0, 0, 0, 0, 0, 0, "Gorcrow"
2042 DATA 0, 0, 0, 0, 0, 0, 43, 0, 36, 22, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Mewlips"
2043 DATA 17, 29, 0, 15, 14, 17, 44, 24, 37, 0, 0, 26, 31, 28, 36, 22, 19, 23, 14, 21, 26, 17, 18, 18, "Wild Boar"
2044 DATA 18, 32, 19, 17, 16, 18, 45, 25, 38, 0, 0, 27, 32, 30, 38, 23, 22, 26, 17, 22, 29, 25, 27, 19, "Large Cat"
2045 DATA 19, 33, 20, 19, 17, 20, 46, 26, 40, 23, 18, 28, 33, 31, 40, 25, 24, 29, 20, 24, 32, 28, 31, 20, "Great Bird"
2046 DATA 20, 0, 0, 20, 0, 0, 47, 0, 41, 0, 0, 0, 34, 32, 41, 27, 0, 30, 22, 25, 33, 29, 32, 21, "Fell Beast"
2047 DATA 0, 0, 0, 0, 0, 0, 48, 27, 43, 28, 23, 30, 36, 33, 43, 28, 0, 0, 0, 50, 34, 0, 0, 22, "Neekerbreekers"
2048 DATA 0, 0, 0, 0, 0, 0, 0, 0, 46, 30, 25, 34, 37, 39, 45, 30, 0, 0, 0, 0, 0, 0, 0, 0, "Moose"
2049 DATA 0, 0, 0, 0, 0, 0, 0, 0, 48, 49, 44, 39, 47, 45, 47, 31, 0, 0, 0, 0, 0, 0, 0, 0, "Losrandir"
2050 DATA 22, 35, 23, 23, 20, 21, 49, 30, 53, 52, 48, 43, 52, 52, 55, 35, 29, 32, 24, 51, 48, 34, 37, 25, "Kine/Elk/Deer"
2051 DATA 0, 36, 24, 24, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 34, 27, 52, 49, 35, 38, 0, "Giant Marten"
2052 DATA 0, 37, 25, 25, 22, 22, 50, 31, 54, 0, 0, 0, 0, 53, 56, 37, 31, 38, 29, 55, 50, 38, 39, 26, "King Spider"
2053 DATA 23, 38, 26, 26, 23, 23, 51, 32, 5, 0, 0, 0, 53, 54, 57, 40, 32, 43, 33, 60, 52, 43, 41, 27, "Poisonous Snake"
2054 DATA 0, 0, 0, 27, 0, 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 47, 35, 0, 0, 0, 43, 0, "Egil's Viper"
2055 DATA 24, 41, 27, 29, 28, 24, 53, 33, 58, 57, 54, 54, 63, 57, 63, 45, 38, 49, 38, 65, 54, 44, 45, 30, "Wolves"
2056 DATA 25, 42, 0, 30, 30, 25, 54, 34, 61, 60, 56, 56, 65, 59, 64, 47, 40, 50, 40, 66, 58, 48, 46, 31, "Wild Dogs/Jackals"
2057 DATA 39, 52, 38, 38, 40, 33, 55, 45, 65, 73, 73, 66, 67, 69, 65, 58, 57, 56, 45, 67, 70, 55, 55, 35, "Other Animals"
2058 DATA 40, 53, 0, 39, 41, 34, 65, 0, 67, 74, 74, 68, 68, 71, 66, 60, 58, 57, 46, 69, 0, 57, 56, 37, "Minor Wight"
2059 DATA 0, 54, 0, 40, 0, 0, 70, 0, 68, 0, 0, 69, 69, 72, 0, 61, 0, 58, 47, 70, 0, 58, 57, 38, "Lesser Wight"
2060 DATA 0, 0, 0, 0, 0, 0, 73, 0, 69, 0, 0, 0, 0, 73, 0, 62, 0, 0, 0, 71, 0, 59, 0, 39, "Major Wight"
2061 DATA 41, 55, 0, 41, 44, 0, 0, 0, 71, 78, 78, 74, 72, 74, 67, 66, 0, 59, 49, 72, 71, 60, 58, 45, "Wargs"
2062 DATA 0, 56, 39, 42, 45, 35, 75, 46, 72, 0, 0, 0, 0, 0, 68, 67, 0, 0, 50, 73, 72, 64, 0, 46, "Ghost"
2063 DATA 44, 57, 40, 43, 46, 00, 76, 47, 74, 79, 79, 75, 74, 75, 69, 70, 59, 64, 54, 74, 73, 66, 60, 50, "Orc scouts"
2064 DATA 46, 58, 00, 44, 47, 00, 77, 00, 75, 80, 80, 76, 75, 76, 70, 72, 60, 68, 60, 76, 75, 68, 61, 55, "Orc small patrol (2-6)"
2065 DATA 48, 00, 00, 45, 00, 00, 00, 00, 76, 00, 00, 77, 76, 77, 71, 73, 00, 69, 62, 77, 00, 70, 62, 57, "Orc normal patrol (6-10)"
2066 DATA 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 72, 74, 00, 70, 00, 00, 00, 71, 00, 59, "Orc warband/caravan (12-30)"
2067 DATA 55, 60, 62, 56, 00, 36, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 63, 72, 63, 78, 75, 00, 63, 00, "Rohirrim individuals"
2068 DATA 59, 61, 67, 60, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 66, 74, 65, 80, 00, 00, 64, 00, "Small Rohir patrol (6-12)"
2069 DATA 61, 00, 70, 62, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 69, 76, 67, 00, 00, 00, 00, 00, "Large Rohir patrol (24-60)"
2070 DATA 00, 00, 71, 63, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 70, 77, 00, 00, 00, 00, 00, 00, "Rohir Eored (120)"
2071 DATA 62, 00, 73, 64, 48, 40, 81, 48, 77, 00, 00, 00, 00, 00, 00, 00, 71, 79, 69, 81, 76, 72, 67, 61, "Smugglers/Thieves"
2072 DATA 64, 62, 75, 68, 53, 46, 85, 49, 78, 00, 00, 00, 00, 00, 00, 00, 74, 81, 75, 82, 77, 76, 72, 66, "Mercenaries/Brigands"
2073 DATA 65, 00, 00, 72, 58, 47, 00, 00, 00, 84, 84, 79, 78, 00, 00, 00, 00, 00, 00, 00, 00, 77, 73, 00, "Tribesmen"
2074 DATA 68, 63, 78, 75, 65, 60, 87, 55, 81, 00, 00, 00, 00, 00, 00, 00, 83, 83, 76, 83, 78, 80, 78, 67, "Common folk"
2075 DATA 69, 00, 79, 76, 66, 65, 00, 57, 82, 85, 00, 00, 81, 82, 00, 00, 84, 00, 78, 85, 79, 00, 79, 00, "Rivermen"
2076 DATA 73, 00, 83, 78, 69, 70, 00, 58, 83, 00, 00, 00, 00, 00, 00, 00, 86, 84, 80, 86, 80, 83, 84, 68, "Merchants"
2077 DATA 74, 00, 84, 79, 70, 71, 00, 59, 00, 00, 00, 00, 00, 00, 00, 00, 87, 00, 00, 00, 81, 84, 85, 00, "Nobles"
2078 DATA 79, 64, 85, 80, 72, 75, 89, 62, 84, 86, 85, 80, 82, 83, 75, 78, 88, 85, 81, 00, 82, 87, 86, 70, "Small Patrol"
2079 DATA 82, 00, 00, 00, 73, 77, 90, 63, 85, 00, 00, 00, 00, 00, 00, 00, 00, 86, 82, 00, 83, 88, 87, 71, "Large Patrol"
2080 DATA 83, 00, 86, 81, 74, 78, 92, 64, 00, 00, 00, 00, 00, 00, 00, 00, 89, 87, 83, 87, 00, 89, 88, 72, "Spies"
2081 DATA 84, 00, 87, 83, 77, 82, 93, 65, 86, 87, 00, 00, 00, 00, 76, 79, 90, 88, 84, 88, 84, 90, 89, 73, "Other (military) individuals"
2082 DATA 86, 65, 88, 83, 80, 85, 94, 67, 87, 00, 00, 81, 83, 84, 78, 81, 91, 89, 85, 89, 85, 91, 91, 78, "Northmen"
2083 DATA 88, 66, 89, 84, 81, 87, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 86, 90, 86, 93, 93, 00, "Easterlings"
2084 DATA 89, 00, 90, 85, 86, 88, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, "Dunlendings"
2085 DATA 00, 00, 00, 00, 87, 00, 95, 00, 88, 00, 00, 83, 84, 85, 79, 82, 00, 00, 00, 00, 00, 00, 00, 00, "Hillmen"
2086 DATA 90, 67, 91, 86, 88, 90, 00, 68, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 87, 91, 87, 95, 94, 00, "Southerners"
2087 DATA 91, 68, 92, 87, 89, 92, 00, 69, 00, 00, 00, 00, 00, 00, 00, 00, 92, 00, 88, 00, 88, 96, 95, 00, "Other foreigners"
2088 DATA 92, 00, 93, 88, 90, 93, 96, 71, 89, 00, 00, 00, 00, 00, 00, 00, 93, 90, 90, 92, 89, 97, 96, 79, "General folk"
2089 DATA 93, 69, 94, 89, 91, 94, 00, 72, 90, 88, 86, 84, 85, 86, 81, 83, 94, 91, 91, 93, 94, 00, 00, 86, "Elves"
2090 DATA 94, 70, 95, 94, 92, 95, 00, 73, 91, 00, 00, 00, 00, 88, 82, 84, 95, 92, 92, 00, 00, 98, 97, 87, "Dwarves"
2091 DATA 95, 00, 00, 00, 93, 00, 00, 00, 92, 89, 87, 85, 86, 89, 84, 87, 96, 94, 93, 94, 00, 00, 00, 00, "Cave trolls"
2092 DATA 96, 71, 00, 00, 00, 00, 00, 00, 93, 90, 88, 87, 87, 90, 85, 88, 00, 00, 00, 00, 95, 00, 00, 90, "Forest trolls"
2093 DATA 00, 00, 00, 00, 00, 00, 00, 00, 00, 94, 94, 89, 90, 92, 86, 89, 00, 00, 00, 00, 00, 00, 00, 00, "Snow trolls"
2094 DATA 00, 00, 00, 95, 94, 00, 97, 74, 94, 96, 96, 98, 96, 93, 90, 93, 00, 96, 94, 00, 00, 99, 98, 00, "Hill trolls"
2095 DATA 97, 00, 96, 96, 95, 97, 98, 96, 96, 00, 00, 00, 00, 00, 91, 94, 97, 00, 95, 00, 00, 00, 00, 00, "Hobbits"
2096 DATA 00, 00, 00, 00, 00, 98, 00, 98, 00, 00, 00, 00, 00, 00, 00, 00, 00, 97, 96, 00, 00, 00, 00, 00, "Stoor hobbits"
2097 DATA 98, 72, 00, 00, 96, 00, 00, 00, 97, 99, 99, 99, 97, 94, 92, 95, 00, 00, 00, 00, 00, 00, 99, 91, "Drake/dragon"
2098 DATA 00, 73, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 95, 93, 00, 00, 00, 00, 00, 96, 00, 00, 92, "Ents"
2099 DATA 00, 74, 00, 00, 97, 00, 00, 00, 98, 00, 00, 00, 98, 96, 95, 97, 00, 98, 97, 00, 00, 00, 00, 93, "Giants"
2100 DATA 99, 75, 97, 97, 98, 99, 99, 99, 99, 00, 00, 00, 99, 97, 97, 99, 98, 99, 98, 95, 97, 00, 00, 94, "Great Eagles"
2101 DATA 00, 76, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 98, "Giant Spiders"
2102 DATA 00, 77, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 98, 98, 00, 00, 00, 00, 00, 98, 00, 00, 99, "Huorns"
2103 DATA 00, 97, 98, 98, 00, 00, 00, 00, 00, 00, 00, 00, 00, 99, 99, 00, 00, 00, 00, 00, 99, 00, 00, 00, "Druedain"
2104 DATA 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, "Other Beings"
2201 DATA 0.25,0.25,70
2202 DATA 0.5,0.25,65
2203 DATA 0.5,0.25,60
2204 DATA 0.5,0.25,50
2205 DATA 0.5,0.25,40
2206 DATA 0.5,0.25,30
2207 DATA 0.1,0.25,20
2208 DATA 0.25,0.25,70
2209 DATA 0.25,0.25,50
2210 DATA 0.25,0.5,40
2211 DATA 0.25,0.25,70
2220 DATA 05,05,05,05,04,04,03,05,08,04,05,"Inanimate Dangers/Traps"
2221 DATA 08,08,08,08,06,06,05,09,14,10,08,"Animals"
2222 DATA 20,23,28,28,33,30,35,21,20,30,20,"Common folk working/playing/idling"
2223 DATA 24,27,33,32,40,37,40,25,25,34,24,"Common folk in transit"
2224 DATA 27,31,37,35,42,39,00,30,27,40,30,"Rowdies"
2225 DATA 29,33,38,36,43,40,00,00,40,00,31,"Foreigners labouring"
2226 DATA 35,37,40,42,45,44,41,32,42,41,40,"Foreigners trading/visiting"
2227 DATA 36,38,41,43,46,45,42,33,43,42,44,"Assayers/tax collectors"
2228 DATA 41,42,44,45,47,46,00,37,44,43,48,"Blackmarketeers"
2229 DATA 43,44,46,47,49,48,45,39,50,50,55,"Merchants"
2230 DATA 53,53,54,54,55,53,00,50,52,55,63,"Vendor"
2231 DATA 55,55,56,56,56,54,00,53,53,56,67,"Actors/minstrels"
2232 DATA 58,57,58,57,57,00,00,55,54,57,68,"Beggars/cripples"
2233 DATA 61,60,60,59,58,55,46,57,55,60,69,"General travellers"
2234 DATA 62,61,61,60,60,57,49,58,57,61,70,"Messengers"
2235 DATA 63,62,62,62,63,61,56,59,58,62,71,"Nobles"
2236 DATA 64,63,63,63,64,62,57,60,59,63,72,"Pilgrims/refugees"
2237 DATA 65,64,64,64,65,63,58,61,60,64,73,"Priests/clerics"
2238 DATA 66,65,65,65,66,64,59,62,61,65,74,"Adventurers"
2239 DATA 68,67,67,66,67,65,60,67,62,68,76,"Mercenaries"
2240 DATA 71,69,69,68,69,66,61,68,63,69,77,"Refugees/pilgrims"
2241 DATA 72,70,70,69,70,67,62,69,70,70,78,"Sailors"
2242 DATA 74,73,72,71,71,68,63,70,75,71,80,"Off-duty soldiers"
2243 DATA 75,74,73,72,72,69,64,71,77,73,82,"Spies"
2244 DATA 76,75,74,73,73,70,65,72,78,79,83,"Trackers/searchers"
2245 DATA 77,76,75,74,74,71,66,75,79,80,84,"Vigilantes/fanatics"
2246 DATA 80,78,77,76,76,72,00,80,80,84,88,"Criminal"
2247 DATA 83,81,80,78,78,73,67,85,81,85,91,"Cutpurses"
2248 DATA 86,84,82,80,79,74,00,89,82,86,94,"Muggers/brigands"
2249 DATA 89,87,85,83,81,76,68,92,87,90,96,"Pickpockets"
2250 DATA 91,90,89,88,87,83,76,94,88,92,97,"Watchmen"
2251 DATA 95,95,95,95,95,92,88,96,93,94,98,"Guardsman patrol"
2252 DATA 97,97,97,97,97,95,92,98,00,98,99,"Militia unit"
2253 DATA 98,98,98,98,98,98,98,00,98,00,00,"Military unit"
2254 DATA 100,100,100,100,100,100,100,100,100,100,100,"Unusual/special"
2301 DATA 4,20,15
2302 DATA 4,20,15
2303 DATA 4,20,5
2304 DATA 4,5,10
2310 DATA 03,04,08,10,"Rocks"
2311 DATA 04,06,13,14,"Squall"
2312 DATA 07,09,18,18,"Sudden Gust"
2313 DATA 08,11,22,20,"Whirlpool"
2314 DATA 00,00,24,28,"Ice-sheet"
2315 DATA 00,12,30,35,"Iceberg"
2316 DATA 11,15,32,39,"Islet"
2317 DATA 13,17,33,40,"Abandoned boat"
2318 DATA 18,20,34,41,"Flotsam"
2319 DATA 22,23,36,42,"Underwater wreck"
2320 DATA 24,24,37,00,"Kraken"
2321 DATA 25,26,38,00,"Ray"
2322 DATA 27,27,00,00,"Sea-turtle"
2323 DATA 30,28,00,00,"Shark"
2324 DATA 33,33,44,00,"Whale"
2325 DATA 34,34,49,44,"Demon-whale"
2326 DATA 36,35,50,00,"Dolphins"
2327 DATA 37,36,51,00,"Porpoises"
2328 DATA 39,38,52,46,"Eels"
2329 DATA 00,00,00,47,"Fell Turtle"
2330 DATA 49,46,61,58,"Fish"
2331 DATA 51,48,62,00,"Octopuses"
2332 DATA 54,50,63,59,"Jellyfish"
2333 DATA 56,54,70,70,"Seals"
2334 DATA 00,55,73,75,"Walrus"
2335 DATA 00,00,00,77,"Icedrake"
2336 DATA 68,66,84,88,"Seabird"
2337 DATA 70,70,92,94,"Other animals"
2338 DATA 78,78,93,97,"Fishermen"
2339 DATA 84,82,00,00,"Merchants"
2340 DATA 88,85,94,00,"Military unit"
2341 DATA 90,86,00,00,"Nobles"
2342 DATA 92,88,00,00,"Privateers"
2343 DATA 96,91,95,00,"Pirates"
2344 DATA 98,98,97,00,"Elves"
2345 DATA 100,100,100,100,"Special"
3000 CLS: PRINT "Select location to enter character from"
3001 PRINT "Gondor: NPCs                   - 1"
3002 PRINT "Gondor: Military               - 2"
3003 PRINT "Rohan: General                 - 3"
3004 PRINT "Rohan: Inn of Greys            - 4"
3005 PRINT "Rohan: Juggler's Hall          - 5"
3006 PRINT "Rohan: The Wold                - 6"
3007 PRINT "Dunland and Tharbad            - 7"
3008 PRINT "Arthedain                      - 8"
3009 PRINT "Northern Waste and return      - 9"
3010 PRINT "Lake-town                      - 10"
3011 PRINT "Greenwood                      - 11"
3015 INPUT I: IF I <> INT(I) OR I < 1 OR I > 10 THEN GOTO 3015
3020 ON I GOTO 3050, 3100, 3200, 3250, 3300, 3350, 3400, 3440, 3480, 3520, 3560
3030 READ NAM$(Z): READ LVL(Z): READ HITS(Z): READ AT(Z): READ DB(Z): READ SH(Z): READ OB1(Z): READ OBT1(Z): READ OB2(Z): READ OBT2(Z): READ MM(Z): READ SIZE(Z)
3040 CHAIN "preinput", 8010, ALL
3050 CLS: PRINT "Select Gondorian NPC"
3051 PRINT "Elessar                        - 1"
3052 PRINT "Tarquillan                     - 2"
3053 PRINT "Elegar                         - 3"
3054 PRINT "Carandor                       - 4"
3055 PRINT "Gilorwen                       - 5"
3056 PRINT "Viliarith Treyan               - 6"
3057 PRINT "Shorrie Rallan                 - 7"
3060 INPUT I: IF I <> INT(I) OR I < 1 OR I > 7 THEN GOTO 3060
3065 ON I GOTO 3071, 3072, 3073, 3074, 3075, 3076, 3077
3071 RESTORE 3601: GOTO 3030
3072 RESTORE 3602: GOTO 3030
3073 RESTORE 3603: GOTO 3030
3074 RESTORE 3604: GOTO 3030
3075 RESTORE 3605: GOTO 3030
3076 RESTORE 3606: GOTO 3030
3077 RESTORE 3607: GOTO 3030
3100 CLS: PRINT "Select type of military character"
3101 PRINT "Gondorian army                 - 1"
3102 PRINT "Other                          - 2"
3105 INPUT I: IF I <> INT(I) OR I < 1 OR I > 2 THEN GOTO 3105
3106 ON I GOTO 3110, 3150
3110 CLS: PRINT "Select army character to enter"
3111 PRINT "City guard commander           - 1"
3112 PRINT "Commander's war horse          - 2"
3113 PRINT "City guard captain             - 3"
3114 PRINT "City guard man at arms         - 4"
3115 PRINT "City guard mounted man at arms - 5"
3116 PRINT "City guard horse               - 6"
3117 PRINT "City guard archer              - 7"
3118 PRINT "Royal army lord-captain        - 8"
3119 PRINT "Royal army captain             - 9"
3120 PRINT "Royal army ring-sergeant       - 10"
3121 PRINT "Royal army sergeant            - 11"
3122 PRINT "Royal army man-at-arms         - 12"
3125 INPUT I: IF I <> INT(I) OR I < 1 OR I > 11 THEN GOTO 3125
3126 ON I GOTO 3131, 3132, 3133, 3134, 3135, 3136, 3137, 3138, 3139, 3140, 3141, 3142
3131 RESTORE 3611: GOTO 3030
3132 RESTORE 3612: GOTO 3030
3133 RESTORE 3613: GOTO 3030
3134 RESTORE 3614: GOTO 3030
3135 RESTORE 3615: GOTO 3030
3136 RESTORE 3616: GOTO 3030
3137 RESTORE 3617: GOTO 3030
3138 RESTORE 3618: GOTO 3030
3139 RESTORE 3619: GOTO 3030
3140 RESTORE 3620: GOTO 3030
3141 RESTORE 3621: GOTO 3030
3142 RESTORE 3622: GOTO 3030
3150 CLS: PRINT "Select character to enter"
3151 PRINT "Shorrie's men                  - 1"
3152 PRINT "Cook                           - 2"
3153 PRINT "Smith/labourer                 - 3"
3154 PRINT "Artisan                        - 4"
3155 PRINT "Servant                        - 5"
3156 PRINT "Pilgrim/refugee                - 6"
3157 PRINT "Warrior                        - 7"
3158 PRINT "Thief                          - 8"
3159 PRINT "Merchant                       - 9"
3160 PRINT "Ruffian                        - 10"
3161 PRINT "Wose elite warrior             - 11"
3162 PRINT "Wose warrior                   - 12"
3163 PRINT "Wose watcher                   - 13"
3164 PRINT "Wose hunter                    - 14"
3165 INPUT I: IF I <> INT(I) OR I < 1 OR I > 14 THEN GOTO 3165
3170 ON I GOTO 3171, 3172, 3173, 3174, 3175, 3176, 3177, 3178, 3179, 3180, 3181, 3182, 3183, 3184
3171 RESTORE 3631: GOTO 3030
3172 RESTORE 3632: GOTO 3030
3173 RESTORE 3633: GOTO 3030
3174 RESTORE 3634: GOTO 3030
3175 RESTORE 3635: GOTO 3030
3176 RESTORE 3636: GOTO 3030
3177 RESTORE 3637: GOTO 3030
3178 RESTORE 3638: GOTO 3030
3179 RESTORE 3639: GOTO 3030
3180 RESTORE 3640: GOTO 3030
3181 RESTORE 3641: GOTO 3030
3182 RESTORE 3642: GOTO 3030
3183 RESTORE 3643: GOTO 3030
3184 RESTORE 3644: GOTO 3030
3200 CLS: PRINT "Select character from Rohan to enter"
3201 PRINT "Thegn                          - 1"
3202 PRINT "Huscairl                       - 2"
3203 PRINT "Heah-cairl                     - 3"
3204 PRINT "Cairl                          - 4"
3205 PRINT "Cnaiht                         - 5"
3206 PRINT "Light Rider                    - 6"
3207 PRINT "Horse archer                   - 7"
3208 PRINT "Heavy war horse                - 8"
3209 PRINT "Light war horse                - 9"
3210 INPUT I: IF I <> INT (I) OR I < 1 OR I > 9 THEN GOTO 3210
3215 ON I GOTO 3221, 3222, 3223, 3224, 3225, 3226, 3227, 3228, 3229
3221 RESTORE 3651: GOTO 3030
3222 RESTORE 3652: GOTO 3030
3223 RESTORE 3653: GOTO 3030
3224 RESTORE 3654: GOTO 3030
3225 RESTORE 3655: GOTO 3030
3226 RESTORE 3656: GOTO 3030
3227 RESTORE 3657: GOTO 3030
3228 RESTORE 3658: GOTO 3030
3229 RESTORE 3659: GOTO 3030
3250 CLS: PRINT "Select character from the Inn of Greys to enter"
3251 PRINT "Inn staff                       - 1"
3252 PRINT "Inn clientele                   - 2"
3253 PRINT "Bandit                          - 3"
3255 INPUT I: IF I <> INT(I) OR I < 1 OR I > 3 THEN GOTO 3255
3260 ON I GOTO 3261, 3262, 3263
3261 RESTORE 3661: GOTO 3030
3262 RESTORE 3662: GOTO 3030
3263 RESTORE 3663: GOTO 3030
3300 CLS: PRINT "Select character from the Juggler's Hall to enter"
3301 PRINT "Vacros                          - 1"
3302 PRINT "Sunlending Mardsun              - 2"
3303 PRINT "Pilkun Valeran                  - 3"
3304 PRINT "Dartel Karan                    - 4"
3305 PRINT "Turibor                         - 5"
3306 PRINT "Bergrand                        - 6"
3307 PRINT "Marodwyn                        - 7"
3308 PRINT "Folric                          - 8"
3309 PRINT "Derelon                         - 9"
3310 PRINT "Remahild                        - 10"
3311 PRINT "Juggler                         - 11"
3312 PRINT "Student                         - 12"
3313 PRINT "Pilkun's man                    - 13"
3314 PRINT "Dartel's man                    - 14"
3315 INPUT I: IF I <> INT (I) OR I < 1 OR I > 14 THEN GOTO 3315
3320 ON I GOTO 3321, 3322, 3323, 3324, 3325, 3326, 3327, 3328, 3329, 3330, 3331, 3332, 3333, 3334
3321 RESTORE 3671: GOTO 3030
3322 RESTORE 3672: GOTO 3030
3323 RESTORE 3673: GOTO 3030
3324 RESTORE 3674: GOTO 3030
3325 RESTORE 3675: GOTO 3030
3326 RESTORE 3676: GOTO 3030
3327 RESTORE 3677: GOTO 3030
3328 RESTORE 3678: GOTO 3030
3329 RESTORE 3679: GOTO 3030
3330 RESTORE 3680: GOTO 3030
3331 RESTORE 3681: GOTO 3030
3332 RESTORE 3682: GOTO 3030
3333 RESTORE 3683: GOTO 3030
3334 RESTORE 3684: GOTO 3030
3350 CLS: PRINT "Select character from The Wold to enter"
3351 PRINT "Juangert Ferillot               - 1"
3352 PRINT "Angrus                          - 2"
3353 PRINT "Nagan                           - 3"
3354 PRINT "Gugle                           - 4"
3355 PRINT "Drudge                          - 5"
3356 PRINT "Juggler                         - 6"
3357 PRINT "Orc                             - 7"
3358 PRINT "Bandit                          - 8"
3359 PRINT "Stone golem                     - 9"
3360 INPUT I: IF I <> INT (I) OR I < 1 OR I > 9 THEN GOTO 3360
3365 ON I GOTO 3371, 3372, 3373, 3374, 3375, 3376, 3377, 3378, 3379
3371 RESTORE 3691: GOTO 3030
3372 RESTORE 3692: GOTO 3030
3373 RESTORE 3693: GOTO 3030
3374 RESTORE 3694: GOTO 3030
3375 RESTORE 3695: GOTO 3030
3376 RESTORE 3696: GOTO 3030
3377 RESTORE 3697: GOTO 3030
3378 RESTORE 3698: GOTO 3030
3379 RESTORE 3699: GOTO 3030
3400 CLS: PRINT "Select character from Dunland and Tharbad to enter"
3401 PRINT "Cilis                           - 1"
3402 PRINT "Hearon                          - 2"
3403 PRINT "Amferen Sandir                  - 3"
3404 PRINT "Guidariks Twegen                - 4"
3405 PRINT "Grallon                         - 5"
3406 PRINT "Grallon's man                   - 6"
3407 PRINT "Dunlending                      - 7"
3408 PRINT "Larach Duhnnan - warrior        - 8"
3409 PRINT "Larach Duhnnan - thief          - 9"
3410 PRINT "Larach Duhnnan - ruffian        - 10"
3411 PRINT "Tharbad - captain               - 11"
3412 PRINT "Tharbad - sergeant              - 12"
3413 PRINT "Tharbad - man at arms           - 13"
3414 PRINT "Tharbad - engineer              - 14"
3415 PRINT "Tharbad - labourer              - 15"
3416 INPUT I: IF I <> INT (I) OR I < 1 OR I > 15 THEN GOTO 3416
3420 ON I GOTO 3421, 3422, 3423, 3424, 3425, 3426, 3427, 3428, 3429, 3430, 3431, 3432, 3433, 3434, 3435
3421 RESTORE 3701: GOTO 3030
3422 RESTORE 3702: GOTO 3030
3423 RESTORE 3703: GOTO 3030
3424 RESTORE 3704: GOTO 3030
3425 RESTORE 3705: GOTO 3030
3426 RESTORE 3706: GOTO 3030
3427 RESTORE 3707: GOTO 3030
3428 RESTORE 3708: GOTO 3030
3429 RESTORE 3709: GOTO 3030
3430 RESTORE 3710: GOTO 3030
3431 RESTORE 3711: GOTO 3030
3432 RESTORE 3712: GOTO 3030
3433 RESTORE 3713: GOTO 3030
3434 RESTORE 3714: GOTO 3030
3435 RESTORE 3715: GOTO 3030
3440 CLS: PRINT "Select character from Arthedain to enter"
3441 PRINT "Ilberic Brandybuck              - 1"
3442 PRINT "Linuile                         - 2"
3443 PRINT "Bree: warrior                   - 3"
3444 PRINT "Bree: guardsman                 - 4"
3445 PRINT "Bree: ranger                    - 5"
3446 PRINT "Bree: bandit                    - 6"
3447 PRINT "Bree: hobbit                    - 7"
3448 PRINT "Grag                            - 8"
3449 PRINT "Scrag                           - 9"
3450 PRINT "Brag                            - 10"
3451 PRINT "Drag                            - 11"
3452 PRINT "Rag                             - 12"
3453 PRINT "Bog                             - 13"
3454 PRINT "Nog                             - 14"
3455 PRINT "Minor wight                     - 15"
3456 INPUT I: IF I <> INT (I) OR I < 1 OR I > 14 THEN GOTO 3456
3460 ON I GOTO 3461, 3462, 3463, 3464, 3465, 3466, 3467, 3468, 3469, 3470, 3471, 3472, 3473, 3474, 3475
3461 RESTORE 3721: GOTO 3030
3462 RESTORE 3722: GOTO 3030
3463 RESTORE 3723: GOTO 3030
3464 RESTORE 3724: GOTO 3030
3465 RESTORE 3725: GOTO 3030
3466 RESTORE 3726: GOTO 3030
3467 RESTORE 3727: GOTO 3030
3468 RESTORE 3728: GOTO 3030
3469 RESTORE 3729: GOTO 3030
3470 RESTORE 3730: GOTO 3030
3471 RESTORE 3731: GOTO 3030
3472 RESTORE 3732: GOTO 3030
3473 RESTORE 3733: GOTO 3030
3474 RESTORE 3734: GOTO 3030
3475 RESTORE 3735: GOTO 3030
3480 CLS: PRINT "Select character from Northern Waste and return to enter"
3481 PRINT "Andra Kisenan                   - 1"
3482 PRINT "Uldor                           - 2"
3483 PRINT "Trimani                         - 3"
3484 PRINT "Lufsen                          - 4"
3485 PRINT "Culnun                          - 5"
3486 PRINT "Frannard                        - 6"
3487 PRINT "Thuidimer                       - 7"
3488 PRINT "Galariks                        - 8"
3489 PRINT "Kenwe Foryaren                  - 9"
3490 PRINT "Gondring                        - 10"
3491 PRINT "Crew of Evenstar                - 11"
3492 PRINT "Crew of Grey Swan               - 12"
3493 PRINT "Lossoth shaman                  - 13"
3494 PRINT "Lossoth hunter                  - 14"
3495 PRINT "Lossoth youngster               - 15"
3496 PRINT "Lossoth dog                     - 16"
3497 PRINT "Snow Troll                      - 17"
3498 INPUT I: IF I <> INT (I) OR I < 1 OR I > 17 THEN GOTO 3498
3500 ON I GOTO 3501, 3502, 3503, 3504, 3505, 3506, 3507, 3508, 3509, 3510, 3511, 3512, 3513, 3514, 3515, 3516, 3517
3501 RESTORE 3741: GOTO 3030
3502 RESTORE 3742: GOTO 3030
3503 RESTORE 3743: GOTO 3030
3504 RESTORE 3744: GOTO 3030
3505 RESTORE 3745: GOTO 3030
3506 RESTORE 3746: GOTO 3030
3507 RESTORE 3747: GOTO 3030
3508 RESTORE 3748: GOTO 3030
3509 RESTORE 3749: GOTO 3030
3510 RESTORE 3750: GOTO 3030
3511 RESTORE 3751: GOTO 3030
3512 RESTORE 3752: GOTO 3030
3513 RESTORE 3753: GOTO 3030
3514 RESTORE 3754: GOTO 3030
3515 RESTORE 3755: GOTO 3030
3516 RESTORE 3756: GOTO 3030
3517 RESTORE 3757: GOTO 3030
3520 CLS: PRINT "Select character from Lake-town to enter"
3521 PRINT "Rathumus Felamar                - 1"
3522 PRINT "Golantir Felamar                - 2"
3523 PRINT "Euric                           - 3"
3524 PRINT "Kori                            - 4"
3525 PRINT "Eudesuntha                      - 5"
3526 PRINT "Azzard                          - 6"
3527 PRINT "Elite guard                     - 7"
3528 PRINT "Warrior                         - 8"
3529 PRINT "Warrior levy                    - 9"
3530 PRINT "Thief                           - 10"
3531 PRINT "Ruffian                         - 11"
3532 PRINT "Rathumus' guard                 - 12"
3535 INPUT I: IF I <> INT (I) OR I < 1 OR I > 12 THEN GOTO 3535
3540 ON I GOTO 3541, 3542, 3543, 3544, 3545, 3546, 3547, 3548, 3549, 3550, 3551, 3552
3541 RESTORE 3761: GOTO 3030
3542 RESTORE 3762: GOTO 3030
3543 RESTORE 3763: GOTO 3030
3544 RESTORE 3764: GOTO 3030
3545 RESTORE 3765: GOTO 3030
3546 RESTORE 3766: GOTO 3030
3547 RESTORE 3767: GOTO 3030
3548 RESTORE 3768: GOTO 3030
3549 RESTORE 3769: GOTO 3030
3550 RESTORE 3770: GOTO 3030
3551 RESTORE 3771: GOTO 3030
3552 RESTORE 3772: GOTO 3030
3560 CLS: PRINT "Select character from Greenwood to enter"
3561 PRINT "Taladhan                        - 1"
3562 PRINT "Feabor                          - 2"
3563 PRINT "Shakal Draik                    - 3"
3564 PRINT "Karamar                         - 4"
3565 PRINT "Olog-hai                        - 5"
3566 PRINT "Half-orc                        - 6"
3567 PRINT "Elven ward-captain              - 7"
3568 PRINT "Elven warder                    - 8"
3569 PRINT "Karamar's man                   - 9"
3570 PRINT "Giant spider                    - 10"
3575 INPUT I: IF I <> INT (I) OR I < 1 OR I > 10 THEN GOTO 3575
3580 ON I GOTO 3581, 3582, 3583, 3584, 3585, 3586, 3587, 3588, 3589, 3590
3581 RESTORE 3781: GOTO 3030
3582 RESTORE 3782: GOTO 3030
3583 RESTORE 3783: GOTO 3030
3584 RESTORE 3784: GOTO 3030
3585 RESTORE 3785: GOTO 3030
3586 RESTORE 3786: GOTO 3030
3587 RESTORE 3787: GOTO 3030
3588 RESTORE 3788: GOTO 3030
3589 RESTORE 3789: GOTO 3030
3590 RESTORE 3790: GOTO 3030
3601 DATA "Elessar", 36,185,19,75,50,200,13,180,70,20,1
3602 DATA "Tarquillan", 30,80,2,20,0,68,27,0,0,-50,1
3603 DATA "Elegar", 8,100,2,15,0,0,90,27,60,16,15,1
3604 DATA "Carandor", 18,150,18,60,45,180,13,170,70,15,1
3605 DATA "Drudge", 11,110,11,10,0,105,90,75,87,5,2
3606 DATA "Viliarith", 5,90,16,40,30,95,27,75,76,5,1
3607 DATA "Shorrie", 7,100,9,30,0,100,27,80,16,20,1
3611 DATA "Commander", 17,160,18,45,35,160,13,160,70,10,1
3612 DATA "War horse", 4,157,3,20,0,70,85,0,0,20,1
3613 DATA "Captain", 11,111,18,45,35,125,13,100,76,10,1
3614 DATA "Man at arms", 6,100,16,45,30,105,13,80,33,5,1
3615 DATA "Mounted man at arms", 5,88,16,40,30,95,33,75,33,5,1
3616 DATA "Horse", 3,135,3,15,0,50,85,0,0,10,1
3617 DATA "Archer", 4,81,13,30,0,70,13,95,76,20,1
3618 DATA "Lord-captain", 20,165,20,85,50,185,13,160,76,10,1
3619 DATA "Captain", 15,160,19,50,40,155,27,150,76,10,1
3620 DATA "Ring-sergeant", 10,105,15,45,35,120,27,93,76,10,1
3621 DATA "Sergeant", 6,100,14,40,30,105,27,80,76,10,1
3622 DATA "Man at arms", 4,85,13,40,30,90,13,75,33,10,1
3631 DATA "Shorrie's man", 5,85,5,30,25,90,13,65,72,15,1
3632 DATA "Cook", 3,45,1,10,0,60,20,35,16,10,1
3633 DATA "Smith", 4,50,6,15,0,75,41,65,33,10,1
3634 DATA "Artisan", 3,40,1,20,0,55,27,30,16,20,1
3635 DATA "Servant", 2,20,1,5,0,35,35,10,16,5,1
3636 DATA "Pilgrim", 2,20,1,5,0,35,33,10,16,5,1
3637 DATA "Warrior", 4,65,9,30,25,70,27,75,76,10,1
3638 DATA "Thief", 3,45,1,15,0,65,27,53,72,15,1
3639 DATA "Merchant", 3,52,1,5,0,55,16,25,33,5,1
3640 DATA "Ruffian", 3,54,10,35,25,75,13,75,72,10,1
3641 DATA "Elite warrior", 10,110,1,45,25,100,20,115,68,20,1
3642 DATA "Warrior", 5,80,1,35,25,80,20,90,68,10,1
3643 DATA "Watcher", 10,100,1,50,35,90,20,110,68,15,1
3644 DATA "Hunter", 4,65,1,30,25,70,20,80,68,5,1
3651 DATA "Thegn", 16,160,15,65,40,160,66,140,76,5,1
3652 DATA "Huscairl", 12,150,15,55,35,140,66,120,76,10,1
3653 DATA "Heah-cairl", 9,125,16,50,35,120,66,90,76,5,1
3654 DATA "Cairl", 7,100,16,50,35,110,66,80,76,5,1
3655 DATA "Cnaiht", 5,90,16,45,30,95,66,60,76,5,1
3656 DATA "Rider", 3,65,13,45,30,80,66,50,76,5,1
3657 DATA "Archer", 3,65,13,20,0,50,13,80,76,15,1,
3658 DATA "Heavy war horse", 4,160,3,25,0,70,85,0,0,25,1
3659 DATA "Light war horse", 3,130,3,35,0,50,85,0,,0,35,1
3661 DATA "Inn staff", 2,30,1,5,0,15,45,10,16,10,1
3662 DATA "Clientele", 3,40,1,10,0,40,45,30,16,5,1
3663 DATA "Bandits", 4,55,9,25,25,55,13,40,72,10,1
3671 DATA "Vacros", 12,135,9,40,0,110,26,125,16,20,1
3672 DATA "Sunlending", 15,140,10,30,0,100,13,80,68,15,1
3673 DATA "Pilkun", 6,55,1,25,0,70,23,50,16,15,1
3674 DATA "Dartel", 7,75,1,15,0,75,13,60,16,15,1
3675 DATA "Turibor", 4,70,10,35,30,60,13,40,72,10,1
3676 DATA "Bergrand", 12,120,2,40,0,90,27,80,16,10,1
3677 DATA "Marodwyn", 10,60,1,35,0,60,16,40,16,25,1
3678 DATA "Folric", 6,90,13,30,25,75,13,60,76,10,1
3679 DATA "Derelon", 5,70,5,15,0,75,23,40,16,15,1
3680 DATA "Remahild", 5,45,1,15,0,40,16,30,16,15,1
3681 DATA "Juggler", 4,50,1,20,0,60,27,35,74,15,1
3682 DATA "Student", 2,25,1,15,0,40,27,20,16,15,1
3683 DATA "Pilkun's man", 3,40,1,15,0,30,16,15,16,15,1
3684 DATA "Dartel's man", 3,45,1,10,0,45,27,30,16,10,1
3691 DATA "Juangert", 10,130,14,20,0,110,62,90,76,15,1
3692 DATA "Angrus", 10,140,14,25,0,120,58,100,72,10,1
3693 DATA "Nagan", 10,110,15,45,35,125,53,95,77,5,1
3694 DATA "Gugle", 12,115,11,10,0,110,90,80,87,5,2
3695 DATA "Drudge", 11,183,11,10,0,105,90,75,87,5,2
3696 DATA "Juggler", 5,85,11,10,0,80,13,60,72,15,1
3697 DATA "Orc", 3,60,13,20,20,65,26,40,72,5,1
3698 DATA "Bandit", 4,70,12,30,25,75,13,55,76,0,1
3699 DATA "Golem", 10,200,20,30,0,100,35,0,0,0,2
3701 DATA "Cilis", 15,160,19,30,0,170,51,120,16,5,1
3702 DATA "Hearon", 7,80,5,15,0,85,27,65,72,10,1
3703 DATA "Amferen", 7,120,14,40,30,115,13,85,76,10,1
3704 DATA "Guidariks", 5,80,5,5,0,70,27,65,76,5,1
3705 DATA "Grallon", 6,90,9,10,0,95,27,80,78,10,1
3706 DATA "Grallon's man", 4,55,5,5,0,50,26,60,72,20,1
3707 DATA "Dunlending", 5,90,13,25,25,75,20,60,72,5,1
3708 DATA "Warrior", 4,70,9,30,25,75,27,75,76,10,1
3709 DATA "Thief", 4,50,1,15,0,70,27,55,72,15,1
3710 DATA "Ruffian", 4,55,10,35,25,80,13,75,72,10,1
3711 DATA "Captain", 12,125,19,45,35,130,13,100,76,10,1
3712 DATA "Sergeant", 7,110,14,40,30,110,13,80,76,10,1
3713 DATA "Man at arms", 4,85,14,35,25,80,13,65,33,5,1
3714 DATA "Engineer", 5,70,7,10,0,70,27,40,16,10,1
3715 DATA "Labourer", 3,60,5,5,0,50,45,40,16,10,1
3721 DATA "Ilberic", 4,50,6,20,0,50,27,60,72,15,1
3722 DATA "Linuile", 200,450,1,150,0,250,92,210,45,105,2
3723 DATA "Warrior", 5,80,10,40,25,100,13,80,5,1
3724 DATA "Guardsman", 4,55,14,50,35,90,13,75,76,5,1
3725 DATA "Ranger", 4,60,1,55,35,60,35,75,70,15,1
3726 DATA "Bandit", 3,50,13,40,25,65,13,65,70,5,1
3727 DATA "Hobbit", 2,45,1,25,0,20,27,45,72,15,1
3728 DATA "Grag", 10,120,11,5,0,110,90,60,87,5,2
3729 DATA "Scrag", 8,100,11,10,0,100,90,55,87,5,2
3730 DATA "Brag", 8,95,11,10,0,95,90,55,87,5,2
3731 DATA "Drag", 7,100,11,5,0,80,90,45,87,5,2
3732 DATA "Rag", 7,95,11,5,0,85,90,50,87,5,2
3733 DATA "Bog", 5,80,11,10,0,70,90,40,87,10,2
3734 DATA "Nog", 4,75,11,10,0,65,90,35,87,10,2
3735 DATA "Minor wight", 10,100,11,30,0,90,13,80,90,30,2
3741 DATA "Andra", 8,125,6,10,0,120,18,75,72,15,1
3742 DATA "Uldor", 60,145,17,55,40,205,26,195,76,15,1
3743 DATA "Trimani", 7,70,2,10,0,50,33,50,33,0,1
3744 DATA "Lufsen", 7,120,8,20,0,110,33,120,33,10,1
3745 DATA "Culnun", 5,80,7,30,0,95,33,90,33,20,1
3746 DATA "Frannard", 4,70,7,20,0,75,33,60,16,15,1
3747 DATA "Thuidimer", 5,100,6,10,0,100,51,80,72,10,1
3748 DATA "Galariks", 5,105,6,35,25,110,27,70,72,5,1
3749 DATA "Kenwe", 18,120,9,50,35,130,13,160,70,15,1
3750 DATA "Gondring", 38,460,16,50,0,130,81,160,90,40,3
3751 DATA "Evenstar crew", 3,55,5,25,25,60,26,45,16,10,1
3752 DATA "Grey Swan crew", 4,65,11,30,25,75,18,50,72,10,1
3753 DATA "Shaman", 5,45,4,40,25,45,33,50,33,15,1
3754 DATA "Hunter", 3,50,7,10,0,65,33,70,33,10,1
3755 DATA "Youngster", 1,25,5,15,0,30,33,30,33,15,1
3756 DATA "Dog", 3,90,3,40,0,60,81,0,0,40,1
3757 DATA "Snow Troll", 13,180,11,30,0,105,82,80,90,25,2
3761 DATA "Rathumus", 9,95,1,25,0,100,13,130,78,0,1
3762 DATA "Golantir", 7,105,10,20,0,110,13,100,78,15,1
3763 DATA "Euric", 6,90,5,25,,0,85,13,70,76,10,1
3764 DATA "Kori", 14,140,18,20,0,150,51,110,20,0,1
3765 DATA "Eudesuntha", 2,40,1,5,0,30,57,10,16,0,1
3766 DATA "Azzard", 7,100,1,35,0,90,27,105,16,25,1
3767 DATA "Elite guard", 5,70,15,25,25,90,13,85,76,0,1
3768 DATA "Warrior", 3,50,14,25,25,70,13,65,76,0,1
3769 DATA "Levy", 2,45,13,25,25,55,13,50,76,0,1
3770 DATA "Thief", 3,45,1,15,0,60,27,45,72,15,1
3771 DATA "Ruffian", 3,50,10,35,25,70,13,65,72,10,1
3772 DATA "Rathumus' guard", 6,100,9,10,0,95,27,80,77,10,1
3781 DATA "Taladhan", 25,120,12,60,0,85,27,30,16,20,1
3782 DATA "Feabor", 7,80,6,55,35,80,13,120,70,25,1
3783 DATA "Shakal", 9,110,14,50,35,130,35,100,20,10,1
3784 DATA "Karamar", 10,120,14,30,25,125,13,110,76,10,1
3785 DATA "Olog-hai", 16,188,14,15,0,165,13,90,90,10,2
3786 DATA "Half-orc", 3,55,13,25,25,60,26,40,72,5,1
3787 DATA "Ward-captain", 8,90,3,55,35,90,13,100,70,25,1
3788 DATA "Warder", 4,50,9,45,30,60,33,60,70,20,1
3789 DATA "Karamar's man", 6,100,10,40,30,100,13,75,78,5,1
3790 DATA "Giant spider", 12,110,4,40,0,75,83,0,0,25,2
5000 PRINT "There are no encounters (roll was ";X;")"
5010 CHAIN "merpstra",3415,ALL
5100 PRINT "The encounter is with ";E$;" (encounter roll was ";X;")"
5110 CHAIN "merpstra",3415,ALL
6000 REM Weather
6001 NUMERIADOR = 2: CLS: PRINT "Enter area to use"
6011 PRINT "Anorien & the Pelennor              - 1"
6012 PRINT "Eastfold/Westfold (Rohan)           - 2"
6013 PRINT "Westmarch (Rohan)/Dunland           - 3"
6014 PRINT "Gwathlo Basin                       - 4"
6015 PRINT "Barrow downs                        - 5"
6016 PRINT "Bree-land & The Shire               - 6"
6017 PRINT "Old Arthedain                       - 7"
6018 PRINT "South Coast of Eriador              - 8"
6019 PRINT "West Coast of Eriador               - 9"
6020 PRINT "North Coast of Eriador              - 10"
6021 PRINT "Ice Bay                             - 11"
6022 PRINT "Forochel                            - 12"
6023 PRINT "Talath Muil                         - 13"
6024 PRINT "Rammas Formen                       - 14"
6025 PRINT "Numeriador                          - 15"
6026 PRINT "Hills of Evendim                    - 16"
6027 PRINT "North Downs                         - 17"
6028 PRINT "East Emnet (Rohan)                  - 18"
6029 PRINT "The Wold (Rohan)                    - 19"
6030 PRINT "Emyn Muil                           - 20"
6031 PRINT "More                                - 21"
6032 INPUT I: IF I <> INT (I) OR I < 1 OR I > 21 THEN GOTO 6032
6033 IF I < 21 THEN GOTO 6050
6035 CLS: PRINT "Dead Marshes                        - 21"
6036 PRINT "Ithilien                            - 22"
6037 PRINT "Dagorlad                            - 23"
6038 PRINT "Rhovanion Lowlands                  - 24"
6039 PRINT "Greenwood                           - 25"
6040 INPUT I: IF I <> INT (I) OR I < 1 OR I > 26 THEN GOTO 6040
6050 AREA = I: MERP = 1: ON I GOTO 6051, 6052, 6053, 6054, 6055, 6056, 6057, 6058, 6059, 6060, 6061, 6062, 6063, 6064, 6065, 6066, 6067, 6068, 6069, 6070, 6071, 6072, 6073, 6074, 6075
6051 RESTORE 6911: GOTO 6100
6052 RESTORE 6912: GOTO 6100
6053 RESTORE 6913: GOTO 6100
6054 RESTORE 6914: GOTO 6100
6055 RESTORE 6915: GOTO 6100
6056 RESTORE 6916: GOTO 6100
6057 RESTORE 6917: GOTO 6100
6058 RESTORE 6918: GOTO 6100
6059 RESTORE 6919: GOTO 6100
6060 RESTORE 6920: GOTO 6100
6061 RESTORE 6921: GOTO 6100
6062 RESTORE 6922: GOTO 6100
6063 RESTORE 6923: GOTO 6100
6064 RESTORE 6924: GOTO 6100
6065 RESTORE 6925: GOTO 6100
6066 RESTORE 6926: GOTO 6100
6067 RESTORE 6927: GOTO 6100
6068 RESTORE 6928: GOTO 6100
6069 RESTORE 6929: GOTO 6100
6070 RESTORE 6930: GOTO 6100
6071 RESTORE 6931: GOTO 6100
6072 RESTORE 6932: GOTO 6100
6073 RESTORE 6933: GOTO 6100
6074 RESTORE 6934: GOTO 6100
6075 RESTORE 6935: GOTO 6100
6100 READ LATITUDE
6105 FOR I = 1 TO MONTH: READ MIN: READ MAX: READ PCH: NEXT I
6110 RESTORE 6900
6115 FOR I = 1 TO MONTH: READ VL: READ VH: NEXT I
6120 MIN = MIN + VL: MAX = MAX - VH: MN = MIN: MX = MAX
6121 RESTORE 6901
6126 FOR I = 1 TO MONTH: READ VLO: READ VHI: NEXT I
6130 DFSPEX = (MONTH - 4) * 30 + (DAY - 7)
6131 ARCSIN = TAN (LATITUDE * (PI/180)) * TAN (23.5 * (PI/180) * (SIN (90 * (PI/180) * DFSPEX/91.3125)))
6132 DAYLEN = 2/15 * (90 + (ATN (ARCSIN/SQR(-ARCSIN * ARCSIN + 1)) * (180/PI)))
6133 DAWN = 12 - (DAYLEN / 2)
6134 DUSK = 12 + (DAYLEN / 2)
6140 INPUT "Any modifiers to the high temperature";I: VMD = VMD + I: VH = VMD
6141 INPUT "Any modifiers to the low temperature";I: LMD = LMD + I: VL = LMD
6142 IF YWIND = 0 THEN INPUT "What was the wind direction yesterday";Y$
6145 ON VHI GOTO 6146, 6147, 6148, 6149, 6150
6146 RESTORE 6902: GOTO 6155
6147 RESTORE 6903: GOTO 6155
6148 RESTORE 6904: GOTO 6155
6149 RESTORE 6905: GOTO 6155
6150 RESTORE 6906: GOTO 6155
6155 GOSUB 9830
6160 ROLL = ROLL + VMD: IF ROLL > 210 THEN ROLL = 210
6165 READ I: READ MD: READ VMD: IF ROLL > I THEN GOTO 6165
6166 MAX = MAX + MD
6170 ON VLO GOTO 6171, 6172, 6173, 6174, 6175
6171 RESTORE 6902: GOTO 6180
6172 RESTORE 6903: GOTO 6180
6173 RESTORE 6904: GOTO 6180
6174 RESTORE 6905: GOTO 6180
6175 RESTORE 6906: GOTO 6180
6180 GOSUB 9830
6185 ROLL = ROLL + LMD: IF ROLL > 210 THEN ROLL = 210
6190 READ I: READ MD: READ LMD: IF ROLL > I THEN GOTO 6190
6191 MIN = MIN - MD
6200 CHAIN "merpstra",2181,ALL
6900 DATA 19,7,19,9,9,5,9,7,7,9,9,9,5,7,5,5,5,3,7,5,9,9,9,9
6901 DATA 5,3,5,4,4,2,4,3,3,4,4,4,2,3,2,2,2,1,3,2,4,4,4,4
6902 DATA 25,1,0,50,2,0,75,3,0,100,4,25,116,5,25,132,6,25,148,7,50,164,8,50,173,9,50,182,10,50,199,11,75,210,12,75
6903 DATA 16,1,0,32,2,0,48,3,0,64,4,0,80,5,0,96,6,25,107,7,25,118,8,25,129,9,25,140,10,50,151,11,50,162,12,50,167,13,50,172,14,50,177,15,50,182,16,75,187,17,75,210,18,75
6904 DATA 12,1,0,24,2,0,36,3,0,48,4,0,60,5,0,72,6,0,84,7,0,96,8,25,104,9,25,112,10,25,120,11,25,128,12,25,136,13,50,144,14,50,152,15,50,160,16,50,168,17,50,172,18,50,176,19,50,180,20,50,184,21,75,188,22,75,192,23,75,210,24,75
6905 DATA 10,1,0,20,2,0,30,3,0,40,4,0,50,5,0,60,6,0,70,7,0,80,8,0,90,9,0,100,10,25,106,11,25,112,12,25,118,13,25,124,14,25,130,15,25,136,16,50,142,17,50,148,18,50,154,19,50,160,20,50,163,21,50,166,22,50,169,23,50,172,24,50,175,25,50,178,26,75,182,27,75
6906 DATA 5,1,0,10,2,0,15,3,0,20,4,0,25,5,0,30,6,0,35,7,0,40,8,0,45,9,0,50,10,0,55,11,0,60,12,0,65,13,0,70,14,0,75,15,0,80,16,0,85,17,0,90,18,0,95,19,0,100,20,25,103,21,25,106,22,25,109,23,25,112,24,25,115,25,25,118,26,25,121,27,25,124,28,25
6907 DATA 127,29,25,130,30,25,133,31,50,136,32,50,139,33,50,142,34,50,145,35,50,148,36,50,151,37,50,154,38,50,157,39,50,160,40,50,161,41,50,162,42,50,163,43,50,164,44,50,165,45,50,166,46,50,167,47,50,168,48,50,169,49,50,170,49,50
6908 DATA 171,51,75,172,52,75,173,53,75,174,54,75,175,55,75,176,56,75,177,57,75,178,58,75,179,59,75,210,60,75
6911 DATA 46.1,45,50,45,40,45,45,35,45,50,40,50,35,40,50,30,45,60,30,65,80,25,70,85,25,65,80,30,55,70,35,50,65,40,50,55,45
6912 DATA 46.9,40,50,45,35,45,45,25,40,45,35,50,40,40,50,40,45,50,40,60,70,35,65,75,30,65,70,35,55,70,40,50,65,45,50,55,45
6913 DATA 48.7,25,45,50,20,40,50,25,40,50,30,45,45,40,50,45,45,60,40,55,70,40,60,75,40,65,75,40,55,70,45,45,65,50,35,55,50
6914 DATA 49.8,30,50,50,25,45,50,30,50,50,35,55,40,40,50,40,45,60,40,55,75,40,60,80,35,65,80,40,60,75,45,50,65,45,40,55,50
6915 DATA 51.6,30,45,55,25,40,55,20,35,50,30,50,50,35,50,45,40,55,45,55,70,45,60,75,40,65,75,40,55,70,50,50,60,55,40,50,50
6916 DATA 52.0,25,40,45,15,35,45,20,45,45,30,50,45,35,60,45,50,65,50,60,75,45,65,80,50,65,80,55,55,75,50,45,65,55,35,55,45
6917 DATA 52.7,25,45,40,15,35,45,20,35,45,30,45,45,35,55,45,45,60,40,55,70,45,60,75,40,65,75,40,55,65,45,45,60,40,35,50,50
6918 DATA 48.8,25,45,40,20,35,45,25,40,50,30,45,45,35,55,45,50,65,40,60,70,40,65,75,45,65,80,40,55,65,45,45,60,45,35,50,45
6919 DATA 53.2,25,45,40,20,35,45,25,40,50,30,45,45,35,55,45,50,65,40,60,70,40,65,75,45,65,80,40,55,65,45,45,60,45,35,50,45
6920 DATA 57.0,20,45,40,15,35,50,20,35,40,30,40,40,35,50,45,45,55,45,50,65,50,60,70,45,65,70,50,50,65,45,45,55,40,35,45,50
6921 DATA 56.2,-30,20,60,-30,25,50,-10,20,55,-5,25,50,0,35,50,10,35,40,10,45,35,10,65,45,5,40,45,0,30,45,-10,25,45,-10,15,50
6922 DATA 55.8,-25,25,55,-25,20,50,-10,25,50,0,30,45,5,40,45,10,45,45,15,60,40,20,75,45,10,65,40,5,45,40,-5,30,45,-10,25,45
6923 DATA 55.1,-20,30,50,-25,25,45,-20,30,50,5,30,40,10,40,40,15,45,45,15,50,45,15,55,45,15,35,40,5,40,45,0,35,40,-10,30,45
6924 DATA 55.0,-20,25,50,-20,20,45,-15,25,45,5,35,40,10,40,40,15,45,45,15,55,45,15,60,40,15,40,45,5,40,45,0,40,40,-5,15,40
6925 DATA 54.2,-15,20,55,-20,20,50,-15,30,50,10,30,50,15,40,45,20,45,50,20,55,50,20,65,45,15,55,40,5,45,45,5,35,45,-5,20,45
6926 DATA 54.5,15,30,35,10,25,30,15,30,30,20,35,30,30,45,25,35,50,30,45,60,35,60,75,35,60,75,40,40,75,35,35,60,35,25,45,45
6927 DATA 54.1,20,40,45,10,35,40,15,35,30,25,45,40,35,55,40,40,60,40,50,70,40,50,75,50,50,75,50,50,70,45,40,60,50,30,50,45
6928 DATA 47.8,30,50,45,20,35,40,25,40,45,30,50,45,40,55,45,45,60,40,55,65,40,65,80,35,65,75,35,55,70,40,45,65,45,40,55,50
6929 DATA 48.7,25,40,45,15,35,45,20,45,40,25,45,50,35,50,40,45,55,45,55,60,45,65,75,40,60,70,40,55,70,45,45,60,45,40,50,50
6930 DATA 47.5,25,50,45,20,35,50,30,45,45,30,45,45,40,50,45,45,60,40,55,60,40,65,85,35,60,75,40,55,70,40,45,65,45,40,55,45
6931 DATA 47.3,15,45,40,10,35,40,15,40,45,30,50,45,35,60,45,45,70,45,55,80,45,65,90,40,65,80,45,50,65,45,45,55,50,20,50,45
6932 DATA 46.0,20,35,45,10,35,45,15,40,45,30,55,40,35,60,40,45,65,50,55,75,40,60,80,45,55,75,45,45,60,50,35,55,45,25,45,40
6933 DATA 47.1,15,35,40,10,30,45,15,35,45,30,50,40,35,65,40,45,70,40,55,80,40,60,80,40,55,75,40,35,60,45,30,50,45,20,45,45
6934 DATA 50.2,0,35,40,-15,20,45,-5,30,40,25,55,40,30,60,45,45,65,40,50,80,40,55,90,35,55,85,40,30,65,45,25,60,45,10,45,45
6935 DATA 52.6,10,45,45,10,40,45,20,50,45,30,60,45,40,65,45,50,70,50,55,80,40,65,90,40,55,80,45,45,65,50,35,60,55,20,45,50
9830 REM Open-ended (high) roll
9831 I = INT ((RND * 100) + .5)
9832 IF I > 95 THEN GOTO 9835
9833 ROLL = I: RETURN
9835 ROLL = I
9836 I = INT ((RND * 100) + .5)
9837 ROLL = ROLL + I: IF I < 96 THEN RETURN
9838 GOTO 9836
