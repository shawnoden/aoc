/***** --- Day 7: Camel Cards --- *****/
/* https://adventofcode.com/2023/day/7 */
/*
STRENGTH: A, K, Q, J, T, 9, 8, 7, 6, 5, 4, 3, or 2
RULES:Every hand is exactly one type. From strongest to weakest, they are:

Five of a kind, where all five cards have the same label: AAAAA
Four of a kind, where four cards have the same label and one card has a different label: AA8AA
Full house, where three cards have the same label, and the remaining two cards share a different label: 23332
Three of a kind, where three cards have the same label, and the remaining two cards are each different from any other card in the hand: TTT98
Two pair, where two cards share one label, two other cards share a second label, and the remaining card has a third label: 23432
One pair, where two cards share one label, and the other three cards have a different label from the pair and each other: A23A4
High card, where all cards' labels are distinct: 23456
*/

/* SETUP */

DECLARE @inp varchar(max) = 'Q97J7 740
65KJ6 889
6664J 275
JKK44 856
TJ285 722
482JT 338
KQ7T7 949
5K89Q 977
KJ949 437
366T3 204
T5797 847
3K7K3 953
AKAQA 323
88728 241
27AJA 29
69466 132
QT589 378
388Q5 7
39333 625
556J5 936
72ATQ 610
3Q6QJ 962
657QQ 929
85478 25
8AA48 195
A5AAK 44
33232 510
77227 824
77748 502
AJAAA 945
A3AAA 30
AKJ29 721
4666T 724
78Q8Q 261
Q7A95 951
342TQ 796
K7K77 523
39K39 128
82888 782
J466A 70
25222 463
TT222 418
9T2T9 848
3JKKJ 832
2TJ2T 36
47777 840
494TK 332
77KTK 35
A9A9A 219
3ATT3 217
5J8JQ 763
AA224 144
82TT2 220
55J2J 623
96999 930
T9T9T 268
J6AAJ 756
22J2A 626
A6652 519
55JKK 225
6JJ56 257
6Q996 384
22J22 498
A4888 188
43K7J 309
627QA 904
55K8A 160
5JJK5 924
QAAAJ 712
64967 417
J4744 822
7AK2A 747
6Q7Q7 859
53294 986
J88J8 897
25T8T 19
99939 223
337J3 749
TT32T 798
T7777 33
3278J 168
4J3QT 787
5TA5J 741
494J4 255
66TT6 415
7KAKA 664
448J9 792
T898T 124
49444 74
J66J6 410
AAQA7 785
7J673 573
T4TTT 40
K7277 992
Q947J 162
A4AQQ 581
73A37 881
KAA99 243
J8369 63
7K773 799
QQQJJ 503
3A3A7 556
A4A7A 943
94949 32
22QA2 744
Q665K 57
Q33QQ 920
33TT3 343
88555 814
QQ85T 466
7AQ4K 791
8T888 590
2T78K 835
39939 854
A8888 458
K462T 146
T6A72 527
42AQ8 42
KKKKQ 143
JTTT8 694
K3JK7 766
54627 153
Q8A62 213
A9999 193
Q2772 400
6JJ6J 322
A66A8 834
8Q3J5 467
49489 959
88598 896
2K228 545
5A939 917
66K66 414
2T666 233
J4Q7J 58
A8A5Q 899
T5547 708
75535 14
9AT8A 597
383J3 584
A2KJK 471
T8822 211
54649 512
8K668 113
QAQAQ 587
6666J 296
7K3J6 941
74QTA 447
6JK66 380
788Q8 973
33J4A 857
8Q99A 873
666Q8 589
AJJA7 52
66983 692
9555K 319
249QQ 371
AT7T4 525
924JA 631
3K883 273
J6333 830
5QAT2 838
88J77 254
5T6K3 644
22AA5 388
5J5QT 807
AATT7 194
66659 197
239JQ 534
922QQ 733
84Q5K 385
66TJA 893
TTT7T 643
66646 393
K5A68 672
7KKKJ 133
234J5 216
J4J44 134
77773 236
AT8K7 784
88QQQ 551
42Q5J 330
42AA4 720
77587 350
385A2 27
32JQ2 264
2A323 802
8J7Q8 533
6Q6Q2 704
6656T 176
8AQTJ 158
89TJ8 293
37668 286
26662 688
9KK47 560
2262J 391
64545 382
42Q93 509
J8Q88 968
QA798 588
Q4444 609
Q55QQ 811
A5555 87
93838 570
A9354 431
8QAJ5 887
222J8 665
T6Q45 680
7866K 95
33323 919
55A95 705
K3KKK 760
KKKQQ 918
TTQT7 686
A38A9 454
Q38K5 370
KKKKJ 465
6Q336 368
33K33 931
T2TTT 870
QKAQK 682
2K635 157
696QQ 69
9J29J 450
A9K6A 971
KQK5K 691
QJQA2 500
6655A 351
A6AAJ 778
83J88 661
38TQ5 244
J3JTT 816
K9949 506
KT8AJ 96
5947A 304
Q8848 345
KJ537 89
K62Q5 300
93T44 743
K44KT 60
559KJ 565
87JA8 155
AKATA 464
J9423 335
943J4 948
4Q365 752
3Q5A3 636
9T998 82
AT486 731
KQK8Q 409
JKTTK 647
5J9TA 877
444A7 357
K7K57 987
37273 656
J999J 106
J2922 998
2492A 633
4489A 394
777J7 452
3T5J4 477
7ATT7 260
J69T7 79
885J6 77
3JA55 552
J9TK9 815
777Q7 874
K5232 221
KQKK4 697
A3333 8
8KA84 453
5QKJK 212
9KAKK 574
355Q5 844
Q4Q44 484
5552Q 761
J654K 600
43KJ5 813
3AA9T 329
JAA88 923
4A4K4 738
922Q2 413
22JJ4 886
43425 359
342T7 292
44K87 139
88656 657
T54TT 821
5T5T3 354
AQ367 759
J8584 485
Q5QAA 303
983K4 161
22262 487
74KQ4 177
22293 478
588JJ 831
QA2A6 864
9Q4A7 56
K433J 196
5J468 730
JAA24 862
53365 190
229TA 379
34J74 206
K587A 627
T4TQT 64
86868 520
69KJ6 674
J7T63 871
KK33K 486
AJJTK 576
JA777 416
J4Q88 852
4K9QA 884
K3393 10
J4444 828
A9JAJ 389
999TT 605
Q5Q66 137
QQK2K 101
QQ7J3 93
4TTT7 507
55757 670
A32A7 333
722TT 624
5TKJ2 53
KKK36 980
8Q4JQ 619
35JT3 428
22J2Q 441
9564K 481
T6K4T 395
K25KK 181
99992 620
93778 289
Q67A8 622
222A5 693
372Q5 577
5Q7A3 298
AA5AJ 540
278Q7 191
9Q999 451
77JAA 461
6A7J5 839
3A9A9 72
33363 270
J3Q49 970
22Q2K 432
AA666 772
2K2J2 667
KTQA2 521
64994 817
793T6 37
25255 381
AK64T 882
6AQ8T 655
J2QQ6 328
K2KK6 408
97J88 488
QA4QQ 103
J44JJ 955
29992 511
J4884 174
6A229 240
ATJQ2 781
QAK7T 653
JKQQK 285
9AT49 985
43253 942
76Q8Q 472
88388 475
576AK 438
8QA53 637
69TK9 420
2T77K 566
22343 67
52558 9
2376J 742
82KA9 703
3TTTT 377
8T88T 726
6J79K 392
3Q333 591
55655 272
3JKQA 716
22266 779
J854J 535
A2TTT 771
99636 991
J2TTT 214
68QT8 837
4JT67 164
K88TA 710
ATQ35 711
99T99 342
333J2 430
5K255 208
JJ22J 252
8KT24 171
4287J 80
K7878 494
K37J7 851
Q97T4 860
QJ5K5 12
4KTQ4 658
ATTAA 898
562KJ 806
4T8Q6 308
JQ4K4 48
T8844 163
66677 50
QQQQ8 777
23KJK 988
8QA56 130
9329Q 299
8K85T 412
82K27 810
347A9 958
KQ8J2 198
7JA49 735
JK6Q8 582
766TK 641
7939K 580
Q6888 59
2A2A2 282
JAQQ5 652
99K88 364
44443 757
97739 483
268JA 85
24444 256
QTQTT 62
AAA4A 606
2AKKT 532
875KT 127
9226J 346
97977 316
KK4KK 258
66355 659
8K6TJ 167
59J7A 46
9TJ4K 231
33Q35 150
555J5 187
T6QTT 954
88588 433
34333 305
4AJ8Q 698
TTATT 183
9KJJ5 373
KA65A 459
849KA 396
J2272 950
6Q999 45
TT444 455
9AQQA 611
6275A 449
Q7KTJ 489
K22KJ 599
J8298 571
J5JK7 676
JJ922 426
53T38 406
7K477 790
82822 539
57434 344
8T555 15
97997 946
29675 262
3T322 554
K5T7J 186
7KKKK 598
997J7 572
Q22QJ 47
52773 713
JJ8JJ 557
4JT44 367
5Q4A9 684
8656T 707
J4JK4 999
7K777 1
36388 921
AT487 630
7Q89K 495
QJQQQ 422
8K8K2 51
A5A75 827
85822 102
44K46 809
86686 938
A77AA 230
T7JTT 479
6Q746 964
K8KTK 732
995Q7 281
2798Q 1000
QQ5QQ 325
AA76J 68
3QA4A 868
J7257 337
8Q55Q 516
JAAA7 594
6Q2A4 6
66696 885
T429J 603
T7878 518
47TJT 75
JTJ95 823
J24Q3 638
44477 470
7A779 994
8J268 907
77797 543
26822 462
22279 818
6JA6A 209
73T37 602
AA55A 727
4JA84 237
4T4AJ 915
68786 916
TTJT5 714
J2J22 339
KK88Q 596
TTJ4J 900
K898K 966
666T6 555
8J3QT 90
33366 863
QQJKQ 267
3QQQ4 207
29TQT 253
33553 112
22AAA 34
Q9842 315
89KK6 290
3969K 805
54844 245
55765 20
7A3J6 156
375K2 83
33J3Q 775
77KQQ 224
Q7254 28
QA87T 729
T4772 326
33AAA 909
33T2T 905
8JQT8 201
JJJA8 990
23KAQ 361
AA777 908
35974 960
55559 558
26223 423
6JT58 375
92286 842
7AK33 853
86248 764
338K3 151
44466 849
Q8Q88 719
T23J2 617
A5A7A 579
88688 115
6K64K 320
79524 737
Q3692 249
37366 505
5Q992 526
22242 340
TJ7T7 608
68666 210
3T454 175
T2299 266
TT8TQ 26
A647A 178
33399 841
2J99T 228
22K22 284
T49AK 425
9KJ3K 200
996T4 402
557A5 718
7JT78 903
94AAJ 140
843A8 444
73773 271
K73QA 4
8QA2A 614
QAQQQ 100
89999 639
58Q54 767
26422 173
A7AJK 654
AKTJ7 159
AA44A 311
6592Q 148
KQQ4Q 922
Q6622 935
59599 618
J9646 493
A2T22 548
8A233 215
TTJ99 788
JJ868 880
AT32J 98
AQQAA 634
4TJ99 957
7JJK9 349
78TJA 892
6T423 679
TKK6K 794
JJ6TK 327
JQKK2 891
3QQQQ 404
75362 490
T39Q7 754
89997 469
QK7K7 829
KA3TQ 297
78278 136
A5KKJ 84
AAA35 706
4T94T 825
QQ7Q7 172
T89AT 314
66A96 699
332JJ 31
55656 43
4Q454 947
96896 536
T9274 336
78888 372
A4848 604
3AT46 736
TK999 895
7T445 649
QK28Q 383
7T29J 355
7747J 689
3333J 662
6AT66 616
663T5 110
99K4K 508
28J66 317
3T993 362
969J9 531
J5999 227
8899T 979
67757 846
56666 166
J9427 184
95939 789
69ATA 538
T3A6T 668
93Q56 969
9729J 901
K7KQK 808
6QQQ7 185
94477 768
599AA 474
A766A 865
8886J 746
66AK6 259
T3AJQ 443
3KK63 427
TTTJ6 424
36467 123
TTJJT 169
Q24J4 542
7QQ77 41
Q4QJ4 180
K444K 773
367T3 615
549K2 989
TTJJA 583
75TT7 468
9299Q 872
A9J5A 755
22QQQ 234
T44TT 635
A7AAA 276
T7T7T 858
95595 348
KKJ8Q 434
3K49A 888
AJ5A3 675
J8488 21
4K8TJ 666
K7QQ5 914
TKKKA 751
6JQAJ 61
A33A3 248
9J99A 517
24T99 125
K7A7T 592
94AK9 497
992J2 81
82J88 473
778TK 997
44422 629
337Q3 114
JJJJJ 996
K55K5 715
AAAT3 826
44848 499
JJA33 578
35288 295
TK2JT 291
46977 492
22722 92
77699 269
J9KQT 192
52555 758
JK692 793
85A55 687
4A944 972
4J949 440
22KKK 119
969TT 203
55994 229
KKK77 515
6QQ44 118
462K6 876
3J7QA 685
33335 621
A4339 669
8J969 651
52852 55
TTJ3T 242
J3393 356
AATT5 23
566J5 287
9J49Q 152
7K577 911
5Q7J2 974
AAAJJ 24
KKKKA 491
8Q888 750
T7K3A 165
K3565 66
Q4J33 446
33238 683
T368T 54
67Q7J 445
JJ555 263
A4867 723
843QT 933
T85TT 937
TJT23 334
88AJ5 321
35J82 386
72275 145
4367T 86
99696 436
TKTAA 553
96696 39
T4442 549
493K7 365
66Q66 131
747T4 541
95999 544
Q75QQ 995
54KA9 850
582JJ 421
QQAA7 677
K4444 313
84877 804
K9999 568
7JKK7 117
3A9J7 928
66568 939
83733 302
JQ37T 138
K8JJ9 277
K3A33 801
J523J 695
333JA 435
KK855 239
39J99 235
8T8TT 318
6K66K 104
54444 575
K83KK 952
K835T 944
T4A44 135
75566 324
44A3A 562
74KT2 16
T625J 154
94449 528
6969J 126
TK554 671
5A797 601
77778 129
9K485 88
363JK 546
25T39 407
5545J 358
KK6K6 678
QQQQK 569
QT256 280
39896 288
TT9TT 301
39JAK 753
JQQJJ 251
KA2AA 913
79KT5 978
3TT3T 5
76747 38
A7JA4 501
J9AJ8 883
T7JJJ 725
AQA9J 940
444TK 845
6Q6QT 645
8KAQ5 390
3534A 456
958QQ 49
95482 927
J497J 108
QQ8QK 812
674TK 961
8T5J5 769
2KK28 975
2JJ5J 398
692J9 932
AJ8AA 595
9999J 76
373T3 912
JTTTT 982
6A6AA 783
66J36 681
4A77J 278
84848 265
49865 537
34Q6Q 530
2A262 238
K34JQ 776
3A533 283
2Q27Q 247
A8QTQ 341
A856J 116
57A48 926
742Q8 279
23QQK 331
2QQQJ 797
K9JKK 795
K6KKK 855
32299 613
2QA9T 522
36666 401
Q96QQ 189
66525 894
T2822 376
9K586 843
TA988 890
22292 366
7J23K 734
Q283K 149
83333 564
27JTQ 561
9K23Q 360
AQ2AA 120
QQ7QQ 496
4KKK4 963
337JJ 352
J424K 739
95TA2 429
QTJTT 586
T78TQ 250
6TTTT 878
29K72 353
42944 397
QQQ48 547
T45JA 514
JQK63 646
TAT55 866
88J88 310
333JJ 170
A2AJ2 457
98728 411
AAJ39 65
83T86 387
9K9KK 976
86644 993
8Q79J 748
3484A 94
85878 585
268TK 628
5454J 690
77374 482
32532 612
55T55 879
55553 529
6667T 107
3323K 141
65595 405
26628 71
9T423 312
TKKKT 640
KKKA3 142
7J38K 663
6977A 232
A2Q66 981
4AK76 745
24248 222
2KJK6 607
J7776 147
256Q3 403
99J89 875
46A64 369
JTT87 513
7JJ77 111
JA69A 934
KAAAA 956
82222 836
55Q5Q 559
Q666J 869
TTTAA 701
54J6J 820
8JJ44 99
T3KKT 294
6646Q 632
68QQQ 650
4T52T 550
93K62 593
QA5TJ 17
87J3Q 363
7TA68 419
77J62 728
22244 205
T2864 97
AA6J4 717
J9633 182
K259T 762
8Q882 648
K365A 965
68JJ9 2
76JK7 109
J7888 800
33K8J 696
TT464 786
74TQ2 11
33666 122
36JK4 22
3AJ9Q 399
632KT 765
J9T3J 673
T6AK9 91
JJJ2J 967
KQKK6 3
J2346 867
48338 442
Q9475 774
QQ5K5 199
9T354 861
93888 984
7J877 460
QQQ9Q 73
9T2J3 347
TQQT3 803
QQQ32 13
35883 218
7377J 202
38QTQ 780
92KK9 374
TJ957 819
687J7 770
8K345 274
799AJ 925
7J797 480
2555A 660
8349T 702
JKJT7 105
965QJ 902
A4TAT 524
T333J 906
22A22 983
2J884 246
797Q7 563
2J63T 709
A3833 306
KAJJ9 121
55562 700
T4444 439
25272 567
72822 179
32535 226
KKAJA 307
KJKKJ 78
7Q539 833
J825A 504
J898K 448
J6ATJ 910
K59AK 18
TK3TJ 642
888JT 476';

