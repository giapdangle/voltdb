<grammar.sql>
-- This file was originally generated from an older version of advanced-ints.sql and some
-- fixed "random seed" value lost to the ages.
-- Its intent was to prevent random elements from causing flaky failures for SOME random seeds.
-- Over its lifetime, the file has been doctored up to leverage NON-RANDOM generators like _table and
-- _numfun to expand its coverage without verbosity or risk of random flakiness.
-- The alternative approach would have been to find a "safe" seed for each new version of
-- advanced-ints.sql and regenerate this file in lock-step.
--
-- Failing that, to keep things safe, don't re-introduce uses of random generators
-- like _value or _variable to this file.
-- TODO: If we intend to continue to maintain and enhance this file independently of advanced-ints.sql,
-- it verbosity could be further reduced with more use of non-random
-- generators like _table, _cmp, _distinct, _maybe, etc.
DELETE FROM _table
INSERT INTO _table VALUES (1, 108, 9560, 6354045336055422)
INSERT INTO _table VALUES (3, 108, 1560, 6354045336055422)
INSERT INTO _table VALUES (5, 108, 1960, 521489981669511)
INSERT INTO _table VALUES (7, 108, 1950, 521489981669511)
INSERT INTO _table VALUES (9, 108, 2692, 9646289899727358)
INSERT INTO _table VALUES (11, 108, 2292, 9646289899727358)
INSERT INTO _table VALUES (13, 108, 2262, 4260519477988660)
INSERT INTO _table VALUES (15, 108, 2269, 4260519477988660)
INSERT INTO _table VALUES (17, 24, 2942, 5205419942590612)
INSERT INTO _table VALUES (19, 24, 2742, 5205419942590612)
INSERT INTO _table VALUES (21, 24, 2792, 231302535744456)
INSERT INTO _table VALUES (23, 24, 2794, 231302535744456)
INSERT INTO _table VALUES (25, 24, 2810, 4384931551976666)
INSERT INTO _table VALUES (27, 24, 2110, 4384931551976666)
INSERT INTO _table VALUES (29, 24, 2180, 5985139366872673)
INSERT INTO _table VALUES (31, 24, 2181, 5985139366872673)
SELECT _numfun(R1.TINY + 5) AS NUMSUM FROM R1 WHERE NUMSUM>-7610938904450791449
SELECT _numfun(R1.TINY + 5) AS NUMSUM FROM R1 WHERE NUMSUM>3307836970935891047
SELECT _numfun(R1.SMALL + 5) AS NUMSUM FROM R1 WHERE NUMSUM>-1746002335309831647
SELECT _numfun(R1.SMALL + 5) AS NUMSUM FROM R1 WHERE NUMSUM>6515838475248758885
SELECT _numfun(R1.ID + 5) AS NUMSUM FROM R1 WHERE NUMSUM>3756647481196553341
SELECT _numfun(R1.ID + 5) AS NUMSUM FROM R1 WHERE NUMSUM>-295616343694973503
SELECT _numfun(R1.BIG + 5) AS NUMSUM FROM R1 WHERE NUMSUM>1708503053711487621
SELECT _numfun(R1.BIG + 5) AS NUMSUM FROM R1 WHERE NUMSUM>623620829219046684
SELECT _numfun(P1.TINY + 5) AS NUMSUM FROM P1 ORDER BY NUMSUM
SELECT _numfun(P1.SMALL + 5) AS NUMSUM FROM P1 ORDER BY NUMSUM
SELECT _numfun(P1.ID + 5) AS NUMSUM FROM P1 ORDER BY NUMSUM
SELECT _numfun(R1.TINY) + 5 AS NUMSUM FROM R1 WHERE NUMSUM>-7610938904450791449
SELECT _numfun(R1.TINY) + 5 AS NUMSUM FROM R1 WHERE NUMSUM>3307836970935891047
SELECT _numfun(R1.SMALL) + 5 AS NUMSUM FROM R1 WHERE NUMSUM>-1746002335309831647
SELECT _numfun(R1.SMALL) + 5 AS NUMSUM FROM R1 WHERE NUMSUM>6515838475248758885
SELECT _numfun(R1.ID) + 5 AS NUMSUM FROM R1 WHERE NUMSUM>3756647481196553341
SELECT _numfun(R1.ID) + 5 AS NUMSUM FROM R1 WHERE NUMSUM>-295616343694973503
SELECT _numfun(R1.BIG) + 5 AS NUMSUM FROM R1 WHERE NUMSUM>1708503053711487621
SELECT _numfun(R1.BIG) + 5 AS NUMSUM FROM R1 WHERE NUMSUM>623620829219046684
SELECT _numfun(P1.TINY) + 5 AS NUMSUM FROM P1 ORDER BY NUMSUM
SELECT _numfun(P1.SMALL) + 5 AS NUMSUM FROM P1 ORDER BY NUMSUM
SELECT _numfun(P1.ID) + 5 AS NUMSUM FROM P1 ORDER BY NUMSUM
SELECT * FROM P1 WHERE _numfun(P1.TINY)<8.63401992888105374035e-02
SELECT * FROM P1 WHERE _numfun(P1.TINY)<3.01215424470566373039e-01
SELECT * FROM P1 WHERE _numfun(P1.TINY)>9.30169934647893770219e-01
SELECT * FROM P1 WHERE _numfun(P1.TINY)>7.14467727685415776584e-01
SELECT * FROM P1 WHERE _numfun(P1.TINY) = 9.61475096971308063054e-01
SELECT * FROM P1 WHERE _numfun(P1.TINY) = 6.29354733998655491156e-01
SELECT * FROM P1 WHERE _numfun(P1.TINY)<= 4.67635164191843921699e-01
SELECT * FROM P1 WHERE _numfun(P1.TINY)<= 1.36059822079745318391e-01
SELECT * FROM P1 WHERE _numfun(P1.TINY)>= 5.43744086213129418361e-01
SELECT * FROM P1 WHERE _numfun(P1.TINY)>= 5.49714088610123829959e-01
SELECT * FROM P1 WHERE _numfun(P1.TINY) != 3.50820246401559510119e-01
SELECT * FROM P1 WHERE _numfun(P1.TINY) != 6.85614301695470884646e-01
SELECT * FROM P1 WHERE _numfun(P1.TINY)<>7.84787886925063848942e-01
SELECT * FROM P1 WHERE _numfun(P1.TINY)<>3.22618976540948509957e-01
SELECT * FROM P1 WHERE _numfun(P1.SMALL)<1.87608248239961916681e-01
SELECT * FROM P1 WHERE _numfun(P1.SMALL)<5.50934698112351406429e-01
SELECT * FROM P1 WHERE _numfun(P1.SMALL)>9.61428344764904019293e-01
SELECT * FROM P1 WHERE _numfun(P1.SMALL)>6.07379679403585726050e-02
SELECT * FROM P1 WHERE _numfun(P1.SMALL) = 3.52766535771541378530e-01
SELECT * FROM P1 WHERE _numfun(P1.SMALL) = 9.82851780308347855453e-01
SELECT * FROM P1 WHERE _numfun(P1.SMALL)<= 9.89409847152445953711e-01
SELECT * FROM P1 WHERE _numfun(P1.SMALL)<= 5.35130101860371243383e-01
SELECT * FROM P1 WHERE _numfun(P1.SMALL)>= 1.53603524987519279854e-01
SELECT * FROM P1 WHERE _numfun(P1.SMALL)>= 9.75305418949109159676e-01
SELECT * FROM P1 WHERE _numfun(P1.SMALL) != 5.37525636696882136434e-01
SELECT * FROM P1 WHERE _numfun(P1.SMALL) != 6.93906803574038555382e-01
SELECT * FROM P1 WHERE _numfun(P1.SMALL)<>6.67389786651778504911e-01
SELECT * FROM P1 WHERE _numfun(P1.SMALL)<>1.62664642319375940538e-01
SELECT * FROM P1 WHERE _numfun(P1.ID)<7.60547568838618404108e-01
SELECT * FROM P1 WHERE _numfun(P1.ID)<3.36777442011204297678e-01
SELECT * FROM P1 WHERE _numfun(P1.ID)>6.46410097725649168687e-01
SELECT * FROM P1 WHERE _numfun(P1.ID)>1.48864186249036856147e-01
SELECT * FROM P1 WHERE _numfun(P1.ID) = 9.30674295941932183673e-01
SELECT * FROM P1 WHERE _numfun(P1.ID) = 8.62543536301704216740e-01
SELECT * FROM P1 WHERE _numfun(P1.ID)<= 2.14596513536947641754e-02
SELECT * FROM P1 WHERE _numfun(P1.ID)<= 9.10900960057715924911e-01
SELECT * FROM P1 WHERE _numfun(P1.ID)>= 1.19955594161942236120e-01
SELECT * FROM P1 WHERE _numfun(P1.ID)>= 5.37881326238785373306e-01
SELECT * FROM P1 WHERE _numfun(P1.ID) != 4.01429932206643580450e-01
SELECT * FROM P1 WHERE _numfun(P1.ID) != 3.72439849253282551089e-01
SELECT * FROM P1 WHERE _numfun(P1.ID)<>5.44829605493520552351e-01
SELECT * FROM P1 WHERE _numfun(P1.ID)<>5.59118601908781154286e-01
SELECT * FROM P1 WHERE _numfun(P1.BIG)<5.21143419527329565533e-01
SELECT * FROM P1 WHERE _numfun(P1.BIG)<9.99610562705436467290e-01
SELECT * FROM P1 WHERE _numfun(P1.BIG)>7.88272783241514063413e-01
SELECT * FROM P1 WHERE _numfun(P1.BIG)>7.17831378517686413687e-01
SELECT * FROM P1 WHERE _numfun(P1.BIG) = 7.47271175452339786460e-01
SELECT * FROM P1 WHERE _numfun(P1.BIG) = 8.14584072009309378970e-01
SELECT * FROM P1 WHERE _numfun(P1.BIG)<= 6.46146337766738909636e-01
SELECT * FROM P1 WHERE _numfun(P1.BIG)<= 3.90253656108409452408e-01
SELECT * FROM P1 WHERE _numfun(P1.BIG)>= 4.68450346538984763178e-01
SELECT * FROM P1 WHERE _numfun(P1.BIG)>= 4.38054793880051307475e-01
SELECT * FROM P1 WHERE _numfun(P1.BIG) != 9.65073556795709941447e-01
SELECT * FROM P1 WHERE _numfun(P1.BIG) != 2.84118585773340259770e-01
SELECT * FROM P1 WHERE _numfun(P1.BIG)<>2.07554235944411247239e-01
SELECT * FROM P1 WHERE _numfun(P1.BIG)<>2.41303714937220359360e-01
SELECT _numfun(P1.TINY), _numfun(P1.TINY) FROM P1 ORDER BY P1.TINY LIMIT 10
SELECT _numfun(P1.TINY), _numfun(P1.TINY) FROM P1 ORDER BY P1.TINY LIMIT 2
SELECT _numfun(P1.TINY), _numfun(P1.SMALL) FROM P1 ORDER BY P1.SMALL,P1.TINY LIMIT 4
SELECT _numfun(P1.TINY), _numfun(P1.SMALL) FROM P1 ORDER BY P1.SMALL,P1.TINY LIMIT 3
SELECT _numfun(P1.TINY), _numfun(P1.ID) FROM P1 ORDER BY P1.ID LIMIT 5
SELECT _numfun(P1.TINY), _numfun(P1.ID) FROM P1 ORDER BY P1.ID LIMIT 10
SELECT _numfun(P1.TINY), _numfun(P1.BIG) FROM P1 ORDER BY P1.BIG,P1.TINY LIMIT 9
SELECT _numfun(P1.TINY), _numfun(P1.BIG) FROM P1 ORDER BY P1.BIG,P1.TINY LIMIT 10
SELECT _numfun(P1.SMALL), _numfun(P1.TINY) FROM P1 ORDER BY P1.TINY,P1.SMALL LIMIT 9
SELECT _numfun(P1.SMALL), _numfun(P1.TINY) FROM P1 ORDER BY P1.TINY,P1.SMALL LIMIT 6
SELECT _numfun(P1.SMALL), _numfun(P1.SMALL) FROM P1 ORDER BY P1.SMALL LIMIT 1
SELECT _numfun(P1.SMALL), _numfun(P1.SMALL) FROM P1 ORDER BY P1.SMALL LIMIT 8
SELECT _numfun(P1.SMALL), _numfun(P1.ID) FROM P1 ORDER BY P1.ID LIMIT 10
SELECT _numfun(P1.SMALL), _numfun(P1.ID) FROM P1 ORDER BY P1.ID LIMIT 6
SELECT _numfun(P1.SMALL), _numfun(P1.BIG) FROM P1 ORDER BY P1.BIG,P1.SMALL LIMIT 4
SELECT _numfun(P1.SMALL), _numfun(P1.BIG) FROM P1 ORDER BY P1.BIG,P1.SMALL LIMIT 6
SELECT _numfun(P1.ID), _numfun(P1.TINY) FROM P1 ORDER BY P1.ID LIMIT 6
SELECT _numfun(P1.ID), _numfun(P1.TINY) FROM P1 ORDER BY P1.ID LIMIT 9
SELECT _numfun(P1.ID), _numfun(P1.SMALL) FROM P1 ORDER BY P1.ID LIMIT 3
SELECT _numfun(P1.ID), _numfun(P1.SMALL) FROM P1 ORDER BY P1.ID LIMIT 2
SELECT _numfun(P1.ID), _numfun(P1.ID) FROM P1 ORDER BY P1.ID LIMIT 8
SELECT _numfun(P1.ID), _numfun(P1.ID) FROM P1 ORDER BY P1.ID LIMIT 9
SELECT _numfun(P1.ID), _numfun(P1.BIG) FROM P1 ORDER BY P1.ID LIMIT 2
SELECT _numfun(P1.ID), _numfun(P1.BIG) FROM P1 ORDER BY P1.ID LIMIT 3
SELECT _numfun(P1.BIG), _numfun(P1.TINY) FROM P1 ORDER BY P1.TINY,P1.BIG LIMIT 2
SELECT _numfun(P1.BIG), _numfun(P1.TINY) FROM P1 ORDER BY P1.TINY,P1.BIG LIMIT 2
SELECT _numfun(P1.BIG), _numfun(P1.SMALL) FROM P1 ORDER BY P1.SMALL,P1.BIG LIMIT 8
SELECT _numfun(P1.BIG), _numfun(P1.SMALL) FROM P1 ORDER BY P1.SMALL,P1.BIG LIMIT 1
SELECT _numfun(P1.BIG), _numfun(P1.ID) FROM P1 ORDER BY P1.ID LIMIT 2
SELECT _numfun(P1.BIG), _numfun(P1.ID) FROM P1 ORDER BY P1.ID LIMIT 10
SELECT _numfun(P1.BIG), _numfun(P1.BIG) FROM P1 ORDER BY P1.BIG LIMIT 10
SELECT _numfun(P1.BIG), _numfun(P1.BIG) FROM P1 ORDER BY P1.BIG LIMIT 1
SELECT _numfun(R1.TINY), ID FROM R1 ORDER BY ID
SELECT _numfun(R1.SMALL), ID FROM R1 ORDER BY ID
SELECT _numfun(R1.ID), ID FROM R1 ORDER BY ID
SELECT _numfun(R1.BIG), ID FROM R1 ORDER BY ID
SELECT _numfun(R1.TINY), ID FROM R1 ORDER BY ID ASC
SELECT _numfun(R1.SMALL), ID FROM R1 ORDER BY ID ASC
SELECT _numfun(R1.ID), ID FROM R1 ORDER BY ID ASC
SELECT _numfun(R1.BIG), ID FROM R1 ORDER BY ID ASC
SELECT _numfun(R1.TINY), ID FROM R1 ORDER BY ID DESC
SELECT _numfun(R1.SMALL), ID FROM R1 ORDER BY ID DESC
SELECT _numfun(R1.ID), ID FROM R1 ORDER BY ID DESC
SELECT _numfun(R1.BIG), ID FROM R1 ORDER BY ID DESC
SELECT (P1.TINY), _numfun(P1.TINY), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.TINY), _numfun(P1.TINY), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.TINY), _numfun(P1.TINY), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.TINY), _numfun(P1.TINY), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.TINY), _numfun(P1.SMALL), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.TINY), _numfun(P1.SMALL), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.TINY), _numfun(P1.SMALL), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.TINY), _numfun(P1.SMALL), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.TINY), _numfun(P1.ID), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.TINY), _numfun(P1.ID), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.TINY), _numfun(P1.ID), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.TINY), _numfun(P1.ID), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.TINY), _numfun(P1.BIG), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.TINY), _numfun(P1.BIG), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.TINY), _numfun(P1.BIG), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.TINY), _numfun(P1.BIG), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.TINY), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.TINY), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.TINY), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.TINY), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.SMALL), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.SMALL), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.SMALL), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.SMALL), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.ID), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.ID), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.ID), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.ID), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.BIG), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.BIG), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.BIG), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.SMALL), _numfun(P1.BIG), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.TINY), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.TINY), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.TINY), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.TINY), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.SMALL), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.SMALL), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.SMALL), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.SMALL), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.ID), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.ID), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.ID), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.ID), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.BIG), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.BIG), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.BIG), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.ID), _numfun(P1.BIG), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.TINY), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.TINY), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.TINY), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.TINY), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.SMALL), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.SMALL), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.SMALL), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.SMALL), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.ID), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.ID), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.ID), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.ID), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.BIG), _numfun(P1.TINY) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.BIG), _numfun(P1.SMALL) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.BIG), _numfun(P1.ID) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT (P1.BIG), _numfun(P1.BIG), _numfun(P1.BIG) FROM P1 ORDER BY 1 DESC, 2 DESC
SELECT NUM FROM P1 GROUP BY NUM ORDER BY NUM
SELECT NUM FROM R1 GROUP BY NUM ORDER BY NUM
SELECT * from R1 ORDER BY _numfun(R1.TINY), _numfun(R1.TINY)
SELECT * from R1 ORDER BY _numfun(R1.TINY), _numfun(R1.SMALL)
SELECT * from R1 ORDER BY _numfun(R1.TINY), _numfun(R1.ID)
SELECT * from R1 ORDER BY _numfun(R1.TINY), _numfun(R1.BIG)
SELECT * from R1 ORDER BY _numfun(R1.SMALL), _numfun(R1.TINY)
SELECT * from R1 ORDER BY _numfun(R1.SMALL), _numfun(R1.SMALL)
SELECT * from R1 ORDER BY _numfun(R1.SMALL), _numfun(R1.ID)
SELECT * from R1 ORDER BY _numfun(R1.SMALL), _numfun(R1.BIG)
SELECT * from R1 ORDER BY _numfun(R1.ID), _numfun(R1.TINY)
SELECT * from R1 ORDER BY _numfun(R1.ID), _numfun(R1.SMALL)
SELECT * from R1 ORDER BY _numfun(R1.ID), _numfun(R1.ID)
SELECT * from R1 ORDER BY _numfun(R1.ID), _numfun(R1.BIG)
SELECT * from R1 ORDER BY _numfun(R1.BIG), _numfun(R1.TINY)
SELECT * from R1 ORDER BY _numfun(R1.BIG), _numfun(R1.SMALL)
SELECT * from R1 ORDER BY _numfun(R1.BIG), _numfun(R1.ID)
SELECT * from R1 ORDER BY _numfun(R1.BIG), _numfun(R1.BIG)
SELECT SUM(DISTINCT(_numfun(P1.TINY))) FROM P1
SELECT AVG(DISTINCT(_numfun(P1.TINY))) FROM P1
SELECT MIN(DISTINCT(_numfun(P1.TINY))) FROM P1
SELECT MAX(DISTINCT(_numfun(P1.TINY))) FROM P1
SELECT COUNT(DISTINCT(_numfun(P1.TINY))) FROM P1
SELECT SUM(DISTINCT(_numfun(P1.SMALL))) FROM P1
SELECT AVG(DISTINCT(_numfun(P1.SMALL))) FROM P1
SELECT MIN(DISTINCT(_numfun(P1.SMALL))) FROM P1
SELECT MAX(DISTINCT(_numfun(P1.SMALL))) FROM P1
SELECT COUNT(DISTINCT(_numfun(P1.SMALL))) FROM P1
SELECT SUM(DISTINCT(_numfun(P1.ID))) FROM P1
SELECT AVG(DISTINCT(_numfun(P1.ID))) FROM P1
SELECT MIN(DISTINCT(_numfun(P1.ID))) FROM P1
SELECT MAX(DISTINCT(_numfun(P1.ID))) FROM P1
SELECT COUNT(DISTINCT(_numfun(P1.ID))) FROM P1
SELECT MIN(DISTINCT(_numfun(P1.BIG))) FROM P1
SELECT MAX(DISTINCT(_numfun(P1.BIG))) FROM P1
SELECT COUNT(DISTINCT(_numfun(P1.BIG))) FROM P1
SELECT _numfun(R1.SMALL), _numagg(_numfun(R1.TINY)) FROM R1 GROUP BY _numfun(R1.SMALL)
SELECT _numfun(R1.ID), _numagg(_numfun(R1.TINY)) FROM R1 GROUP BY _numfun(R1.ID)
SELECT _numfun(R1.BIG), _numagg(_numfun(R1.TINY)) FROM R1 GROUP BY _numfun(R1.BIG)
SELECT _numfun(R1.TINY), _numagg(_numfun(R1.SMALL)) FROM R1 GROUP BY _numfun(R1.TINY)
SELECT _numfun(R1.ID), _numagg(_numfun(R1.SMALL)) FROM R1 GROUP BY _numfun(R1.ID)
SELECT _numfun(R1.BIG), _numagg(_numfun(R1.SMALL)) FROM R1 GROUP BY _numfun(R1.BIG)
SELECT _numfun(R1.TINY), _numagg(_numfun(R1.ID)) FROM R1 GROUP BY _numfun(R1.TINY)
SELECT _numfun(R1.SMALL), _numagg(_numfun(R1.ID)) FROM R1 GROUP BY _numfun(R1.SMALL)
SELECT _numfun(R1.BIG), _numagg(_numfun(R1.ID)) FROM R1 GROUP BY _numfun(R1.BIG)
SELECT _numfun(R1.TINY), _numagg(_numfun(R1.BIG)) FROM R1 GROUP BY _numfun(R1.TINY)
SELECT _numfun(R1.SMALL), _numagg(_numfun(R1.BIG)) FROM R1 GROUP BY _numfun(R1.SMALL)
SELECT _numfun(R1.ID), _numagg(_numfun(R1.BIG)) FROM R1 GROUP BY _numfun(R1.ID)
SELECT MIN(_numfun(P1.TINY)), MAX(_numfun(P1.TINY)) FROM P1
SELECT MIN(_numfun(P1.TINY)), MAX(_numfun(P1.SMALL)) FROM P1
SELECT MIN(_numfun(P1.SMALL)), MAX(_numfun(P1.SMALL)) FROM P1
SELECT MIN(_numfun(P1.SMALL)), MAX(_numfun(P1.ID)) FROM P1
SELECT MIN(_numfun(P1.ID)), MAX(_numfun(P1.ID)) FROM P1
SELECT MIN(_numfun(P1.ID)), MAX(_numfun(P1.BIG)) FROM P1
SELECT MIN(_numfun(P1.BIG)), MAX(_numfun(P1.TINY)) FROM P1
SELECT MIN(_numfun(P1.BIG)), MAX(_numfun(P1.BIG)) FROM P1
SELECT COUNT(P1.TINY), SUM(_numfun(P1.TINY)) FROM P1
SELECT COUNT(P1.TINY), SUM(_numfun(P1.SMALL)) FROM P1
SELECT COUNT(P1.SMALL), SUM(_numfun(P1.SMALL)) FROM P1
SELECT COUNT(P1.SMALL), SUM(_numfun(P1.ID)) FROM P1
SELECT COUNT(P1.ID), SUM(_numfun(P1.TINY)) FROM P1
SELECT COUNT(P1.ID), SUM(_numfun(P1.ID)) FROM P1
SELECT COUNT(P1.BIG), SUM(_numfun(P1.TINY)) FROM P1
SELECT COUNT(P1.BIG), SUM(_numfun(P1.SMALL)) FROM P1
SELECT COUNT(P1.BIG), SUM(_numfun(P1.ID)) FROM P1
SELECT AVG(_numfun(R1.TINY)), COUNT(R1.TINY) FROM R1
SELECT AVG(_numfun(R1.TINY)), COUNT(R1.SMALL) FROM R1
SELECT AVG(_numfun(R1.SMALL)), COUNT(R1.SMALL) FROM R1
SELECT AVG(_numfun(R1.SMALL)), COUNT(R1.ID) FROM R1
SELECT AVG(_numfun(R1.ID)), COUNT(R1.ID) FROM R1
SELECT AVG(_numfun(R1.ID)), COUNT(R1.BIG) FROM R1
SELECT MAX(_numfun(R1.TINY)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.TINY)) FROM R1
SELECT MAX(_numfun(R1.TINY)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.SMALL)) FROM R1
SELECT MAX(_numfun(R1.TINY)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.ID)) FROM R1
SELECT MAX(_numfun(R1.TINY)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.BIG)) FROM R1
SELECT MAX(_numfun(R1.TINY)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.TINY)) FROM R1
SELECT MAX(_numfun(R1.TINY)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.SMALL)) FROM R1
SELECT MAX(_numfun(R1.TINY)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.ID)) FROM R1
SELECT MAX(_numfun(R1.TINY)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.BIG)) FROM R1
SELECT MAX(_numfun(R1.TINY)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.TINY)) FROM R1
SELECT MAX(_numfun(R1.TINY)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.SMALL)) FROM R1
SELECT MAX(_numfun(R1.TINY)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.ID)) FROM R1
SELECT MAX(_numfun(R1.TINY)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.BIG)) FROM R1
SELECT MAX(_numfun(R1.SMALL)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.TINY)) FROM R1
SELECT MAX(_numfun(R1.SMALL)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.SMALL)) FROM R1
SELECT MAX(_numfun(R1.SMALL)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.ID)) FROM R1
SELECT MAX(_numfun(R1.SMALL)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.BIG)) FROM R1
SELECT MAX(_numfun(R1.SMALL)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.TINY)) FROM R1
SELECT MAX(_numfun(R1.SMALL)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.SMALL)) FROM R1
SELECT MAX(_numfun(R1.SMALL)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.ID)) FROM R1
SELECT MAX(_numfun(R1.SMALL)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.BIG)) FROM R1
SELECT MAX(_numfun(R1.SMALL)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.TINY)) FROM R1
SELECT MAX(_numfun(R1.SMALL)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.SMALL)) FROM R1
SELECT MAX(_numfun(R1.SMALL)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.ID)) FROM R1
SELECT MAX(_numfun(R1.SMALL)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.BIG)) FROM R1
SELECT MAX(_numfun(R1.ID)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.TINY)) FROM R1
SELECT MAX(_numfun(R1.ID)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.SMALL)) FROM R1
SELECT MAX(_numfun(R1.ID)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.ID)) FROM R1
SELECT MAX(_numfun(R1.ID)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.BIG)) FROM R1
SELECT MAX(_numfun(R1.ID)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.TINY)) FROM R1
SELECT MAX(_numfun(R1.ID)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.SMALL)) FROM R1
SELECT MAX(_numfun(R1.ID)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.ID)) FROM R1
SELECT MAX(_numfun(R1.ID)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.BIG)) FROM R1
SELECT MAX(_numfun(R1.ID)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.TINY)) FROM R1
SELECT MAX(_numfun(R1.ID)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.SMALL)) FROM R1
SELECT MAX(_numfun(R1.ID)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.ID)) FROM R1
SELECT MAX(_numfun(R1.ID)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.BIG)) FROM R1
SELECT MAX(_numfun(R1.BIG)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.TINY)) FROM R1
SELECT MAX(_numfun(R1.BIG)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.SMALL)) FROM R1
SELECT MAX(_numfun(R1.BIG)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.ID)) FROM R1
SELECT MAX(_numfun(R1.BIG)), SUM(_numfun(R1.TINY)), COUNT(_numfun(R1.BIG)) FROM R1
SELECT MAX(_numfun(R1.BIG)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.TINY)) FROM R1
SELECT MAX(_numfun(R1.BIG)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.SMALL)) FROM R1
SELECT MAX(_numfun(R1.BIG)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.ID)) FROM R1
SELECT MAX(_numfun(R1.BIG)), SUM(_numfun(R1.SMALL)), COUNT(_numfun(R1.BIG)) FROM R1
SELECT MAX(_numfun(R1.BIG)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.TINY)) FROM R1
SELECT MAX(_numfun(R1.BIG)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.SMALL)) FROM R1
SELECT MAX(_numfun(R1.BIG)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.ID)) FROM R1
SELECT MAX(_numfun(R1.BIG)), SUM(_numfun(R1.ID)), COUNT(_numfun(R1.BIG)) FROM R1
UPDATE P1 SET BIG = _numfun(BIG + 3) WHERE _numfun(P1.TINY)<-2757235033152408308
UPDATE P1 SET BIG = _numfun(BIG - 5) WHERE _numfun(P1.TINY)<7950128858369705897
UPDATE P1 SET BIG = _numfun(BIG * 1) WHERE _numfun(P1.TINY)<-47540877002146914
UPDATE P1 SET BIG = _numfun(BIG / 4) WHERE _numfun(P1.TINY)<-5089496438620652548
UPDATE P1 SET BIG = _numfun(BIG + 2) WHERE _numfun(P1.TINY)>8226102654966332868
UPDATE P1 SET BIG = _numfun(BIG - 3) WHERE _numfun(P1.TINY)>-5404616181249682282
UPDATE P1 SET BIG = _numfun(BIG * 3) WHERE _numfun(P1.TINY)>-3906988707622701870
UPDATE P1 SET BIG = _numfun(BIG / 5) WHERE _numfun(P1.TINY)>2832513174533519473
UPDATE P1 SET BIG = _numfun(BIG + 1) WHERE _numfun(P1.TINY) = 1804717198847645821
UPDATE P1 SET BIG = _numfun(BIG - 5) WHERE _numfun(P1.TINY) = 2635951282234445552
UPDATE P1 SET BIG = _numfun(BIG * 2) WHERE _numfun(P1.TINY) = 5371320810490010703
UPDATE P1 SET BIG = _numfun(BIG / 1) WHERE _numfun(P1.TINY) = -2553730876524111060
UPDATE P1 SET BIG = _numfun(BIG + 1) WHERE _numfun(P1.TINY)<= 5323412980179462647
UPDATE P1 SET BIG = _numfun(BIG - 3) WHERE _numfun(P1.TINY)<= -7332274756139637279
UPDATE P1 SET BIG = _numfun(BIG * 2) WHERE _numfun(P1.TINY)<= -2893755347486675735
UPDATE P1 SET BIG = _numfun(BIG / 1) WHERE _numfun(P1.TINY)<= 3343877902758916029
UPDATE P1 SET BIG = _numfun(BIG + 1) WHERE _numfun(P1.TINY)>= -8516712302248338998
UPDATE P1 SET BIG = _numfun(BIG - 4) WHERE _numfun(P1.TINY)>= 8335291952387511412
UPDATE P1 SET BIG = _numfun(BIG * 1) WHERE _numfun(P1.TINY)>= -8609863635522143932
UPDATE P1 SET BIG = _numfun(BIG / 1) WHERE _numfun(P1.TINY)>= -637115028261090912
UPDATE P1 SET BIG = _numfun(BIG + 2) WHERE _numfun(P1.TINY) != -7540565965756370697
UPDATE P1 SET BIG = _numfun(BIG - 2) WHERE _numfun(P1.TINY) != -5073580256539888994
UPDATE P1 SET BIG = _numfun(BIG * 1) WHERE _numfun(P1.TINY) != -5825488861567717844
UPDATE P1 SET BIG = _numfun(BIG / 5) WHERE _numfun(P1.TINY) != 5242115978238191553
UPDATE P1 SET BIG = _numfun(BIG + 2) WHERE _numfun(P1.TINY)<>-1909198676088805987
UPDATE P1 SET BIG = _numfun(BIG - 3) WHERE _numfun(P1.TINY)<>-6035989067614565234
UPDATE P1 SET BIG = _numfun(BIG * 5) WHERE _numfun(P1.TINY)<>-7113251895523477204
UPDATE P1 SET BIG = _numfun(BIG / 2) WHERE _numfun(P1.TINY)<>-288217681498396194
UPDATE P1 SET BIG = _numfun(BIG + 3) WHERE _numfun(P1.SMALL)<-3226500742695331552
UPDATE P1 SET BIG = _numfun(BIG - 4) WHERE _numfun(P1.SMALL)<-3299868179515090098
UPDATE P1 SET BIG = _numfun(BIG * 2) WHERE _numfun(P1.SMALL)<6810460087217235742
UPDATE P1 SET BIG = _numfun(BIG / 4) WHERE _numfun(P1.SMALL)<8508731623988325996
UPDATE P1 SET BIG = _numfun(BIG + 4) WHERE _numfun(P1.SMALL)>5847502806818036994
UPDATE P1 SET BIG = _numfun(BIG - 3) WHERE _numfun(P1.SMALL)>6437320301510283829
UPDATE P1 SET BIG = _numfun(BIG * 2) WHERE _numfun(P1.SMALL)>-9140807828203287644
UPDATE P1 SET BIG = _numfun(BIG / 2) WHERE _numfun(P1.SMALL)>3734444743953839366
UPDATE P1 SET BIG = _numfun(BIG + 1) WHERE _numfun(P1.SMALL) = 2077529313067732161
UPDATE P1 SET BIG = _numfun(BIG - 2) WHERE _numfun(P1.SMALL) = -3414328168904800771
UPDATE P1 SET BIG = _numfun(BIG * 3) WHERE _numfun(P1.SMALL) = 144653773726845863
UPDATE P1 SET BIG = _numfun(BIG / 1) WHERE _numfun(P1.SMALL) = -340370065924144757
UPDATE P1 SET BIG = _numfun(BIG + 5) WHERE _numfun(P1.SMALL)<= 4054014389251978057
UPDATE P1 SET BIG = _numfun(BIG - 5) WHERE _numfun(P1.SMALL)<= 5357747584077230336
UPDATE P1 SET BIG = _numfun(BIG * 2) WHERE _numfun(P1.SMALL)<= -3802379717115067901
UPDATE P1 SET BIG = _numfun(BIG / 2) WHERE _numfun(P1.SMALL)<= -1642268279345297568
UPDATE P1 SET BIG = _numfun(BIG + 4) WHERE _numfun(P1.SMALL)>= 7999786966419932105
UPDATE P1 SET BIG = _numfun(BIG - 4) WHERE _numfun(P1.SMALL)>= -3214932964714158554
UPDATE P1 SET BIG = _numfun(BIG * 3) WHERE _numfun(P1.SMALL)>= -6048051216829131408
UPDATE P1 SET BIG = _numfun(BIG / 1) WHERE _numfun(P1.SMALL)>= -3240799469533709390
UPDATE P1 SET BIG = _numfun(BIG + 3) WHERE _numfun(P1.SMALL) != -6302019174944227343
UPDATE P1 SET BIG = _numfun(BIG - 2) WHERE _numfun(P1.SMALL) != 1677741914958299456
UPDATE P1 SET BIG = _numfun(BIG * 3) WHERE _numfun(P1.SMALL) != 7730416881653642163
UPDATE P1 SET BIG = _numfun(BIG / 3) WHERE _numfun(P1.SMALL) != -8761190365306329936
UPDATE P1 SET BIG = _numfun(BIG + 1) WHERE _numfun(P1.SMALL)<>-5714142184126119220
UPDATE P1 SET BIG = _numfun(BIG - 2) WHERE _numfun(P1.SMALL)<>-8906176759904468834
UPDATE P1 SET BIG = _numfun(BIG * 2) WHERE _numfun(P1.SMALL)<>80300701923380757
UPDATE P1 SET BIG = _numfun(BIG / 1) WHERE _numfun(P1.SMALL)<>-1265996469002764937
UPDATE P1 SET BIG = _numfun(BIG + 4) WHERE _numfun(P1.ID)<5993215963949717109
UPDATE P1 SET BIG = _numfun(BIG - 2) WHERE _numfun(P1.ID)<-3879923944570696856
UPDATE P1 SET BIG = _numfun(BIG * 5) WHERE _numfun(P1.ID)<-4560405232135839569
UPDATE P1 SET BIG = _numfun(BIG / 4) WHERE _numfun(P1.ID)<-8468056349923437764
UPDATE P1 SET BIG = _numfun(BIG + 4) WHERE _numfun(P1.ID)>284236711253453767
UPDATE P1 SET BIG = _numfun(BIG - 1) WHERE _numfun(P1.ID)>-2631625953709706957
UPDATE P1 SET BIG = _numfun(BIG * 5) WHERE _numfun(P1.ID)>932475866095805377
UPDATE P1 SET BIG = _numfun(BIG / 2) WHERE _numfun(P1.ID)>-8672920789408729479
UPDATE P1 SET BIG = _numfun(BIG + 1) WHERE _numfun(P1.ID) = -5770550971786178325
UPDATE P1 SET BIG = _numfun(BIG - 2) WHERE _numfun(P1.ID) = -1111864449302897658
UPDATE P1 SET BIG = _numfun(BIG * 5) WHERE _numfun(P1.ID) = -8134951012197224705
UPDATE P1 SET BIG = _numfun(BIG / 4) WHERE _numfun(P1.ID) = 8584024879126362000
UPDATE P1 SET BIG = _numfun(BIG + 5) WHERE _numfun(P1.ID)<= -3604128388899854964
UPDATE P1 SET BIG = _numfun(BIG - 4) WHERE _numfun(P1.ID)<= -6166709514213130390
UPDATE P1 SET BIG = _numfun(BIG * 1) WHERE _numfun(P1.ID)<= 3204479613186189630
UPDATE P1 SET BIG = _numfun(BIG / 1) WHERE _numfun(P1.ID)<= -5184975317052257716
UPDATE P1 SET BIG = _numfun(BIG + 1) WHERE _numfun(P1.ID)>= 4558910149767012604
UPDATE P1 SET BIG = _numfun(BIG - 3) WHERE _numfun(P1.ID)>= 4495081601792556409
UPDATE P1 SET BIG = _numfun(BIG * 1) WHERE _numfun(P1.ID)>= -2861679748085318849
UPDATE P1 SET BIG = _numfun(BIG / 3) WHERE _numfun(P1.ID)>= -6538175633600663442
UPDATE P1 SET BIG = _numfun(BIG + 3) WHERE _numfun(P1.ID) != -7102623653207261177
UPDATE P1 SET BIG = _numfun(BIG - 3) WHERE _numfun(P1.ID) != 3117682132316380919
UPDATE P1 SET BIG = _numfun(BIG * 1) WHERE _numfun(P1.ID) != -6686477275480160650
UPDATE P1 SET BIG = _numfun(BIG / 3) WHERE _numfun(P1.ID) != -6021969706563578427
UPDATE P1 SET BIG = _numfun(BIG + 3) WHERE _numfun(P1.ID)<>7795758722029425583
UPDATE P1 SET BIG = _numfun(BIG - 4) WHERE _numfun(P1.ID)<>-8394382660381725357
UPDATE P1 SET BIG = _numfun(BIG * 4) WHERE _numfun(P1.ID)<>-1271564989061592875
UPDATE P1 SET BIG = _numfun(BIG / 4) WHERE _numfun(P1.ID)<>6544075385294170330
UPDATE P1 SET BIG = _numfun(BIG + 5) WHERE _numfun(P1.BIG)<7654338991282806077
UPDATE P1 SET BIG = _numfun(BIG - 1) WHERE _numfun(P1.BIG)<7555405560264022889
UPDATE P1 SET BIG = _numfun(BIG * 1) WHERE _numfun(P1.BIG)<-6512311696124539578
UPDATE P1 SET BIG = _numfun(BIG / 2) WHERE _numfun(P1.BIG)<1671633752830635479
UPDATE P1 SET BIG = _numfun(BIG + 5) WHERE _numfun(P1.BIG)>973131976021170438
UPDATE P1 SET BIG = _numfun(BIG - 4) WHERE _numfun(P1.BIG)>-3779201474080102835
UPDATE P1 SET BIG = _numfun(BIG - 2) WHERE _numfun(P1.BIG)>8953972640704989015
UPDATE P1 SET BIG = _numfun(BIG * 1) WHERE _numfun(P1.BIG)>-1400881875701078722
UPDATE P1 SET BIG = _numfun(BIG / 4) WHERE _numfun(P1.BIG)>-8576858860939129265
UPDATE P1 SET BIG = _numfun(BIG + 4) WHERE _numfun(P1.BIG) = -5537279977271251941
UPDATE P1 SET BIG = _numfun(BIG - 1) WHERE _numfun(P1.BIG) = -7010377716732874042
UPDATE P1 SET BIG = _numfun(BIG * 4) WHERE _numfun(P1.BIG) = -5592515944282379093
UPDATE P1 SET BIG = _numfun(BIG / 1) WHERE _numfun(P1.BIG) = 2424348998029489190
UPDATE P1 SET BIG = _numfun(BIG + 2) WHERE _numfun(P1.BIG)<= -270329786676000532
UPDATE P1 SET BIG = _numfun(BIG - 4) WHERE _numfun(P1.BIG)<= 3107655648852600798
UPDATE P1 SET BIG = _numfun(BIG * 1) WHERE _numfun(P1.BIG)<= 1502046171944258597
UPDATE P1 SET BIG = _numfun(BIG / 3) WHERE _numfun(P1.BIG)<= 3203175386277504671
UPDATE P1 SET BIG = _numfun(BIG + 4) WHERE _numfun(P1.BIG)>= -1122239507764664886
UPDATE P1 SET BIG = _numfun(BIG - 2) WHERE _numfun(P1.BIG)>= -7852309270917190094
UPDATE P1 SET BIG = _numfun(BIG * 4) WHERE _numfun(P1.BIG)>= -6655108175476956453
UPDATE P1 SET BIG = _numfun(BIG / 1) WHERE _numfun(P1.BIG)>= -8261184180343871556
UPDATE P1 SET BIG = _numfun(BIG + 5) WHERE _numfun(P1.BIG) != 4251671080962208929
UPDATE P1 SET BIG = _numfun(BIG - 5) WHERE _numfun(P1.BIG) != -8010056991169055005
UPDATE P1 SET BIG = _numfun(BIG * 1) WHERE _numfun(P1.BIG) != 7131951394081492896
UPDATE P1 SET BIG = _numfun(BIG / 1) WHERE _numfun(P1.BIG) != -8809727415515593700
UPDATE P1 SET BIG = _numfun(BIG + 2) WHERE _numfun(P1.BIG)<>-1010776520716983022
UPDATE P1 SET BIG = _numfun(BIG - 1) WHERE _numfun(P1.BIG)<>-9063836137297486563
UPDATE P1 SET BIG = _numfun(BIG * 1) WHERE _numfun(P1.BIG)<>-3957730057141003123
UPDATE P1 SET BIG = _numfun(BIG / 4) WHERE _numfun(P1.BIG)<>8226325602450915002