/**** TEST ****/
/*
DECLARE @inp varchar(max) = '32T3K 765
T55J5 684
KK677 28
KTJJT 220
QQQJA 483'
*/
/*
DECLARE @inp varchar(max) = '32T3K 765
T55J5 684
KK677 28
KTJJT 220
QQQJA 483
AAAAA 1
ABAAA 2
AABAA 2
AAABA 2
AAAA3 2
AAA33 4
3AA3A 3
43434 4
22334 5
44213 6
23456 7
JJJJJ 42
JJJJA 42
AJJJJ 42
'
*/

--SELECT  @inp
DECLARE @CRLF varchar(10) = char(13)+char(10) ;
DECLARE @CRLF2 varchar(10) = char(10) ;
DECLARE @CRLF3 varchar(10) = char(13) ;

DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'|')
--SET @inStr = REPLACE(@inp,char(10),'|')

--SELECT @inStr


/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max), cards varchar(10), bid int, [type] int
	, sorter varchar(10), sortOrder int, [value] int
	, cA int, cK int, cQ int, cJ int, cT int, c9 int, c8 int, c7 int, c6 int, c5 int, c4 int, c3 int, c2 int 
	, card1 varchar(1), card2 varchar(1), card3 varchar(1), card4 varchar(1), card5 varchar(1)
)


INSERT INTO #tmpInstructions (instr)
SELECT value FROM STRING_SPLIT(@inStr,'|')

UPDATE #tmpInstructions
SET cards = PARSENAME(REPLACE(instr,' ','.'),2)
    , bid = PARSENAME(REPLACE(instr,' ','.'),1)

--SELECT * FROM #tmpInstructions

/* UPDATE Final sort of cards. */
UPDATE #tmpInstructions
SET sorter = cards

/* PART 2 - All wildcards */
UPDATE #tmpInstructions
SET cards = 'AAAAA' 
WHERE cards = 'JJJJJ'


/* PART 1 REPLACEMENTS */
UPDATE #tmpInstructions
SET 
	  cA = 5 - LEN(REPLACE(cards,'A',''))
	, cK = 5 - LEN(REPLACE(cards,'K',''))
	, cQ = 5 - LEN(REPLACE(cards,'Q',''))
	, cJ = 5 - LEN(REPLACE(cards,'J',''))
	, cT = 5 - LEN(REPLACE(cards,'T',''))
	, c9 = 5 - LEN(REPLACE(cards,'9',''))
	, c8 = 5 - LEN(REPLACE(cards,'8',''))
	, c7 = 5 - LEN(REPLACE(cards,'7',''))
	, c6 = 5 - LEN(REPLACE(cards,'6',''))
	, c5 = 5 - LEN(REPLACE(cards,'5',''))
	, c4 = 5 - LEN(REPLACE(cards,'4',''))
	, c3 = 5 - LEN(REPLACE(cards,'3',''))
	, c2 = 5 - LEN(REPLACE(cards,'2',''))

	, card1 = CASE WHEN LEFT(instr,5) = 'JJJJJ' THEN 'J' ELSE SUBSTRING(cards,1,1) END
	, card2 = CASE WHEN LEFT(instr,5) = 'JJJJJ' THEN 'J' ELSE SUBSTRING(cards,2,1) END
	, card3 = CASE WHEN LEFT(instr,5) = 'JJJJJ' THEN 'J' ELSE SUBSTRING(cards,3,1) END
	, card4 = CASE WHEN LEFT(instr,5) = 'JJJJJ' THEN 'J' ELSE SUBSTRING(cards,4,1) END
	, card5 = CASE WHEN LEFT(instr,5) = 'JJJJJ' THEN 'J' ELSE SUBSTRING(cards,5,1) END


/* Sort cards */
UPDATE #tmpInstructions
SET sorter = 
	REPLACE(
		REPLACE(
			REPLACE(
				REPLACE(
					REPLACE(cards, 'A', CASE WHEN LEFT(instr,5) = 'JJJJJ' THEN '0' ELSE 'E' END)
				, 'K', 'D')
			, 'Q', 'C')
		--, 'J', 'B') -- PART 1
		, 'J', '0') -- PART 2
	, 'T', 'A')


--SELECT * FROM #tmpInstructions

/* PART 2 */
/* Find the highest card to use Jokers with */
; WITH jokers AS (
	SELECT cards, cJ FROM #tmpInstructions WHERE 5 - LEN(REPLACE(cards,'J','')) > 0
)
, cardSort AS (
	SELECT v,s
	FROM ( 
		VALUES ('J',0),('2',1),('3',2),('4',3),('5',4),('6',5),('7',6),('8',7),('9',8),('T',9),('Q',10),('K',11),('A',12)
	) v(v,s)
)
, maxCardCount AS (
	SELECT * 
	FROM (
		SELECT cards, maxCard, RIGHT(val,1) AS theCard,cardSort.v, cardsort.s, DENSE_RANK() OVER (PARTITION BY cards ORDER BY maxCard DESC) AS rn
		FROM (
			SELECT cards, sorter, [cA],[cK],[cQ],[cT],[c9],[c8],[c7],[c6],[c5],[c4],[c3],[c2]
			FROM #tmpInstructions ti
			
		) p
		UNPIVOT (
			maxCard FOR val IN ([cA],[cK],[cQ],[cT],[c9],[c8],[c7],[c6],[c5],[c4],[c3],[c2])
		) unpvt
		LEFT OUTER JOIN cardSort ON  RIGHT(val,1) = cardSort.v
	) s2 WHERE s2.rn = 1
)
, bestCards AS (
	SELECT *
	FROM (
		SELECT cards, theCard, ROW_NUMBER() OVER (PARTITION BY cards ORDER BY cs.s DESC) AS rn
		FROM maxCardCount m
		INNER JOIN cardSort cs ON m.theCard = cs.v
	) s1
	WHERE rn = 1
)
--SELECT * FROM bestCards
UPDATE #tmpInstructions
SET cards = REPLACE(#tmpInstructions.cards,'J',bc.theCard)
FROM bestCards bc 
WHERE #tmpInstructions.cards = bc.cards

/****************************************************/

--SELECT * FROM #tmpInstructions

/* PART 2 == RUN REPLACEMENTS AGAIN */
UPDATE #tmpInstructions
SET 
	  cA = 5 - LEN(REPLACE(cards,'A',''))
	, cK = 5 - LEN(REPLACE(cards,'K',''))
	, cQ = 5 - LEN(REPLACE(cards,'Q',''))
	, cJ = 5 - LEN(REPLACE(cards,'J',''))
	, cT = 5 - LEN(REPLACE(cards,'T',''))
	, c9 = 5 - LEN(REPLACE(cards,'9',''))
	, c8 = 5 - LEN(REPLACE(cards,'8',''))
	, c7 = 5 - LEN(REPLACE(cards,'7',''))
	, c6 = 5 - LEN(REPLACE(cards,'6',''))
	, c5 = 5 - LEN(REPLACE(cards,'5',''))
	, c4 = 5 - LEN(REPLACE(cards,'4',''))
	, c3 = 5 - LEN(REPLACE(cards,'3',''))
	, c2 = 5 - LEN(REPLACE(cards,'2',''))

	, card1 = CASE WHEN LEFT(instr,5) = 'JJJJJ' THEN 'J' ELSE SUBSTRING(cards,1,1) END
	, card2 = CASE WHEN LEFT(instr,5) = 'JJJJJ' THEN 'J' ELSE SUBSTRING(cards,2,1) END
	, card3 = CASE WHEN LEFT(instr,5) = 'JJJJJ' THEN 'J' ELSE SUBSTRING(cards,3,1) END
	, card4 = CASE WHEN LEFT(instr,5) = 'JJJJJ' THEN 'J' ELSE SUBSTRING(cards,4,1) END
	, card5 = CASE WHEN LEFT(instr,5) = 'JJJJJ' THEN 'J' ELSE SUBSTRING(cards,5,1) END


-------------------------------------------------------------------------------------------------------------------------------
/*
1 = Five of a kind
2 = Four of a kind
3 = Full house
4 = Three of a kind
5 = Two pair
6 = One pair
9 = High card
*/


; WITH cards AS (
	SELECT id, cards
		, cA, cK, cQ, cJ, cT, c9, c8, c7, c6, c5, c4, c3, c2
	FROM #tmpInstructions
) 
, counts AS (
	SELECT id, cards, cardNums
	FROM (
		SELECT id, cards, cA,cK,cQ,cJ,cT,c9,c8,c7,c6,c5,c4,c3,c2
		FROM cards
	) p
	UNPIVOT (
		cardNums FOR cardCount IN (cA,cK,cQ,cJ,cT,c9,c8,c7,c6,c5,c4,c3,c2)
	) unpvt
)
, pv1 AS (
	SELECT pvt.cards, pvt.cardNums, ISNULL([1],0) AS f,ISNULL([2],0) AS s --, ISNULL(mc.cnt,0) AS cnt
	FROM (
		SELECT c.id, c.cards, c.cardNums, COUNT(*) AS cnt
		FROM counts c
		WHERE c.cardNums > 1
		GROUP BY c.id, c.cards, c.cardNums
	) src
	PIVOT (
		MAX(cnt) FOR cnt IN ([1],[2])
	) pvt
)
, pv2 AS (
	SELECT cards, f, s, [2],[3],[4],[5]
		, CASE 
			WHEN [5] = 5 THEN 7 /* 5 of a kind */
			WHEN [4] = 4 THEN 6 /* 4 of a kind */
			WHEN [3] = 3 AND [2] = 2 THEN 5 /* Full House */
			WHEN [3] = 3 AND [2] IS NULL THEN 4 /* 3 of a kind */
			WHEN f=0 AND s=2 AND [2] = 2 AND [3] IS NULL THEN 3 /* 2 pairs */  ----<<<<<<<<<<<
			WHEN f=1 AND s=0 AND [2] = 2 AND [3] IS NULL THEN 2 /* 2 of a kind */
			ELSE 1	/* No pairs */
		  END AS handType
	FROM (
		SELECT ti.cards,ti.bid, pv1.cardNums, f, s
		FROM #tmpInstructions ti
		LEFT OUTER JOIN pv1 ON ti.cards = pv1.cards
	) src
	PIVOT (
		MAX(cardNums) FOR cardNums IN ([2],[3],[4],[5])
	) pvt

	--ORDER BY handType
)

UPDATE #tmpInstructions
SET #tmpInstructions.type = pv2.handType
FROM pv2
WHERE #tmpInstructions.cards = pv2.cards


UPDATE #tmpInstructions
SET sortOrder = t1.sortOrder 
FROM (
	SELECT LEFT(instr,5) AS cards, type, sortOrder = ROW_NUMBER() OVER (ORDER BY type, sorter)
	FROM #tmpInstructions
) t1
WHERE LEFT(#tmpInstructions.instr,5) = t1.cards


/* Solve the value */
UPDATE #tmpInstructions
SET value = bid*sortOrder

SELECT * FROM #tmpInstructions ORDER BY sortOrder DESC

/*
SELECT ti.id, ti.cards, ti.bid, pv2.handType
FROM #tmpInstructions ti
LEFT OUTER JOIN pv2 ON ti.cards = pv2.cards
ORDER BY handType, cards
*/
-------------------------------------------------------------------------------------------------------------------------------

---  11223	1	0	2	NULL	NULL	NULL	6 <<< SHOULD BE 2 PAIR
--- DUH. There is no 1 card. It's A-2. Not a bug, just a problem with my test. 

-------------------------------------------------------------------------------------------------------------------------------

/* PART 1 */
/* Find the sum of the value */
SELECT sum(value) FROM #tmpInstructions

---Attempt 1: 250254244 CORRECT

/* PART 2 */
/* Find the sum of the value */
SELECT sum(value) FROM #tmpInstructions

-- ATTEMPT 1: 249898968  INCORRECT. TOO LOW.
-- ATTEMPT 2: 250087440 <<< CORRECT!
/*
NOTES:
This one doesn't look too difficult. Parse out poker-ish hands of a set of 5 cards, order them, 
count them, then multiply their bid by their order number. Sounds complicated, but straightforward.

Part 1:
Well, I underestimated this one. I started off trying to sort the cards to get the final ordering, until 
I realized that I don't need to sort the cards in Part 1. I'll probably have to do that in Part 2, which
will crank up the difficulty quite a bit. 

After realizing I didn't need to sort the hand, I just ran through parsing the hand for it's type. I 
added a couple of extra hands in the Test to figure out if I was covering all possibilities. I 
drove myself nuts for a minute by having a "1" card in the test, but wasn't testing for "1", so it was
putting the card in the wrong type. Duh. There is not "1" card. Problem fixed. 

After that, it was a matter of rejoining my PIVOT to the original data so I could get all the fields
that I needed. 

I realized I was sorting them backwards, so I fixed that. Now to do the rest of the calcs. 

....

Got the sort of the cards, but to rank same matches, I need to translate the values so they are 
sortable. Then it's a simple ORDER BY to get those matches to sort. Also, window function is 
what I need to get those final sorts. 

Then just multiply bid by sort and sum those values. 

ATTEMPT 1: 250254244  CORRECT!

Part 2:
Well, assumption was incorrect. I'm not having to sort the hands. I'm turning J into
Jokers and changing their value. Let's see if we can do this. 

...

Replacing the Joker wasn't as bad as I thought. The first thing I did was to identify 
the card with the most instances in a hand, and in the case of more than one card, I 
picked the highest ranking of those cards. I used a set of CTEs to accomplish this. 

After I identified that card, I update the hand by replacing any Jokers with that card.

I had to run my hand counts again, because I needed it first to count the number of 
cards, then I needed it again to recount those cards. This is a piece of my code I'd 
like to come back to and clean up. 

All the rest of the steps were pretty much the same as Part 1. 

ATTEMPT 1: 249898968 = INCORRECT. Too low.

Need to look over my code and see what I missed. 

And I think I already found it. "JJJJJ". I didn't account for that, so I bet if I replace 
the "J"s with "A"s, then it'll get me up to the correct answer. 

...

I think that was it. But fixing all of the places where that wildcard interfered with 
sorting was fun. Let's try it again. 

ATTEMPT 2: 250087440 CORRECT!

...




*/



/*
https://www.reddit.com/r/SQL/comments/10fi96i/sort_a_string_by_its_characters/

Try this. This works in SQL Server, you will need to convert it to MySQL.
DROP TABLE IF EXISTS #Numbers;
GO
CREATE TABLE #Numbers
(
MyNumber INTEGER NOT NULL PRIMARY KEY
);
INSERT INTO #Numbers VALUES(1),(2),(3),(4),(5);
GO
WITH cte_Test as
(
SELECT 1 AS id, 'Super' as Word, LEN('Super') AS Length
UNION
SELECT 2, 'Fly', LEN('fly')
),
cte_SplitTable AS
(
SELECT *, SUBSTRING(Word,MyNumber,1) AS Character
FROM cte_Test a LEFT OUTER JOIN
#Numbers B ON b.MyNumber <= a.Length
)
SELECT
STRING_AGG(CONVERT(NVARCHAR(max), Character), '') WITHIN GROUP (ORDER BY Character ASC)
--string_agg(Character,'') WITHIN GROUP ( partition by (id), *
FROM cte_SplitTable
GROUP BY ID;

sequel-beagle
you can also use recursion. You will need to string aggregate this alphabetically as I did in the numbers table example, but I think you get the idea.
You don't need to use any type of loop for this, which your original code does.
Hope this helps.
-------------------------------
-------------------------------
DROP TABLE IF EXISTS #Example;
GO
-------------------------------
-------------------------------
CREATE TABLE #Example
(
Id INTEGER IDENTITY(1,1) PRIMARY KEY,
String VARCHAR(30) NOT NULL
);
GO
INSERT INTO #Example VALUES('32T3K'),('T55J5'),('KK677'),('KTJJT'),('QQQJA');
GO
-------------------------------
-------------------------------
;WITH cte_Recursion AS
(
SELECT Id,
String,
STUFF(String,1,1,'') AS String_Stuff,
LEFT(String,1) AS String_Left
FROM #Example
UNION ALL
SELECT Id,
String,
STUFF(String_Stuff,1,1,'') String_Stuff,
LEFT(String_Stuff,1) AS String_Left
FROM cte_Recursion
WHERE LEN(String_Stuff) > 0
)
SELECT
Id,
ROW_NUMBER() OVER (PARTITION BY Id ORDER BY CASE String_Left
	WHEN 'T' THEN 10
	WHEN 'J' THEN 11
	WHEN 'Q' THEN 12
	WHEN 'K' THEN 13
	WHEN 'A' THEN 14
	ELSE String_Left
END ) AS RowNumber,
String,
CASE String_Left
	WHEN 'T' THEN 10
	WHEN 'J' THEN 11
	WHEN 'Q' THEN 12
	WHEN 'K' THEN 13
	WHEN 'A' THEN 14
	ELSE String_Left
END AS String_Value,
ISNUMERIC(CASE String_Left
	WHEN 'T' THEN 10
	WHEN 'J' THEN 11
	WHEN 'Q' THEN 12
	WHEN 'K' THEN 13
	WHEN 'A' THEN 14
	ELSE String_Left
END ) AS [IsNumeric]
FROM cte_Recursion
ORDER BY 1,2 DESC ;

GO
*/

