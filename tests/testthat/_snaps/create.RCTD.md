# create.RCTD simple test

    Code
      create.RCTD(puck, reference, max_cores = 1)
    Message
      Begin: process_cell_type_info
      process_cell_type_info: number of cells in reference: 90
      process_cell_type_info: number of genes in reference: 500
    Output
      
      ct1 ct2 ct3 
       26  36  28 
    Message
      End: process_cell_type_info
      create.RCTD: getting regression differentially expressed genes: 
      get_de_genes: ct1 found DE genes: 5
      get_de_genes: ct2 found DE genes: 5
      get_de_genes: ct3 found DE genes: 4
      get_de_genes: total DE genes: 14
      create.RCTD: getting platform effect normalization differentially expressed genes: 
      get_de_genes: ct1 found DE genes: 12
      get_de_genes: ct2 found DE genes: 16
      get_de_genes: ct3 found DE genes: 16
      get_de_genes: total DE genes: 44
    Output
      An object of class "RCTD"
      Slot "spatialRNA":
      An object of class "SpatialRNA"
      Slot "coords":
                                                   x            y
      ct3_plat1_TCAACACTTAAGGGTCCCCA     -0.43096549 -0.910590003
      ct1_plat1_TCAAGACTTAAGGGTCCCCA      1.02345450  0.363329689
      ct2_plat1_TCAATACTTAAGGGTCCCCA     -0.37723416  1.078665706
      ct2_plat1_TCAAAACTTCAGGGTCCCCA     -0.37580166  0.885343767
      ct1_plat1_TCAACACTTCAGGGTCCCCA      0.80558938  0.196699696
      ct1_plat1_TCAAGACTTCAGGGTCCCCA      0.81200298  0.450601327
      ct1_plat1_TCAATACTTCAGGGTCCCCA      1.37438927 -0.322920094
      ct3_plat1_TCAAAACTTGAGGGTCCCCA     -0.79971470 -1.219865301
      ct2_plat1_TCAACACTTGAGGGTCCCCA     -0.84307443  0.847208532
      ct1_plat1_TCAACAACTTAAAGGGTTCCCCAA  1.08157095 -0.463061638
      ct1_plat1_TCAACCACTTAAAGGGTTCCCCAA  0.57352453  0.252656447
      ct3_plat1_TCAACGACTTAAAGGGTTCCCCAA -0.88984426 -0.755152904
      ct2_plat1_TCAACTACTTAAAGGGTTCCCCAA -0.31932306  1.182947543
      ct3_plat1_TCAACAACTTACAGGGTTCCCCAA -0.61352577 -1.096416227
      ct2_plat1_TCAACCACTTACAGGGTTCCCCAA -0.03482147  1.031008132
      ct2_plat1_TCAACGACTTACAGGGTTCCCCAA -0.47184864  1.361665823
      ct2_plat1_TCAACTACTTACAGGGTTCCCCAA -0.73486402  0.425752850
      ct2_plat1_TCAACAACTTAGAGGGTTCCCCAA -0.34331884  1.315009981
      ct3_plat1_TCAACCACTTAGAGGGTTCCCCAA -0.37592770 -0.539678254
      ct1_plat1_TCAAGAACTTAAAGGGTTCCCCAA  0.88538559 -0.278845982
      ct1_plat1_TCAAGCACTTAAAGGGTTCCCCAA  1.18285317 -0.040068471
      ct2_plat1_TCAAGGACTTAAAGGGTTCCCCAA -0.78014686  1.263729895
      ct1_plat1_TCAAGTACTTAAAGGGTTCCCCAA  1.07787765 -0.427002433
      ct3_plat1_TCAAGAACTTACAGGGTTCCCCAA -0.95215145 -0.861115683
      ct1_plat1_TCAAGCACTTACAGGGTTCCCCAA  0.73339921 -0.074767140
      ct1_plat1_TCAAGGACTTACAGGGTTCCCCAA  0.77387731  0.269496168
      ct1_plat1_TCAAGTACTTACAGGGTTCCCCAA  1.06950742 -0.226109393
      ct2_plat1_TCAAGAACTTAGAGGGTTCCCCAA -0.36443921  1.079897995
      ct3_plat1_TCAAGCACTTAGAGGGTTCCCCAA -0.36747551 -0.423062945
      ct1_plat1_TCAATAACTTAAAGGGTTCCCCAA  0.70757046 -0.107700032
      ct2_plat1_TCAATCACTTAAAGGGTTCCCCAA -0.17456189  1.017381877
      ct3_plat1_TCAATGACTTAAAGGGTTCCCCAA -0.81327490 -0.524381685
      ct2_plat1_TCAATTACTTAAAGGGTTCCCCAA -0.75439558  1.215012342
      ct2_plat1_TCAATAACTTACAGGGTTCCCCAA -0.32236546  0.399962320
      ct2_plat1_TCAATCACTTACAGGGTTCCCCAA -0.14578700  0.802363719
      ct3_plat1_TCAATGACTTACAGGGTTCCCCAA -0.77697015 -0.888575332
      ct2_plat1_TCAATTACTTACAGGGTTCCCCAA -0.40290587  0.863314285
      ct2_plat1_TCAATAACTTAGAGGGTTCCCCAA -0.25632522  1.102471147
      ct3_plat1_TCAATCACTTAGAGGGTTCCCCAA -0.46613592 -0.851603916
      ct3_plat1_TCAAAAACTTCAAGGGTTCCCCAA -0.77042431 -1.229239705
      ct1_plat1_TCAAACACTTCAAGGGTTCCCCAA  1.49559321 -0.008709445
      ct2_plat1_TCAAAGACTTCAAGGGTTCCCCAA -0.33616745  1.154543795
      ct1_plat1_TCAAATACTTCAAGGGTTCCCCAA  0.59174068  0.096160343
      ct2_plat1_TCAAAAACTTCCAGGGTTCCCCAA -0.42068203  1.141257998
      ct1_plat1_TCAAACACTTCCAGGGTTCCCCAA  0.67549395  0.146795060
      ct1_plat1_TCAAAGACTTCCAGGGTTCCCCAA  0.77150848 -0.331803749
      ct1_plat1_TCAAATACTTCCAGGGTTCCCCAA  1.14764607 -0.212515530
      ct2_plat1_TCAAAAACTTCGAGGGTTCCCCAA -0.48124774  0.978915399
      ct1_plat1_TCAAACACTTCGAGGGTTCCCCAA  1.08950512 -0.253070857
      ct2_plat1_TCAACAACTTCAAGGGTTCCCCAA -0.70923819  0.869661416
      ct2_plat1_TCAACCACTTCAAGGGTTCCCCAA -0.62294702  1.098756569
      ct2_plat1_TCAACGACTTCAAGGGTTCCCCAA -0.37649915  0.706804100
      ct2_plat1_TCAACTACTTCAAGGGTTCCCCAA -0.11728913  0.993047440
      ct1_plat1_TCAACAACTTCCAGGGTTCCCCAA  0.98833529 -0.010405353
      ct1_plat1_TCAACCACTTCCAGGGTTCCCCAA  1.35292463  0.334808641
      ct2_plat1_TCAACGACTTCCAGGGTTCCCCAA -0.80372004  0.473425921
      ct3_plat1_TCAACTACTTCCAGGGTTCCCCAA -0.90688477 -0.717079396
      ct1_plat1_TCAACAACTTCGAGGGTTCCCCAA  1.17866600 -0.212906497
      ct2_plat1_TCAACCACTTCGAGGGTTCCCCAA -0.62900381  1.198740640
      ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA -0.56368734  1.037251343
      ct1_plat1_TCAAGCACTTCAAGGGTTCCCCAA  0.64842949 -0.322403496
      ct2_plat1_TCAAGGACTTCAAGGGTTCCCCAA -0.97565520  0.939209519
      ct2_plat1_TCAAGTACTTCAAGGGTTCCCCAA -0.84476728  1.177591309
      ct3_plat1_TCAAGAACTTCCAGGGTTCCCCAA -0.30295006 -1.173682582
      ct2_plat1_TCAAGCACTTCCAGGGTTCCCCAA -0.44045433  1.039943979
      ct3_plat1_TCAAGGACTTCCAGGGTTCCCCAA -0.43558258 -1.018723492
      ct2_plat1_TCAAGTACTTCCAGGGTTCCCCAA -0.52339921  1.217100273
      ct3_plat1_TCAAGAACTTCGAGGGTTCCCCAA -0.63788189 -0.961340725
      ct3_plat1_TCAAGCACTTCGAGGGTTCCCCAA -0.35734775 -0.903114499
      ct2_plat1_TCAATAACTTCAAGGGTTCCCCAA -0.83150294  1.053691394
      ct3_plat1_TCAATCACTTCAAGGGTTCCCCAA -0.60306256 -0.954148821
      ct1_plat1_TCAATGACTTCAAGGGTTCCCCAA  0.60434458 -0.212289995
      ct3_plat1_TCAATTACTTCAAGGGTTCCCCAA -0.70554634 -0.559445670
      ct1_plat1_TCAATAACTTCCAGGGTTCCCCAA  1.24555720 -0.176825903
      ct2_plat1_TCAATCACTTCCAGGGTTCCCCAA -0.28738269  0.980954131
      ct3_plat1_TCAATGACTTCCAGGGTTCCCCAA -0.61267430 -0.423312755
      ct1_plat1_TCAATTACTTCCAGGGTTCCCCAA  1.00090148  0.051504596
      ct2_plat1_TCAATAACTTCGAGGGTTCCCCAA -0.68401276  1.199331128
      ct1_plat1_TCAATCACTTCGAGGGTTCCCCAA  1.29544042  0.180742344
      ct1_plat1_TCAAAAACTTGAAGGGTTCCCCAA  1.36618878 -0.067164530
      ct1_plat1_TCAAACACTTGAAGGGTTCCCCAA  1.15748056  0.299385472
      ct1_plat1_TCAAAGACTTGAAGGGTTCCCCAA  1.08735085  0.435586683
      ct1_plat1_TCAAATACTTGAAGGGTTCCCCAA  1.32058987  0.339609990
      ct3_plat1_TCAAAAACTTGCAGGGTTCCCCAA -0.47577910 -0.897382818
      ct3_plat1_TCAAACACTTGCAGGGTTCCCCAA -0.57740019 -0.549452549
      ct2_plat1_TCAAAGACTTGCAGGGTTCCCCAA -0.38996896  1.023724412
      ct2_plat1_TCAAATACTTGCAGGGTTCCCCAA -0.76132987  0.591617531
      ct3_plat1_TCAAAAACTTGGAGGGTTCCCCAA -0.19225713 -1.156926166
      ct1_plat1_TCAAACACTTGGAGGGTTCCCCAA  0.90477239  0.119871881
      ct2_plat1_TCAACAACTTGAAGGGTTCCCCAA -0.09579269  1.096560996
      
      Slot "counts":
      44 x 90 sparse Matrix of class "dgCMatrix"
    Message
        [[ suppressing 90 column names 'ct3_plat1_TCAACACTTAAGGGTCCCCA', 'ct1_plat1_TCAAGACTTAAGGGTCCCCA', 'ct2_plat1_TCAATACTTAAGGGTCCCCA' ... ]]
    Output
                                                                                  
      Gene41   36  21  18  19  18  25  27  45  39  23  32  71  18  32  20   63  16
      Gene76   35  50  49  36  43  31  21  45  38  25  25  38  22  58  33   76  16
      Gene79  741 578 965 699 412 815 572 776 604 624 702 851 793 956 686 1103 703
      Gene124  69  53  27  60  47  30  47  53  41  38  31  38  77  65  41   80  34
      Gene139  24  12  21  15  14  38  25  28  12   9  15  31  21  54  12   51  15
      Gene148 247 123 233 142 141 199 162 171 143  90 208 173 228 244 151  283 135
      Gene166  71  43  79  59  39  59  69  72  51  38  54  60  78 116  58   88  61
      Gene183  48  15  28  66  63  68  33  77  37  61  35  39  25  84  85   52  43
      Gene203  19  17  21   5   4  30  21  16   9   8   9  25  20  15   9   19   4
      Gene237 239  64  83 139 102 114  64 185  79  79  76 247  81 277 113  158  81
      Gene307  30  33  33  21  35  38  43  29  13  18  21  28   8  44  36   38  12
      Gene346   3   .   1   .   .   .   .   .   .   4   .   .   .   1   .    2   .
      Gene43   11  10  10  12   8  17  10  12   4   3   8  12   8  12   6   30   6
      Gene102  72  69  80  88  42  58  45  48  49  36  43  68  54  94  51   83  60
      Gene164   4   4   6   3   2   2   8   4   1   3   6   8   7   5   3    6   .
      Gene200  27  13  17  38  19  23  19  33  14  11  25  15  29  24  32   31  12
      Gene238 140  79 152 115  73 190  99 176 107 101  86  73 106 178 157  172 122
      Gene245  76  69 131 101  84 102  87 113  95  55  91  61  93 216 163  178 103
      Gene260  60  44  52  47  47  62  52  65  48  40  80  81  73 101  92   98  58
      Gene295  50  32  43  29  32  75  47  37  30  46  46  15  18  31  41   58  34
      Gene311   5  10   9  27   9  18   4   6   3   5  10  10  13   5  12   15  13
      Gene324   1   .   .   1   .   1   .   .   .   .   .   .   .   .   2    1   .
      Gene348   8   3   7   4  11   5   5  11   5   7   8  11   8   9   4   11   9
      Gene367  75  32  46  46  50  32  35  59  27  56  42  50  46  55  62   72  46
      Gene372 197 110 169 135 116 109 110 141 119  78 179 137 140 153 142  229 145
      Gene424  16   7  25  12  11  13   9  10  12  10   6   7   3  24  16   20   9
      Gene451  33  22  49  52  17  46  30  20  24  25  24  33  43  22  69   55  20
      Gene496  85  77  88 100  55  68  73  51  67  41  76  85 105 137  78  141  57
      Gene16   18  29  20   4  22   8  14  13  11  12  12  22   6  32  17   18   4
      Gene51   41  21  36  28   7  27  18  14  18  19  10   7  17  29  24   38  18
      Gene68    6   5   .   5   .   6   .   4   .   2   1   2   1   4   4    9   .
      Gene69   21   3  10  11   2   9   2  14   4   2  11  19   2   8   1    4   1
      Gene122  89  15  47  24  30  22  32  67  34   9  39  84  42 123  37   57  13
      Gene213   8   8   8  19   6  13  10   7  10   7   7  10  11  12   8   14   4
      Gene218  52  51  35  50  66  56  44  60  53  37  36  68  23  78  39   55  38
      Gene285 293 178 239 179 147 136 177 296 188 122 108 247 194 344 213  293 185
      Gene291  10   3   5   8   3   6   4   4   9   3   1   3   9   4   4   18  15
      Gene342  50  50  80  50  41  72  53  46  44  50  33  47  68  51  87   62  62
      Gene353   .   .   .   .   .   .   3   1   5   .   .   1   .   1   2    .   1
      Gene362  21  14  34  35  22  38  19  23  21  13   7   5  17  20  25   54  24
      Gene368   2   5   4   7   3   5   7   5   9   2   4   1  11   1  10    8   6
      Gene369   5  15   9   4   4  10  11   7   6   5   9   8   3   4  19   16  14
      Gene375  42  18   5  15  28  35  27  40   2  11  31  43  10  57  17   15  27
      Gene423   .   2   3   1   1   .   .   5   .   .   1   .   2   2   2    2   .
                                                                                  
      Gene41   63  41  19  46  19  18  10  42  69  45  25  42  36   47  18  15  49
      Gene76   58  46  20  47  30  57  44  34  50  64  22  33  42   45  55  24  27
      Gene79  633 581 693 832 923 625 544 509 858 943 734 859 893 1095 720 576 769
      Gene124  67  38  36  53  40  38  31  33  39  46  61  47  46   65  35  25  52
      Gene139  49  24  19  19  20  27  20  19  23  35  28  17  20   29  16   7  22
      Gene148 200 113 169 150 112 193 149 107 144 173 249 223 143  293 138 147 254
      Gene166  42  60  36  63  58  45  71  34  70  67  47  41  51   75  80  40  62
      Gene183  63  63  31  64  62  21  46  35  61  82  25  50  49   45  15  44  86
      Gene203  13   9  21  26   9  19  12  15  20  21   5  16  17    9  17   5  17
      Gene237 129 140  82 103  97  58 134  59 140 134 105 221 107  183 214  67 113
      Gene307  45  34  25  38  24  22  23  35  49  59  20  41  28   33  43  34  43
      Gene346   1   .   1   .   .   1   .   .   3   1   2   .   2    .   .   .   .
      Gene43    2   7  20  12   8   6   6   7  17  15   6  11  13   15   6   3  13
      Gene102  75  62  43  54  41  86  45  67  94  96  67  35  71   88  84  53  76
      Gene164   9   2   3   4   8   .   .   2   6   8   .   2  11    1   3   4   5
      Gene200  31  24  12  18  25  17  26  19  39  17  16  43  21   16  23  10  19
      Gene238 113  81 150 113  77 102 109  68 135 215 133 125  67  159 179  72 116
      Gene245 147  84  76 121  89 106  63  43 151 165 115 103  57  177  60  82  87
      Gene260  80  45  57  61  55  49  44  45  76  54  62  57  68   67  31  41  67
      Gene295  43  17  38  52  34  35  17  35  58  52  69  47  53   53  35  38  28
      Gene311  10   2   4   8  11   8   2  13   6   9   9   2   3   22   5  16  16
      Gene324   .   .   .   .   .   .   .   .   .   1   .   .   .    .   1   1   2
      Gene348   4   5   1   7  10   3   3   6  18  11  14   6   3    9   7   9   6
      Gene367  66  45  60  49  68  33  23  66  87  89  53  70  52   55  41  43  65
      Gene372 154  98  79 126 137  92 124 142 163 207 121 144 120  172 171  95 161
      Gene424  12   9  32  13  14  12  11   9  20  18  12  31   5   18  30  12   7
      Gene451  39  17  30  44  19  19  14  21  28  62  27  29  42   71  31   9  41
      Gene496 169  54  83 107 100 102  89  55 130 142  63 107 110  105  65  60  85
      Gene16   21  21  17  26  15  16  16  22  25  46  17  16  17   19  17  12  15
      Gene51   18  16  19  29  16  16  18  30  26  20  29  19  16   17  15   7  42
      Gene68    5   5   3   7   1   5   1   .   3   5   1   .   3    6   2   2   .
      Gene69    5   7   2   7   9   1  11   .   3   4   5   5   3    6  17   6   3
      Gene122  47  43  17  23  48  31  45  21  18  51  21  75  23   34  45  33  40
      Gene213  15  17  11  10   8   2   9   3  12   6   3  12  18   16  10  11  10
      Gene218  45  30  55  68  32  66  39  40  80 105  56  41  52   37  51  25  42
      Gene285 258 157 141 285 141 120 282 114 269 266 160 227 164  286 310 167 175
      Gene291   3   1   7  10   3   1   4   2   9   4   4   5   3   15   4   4   1
      Gene342  73  23  55  61  90  97  33  57  71  72  46  44  52   69  71  55  59
      Gene353   4   .   .   3   .   .   1   .   .   7   1   .   1    2   2   2   1
      Gene362  33  13  23  27  22  22  24  10  30  35  26  17  18   37  18  11  37
      Gene368   7   .   6   5  13   1  10   2  11   6   7   .   7    5   5   7   .
      Gene369   .   .  17  12  11  11   1  21  11  11  10   6  16   17   .   9  17
      Gene375  16  15  33  36   5  23  25  14  37  52  28  33  48   25  29  13   5
      Gene423   1   2   1   1   9   .   5   2   .   2   1   .   4    2   .   5   1
                                                                                  
      Gene41   24  15  37  21  16  20  26  44  18  10  52   24  25  25  22  16  18
      Gene76   42  31  35  27  32  45  28  74  38  26  54   37  51  11  26   8  50
      Gene79  513 714 790 635 631 642 694 970 495 477 712 1002 737 532 786 305 816
      Gene124  26  22  50  20   9  33  54  84  51  54  38   54  42  20  42  30  19
      Gene139   8  36  22  17  30  25  12  28  30  16  23   40  24  11  25  21  15
      Gene148 160 111 138 148  94 161 171 256  91 123 194  275 164 144 151 155 124
      Gene166  40  51  49  34  34  45  68  69  45  43  87   59  61  37  37  43  53
      Gene183  55  45  27  43  23  58  52  78  25  22  34   65  66  30  57  25  29
      Gene203   7  12   3   3  12  23  15  22   4   8  12    4  23  12  30   2  17
      Gene237  69 225  78  62  97 394 107 151  54  97 148  107  84  65 103  47 100
      Gene307  29  21  27  21  22  99  25  73  29  24  34   41  27  40  40  16  33
      Gene346   .   2   .   2   .   .   1   .   .   .   .    5   2   .   .   .   1
      Gene43    7  12   6   5   2   8  11  15  15   6  30   15  16  11   9   1   7
      Gene102  50  63  77  78  49  85  49  88  68  48  71  117  57  53  95  37  69
      Gene164   .   1   5   .   .   4  10   8   1   4   2    8   4   3   3   3   2
      Gene200  17  14   4   9  17  15  26  51  24  18  19   19  29  16  18  11  21
      Gene238 113 118 114  97  82 111 105 168 128  78 139  103 140  66 136  60 152
      Gene245  80 115  68  45  90  51 121 102  55  88 138  116 121  73 119  48  95
      Gene260  65  57  84  44  47  87  50 101  58  49  61   83  76  49  66  71  49
      Gene295  46  12  33  32  15  22  44  33  31  24  28   39  44  30  55  18  31
      Gene311   8   4  10  16   2   4   9  13  12   1  12    8   6  17   7   3  13
      Gene324   1   .   2   .   5   .   .   .   .   .   .    .   .   .   .   .   1
      Gene348   5  11   3   4  12   .  15   5   7   7  12   11   9  11  10   7  18
      Gene367  72  37  59  41  33  53 100  68  75  50  86  112  55  48  58  46  64
      Gene372 118 138  85 118  94  95 115 216 118 117 154  176 104 117 147 112 206
      Gene424  12  17  22   9  11  11  10  10  10  13  15   23   7  11  21   6  11
      Gene451  41  26  65  32  20  32  28  74  33  21  27   32  17  26  32  13  48
      Gene496  89  57 107  91  90  65  93 154  82  52 131  147  77  52  86  51  98
      Gene16   11  13  12  16   4   8  14  23  26   8  18   18  35   5  23  12  22
      Gene51    7  36  17  25  11  26  16  48  12  24  28   22  32  14  22   7  21
      Gene68    .   3   .   2   3   4   6   1   6   4   1    6   6   .   4   .   .
      Gene69    7   3   3   1  10  10  13   8   3   4   9    4   8   5   3   2   9
      Gene122  31  50  33  41  27  43  18  52  22  14  36   49  27  19  34  14  27
      Gene213  10  11   6  11  13   9   9   7  14  13   5   14  21  16  17   3   3
      Gene218  26  23  49  27  36  49  69  56  47  28  76   96  82  46  80  26  49
      Gene285 167 243 237 149 199 331 233 345 130 138 157  217 165 119 223 139 271
      Gene291   .   1   2   3  10   2   4   9   3   2   9    7  10  10   4   3   9
      Gene342  39  58  36  69  54  48  21  79  57  30  77   55  87  55  52  40  60
      Gene353   2   2   3   .   .   .   .   .   2   3   .    1   1   .  15   3   .
      Gene362  19  12  28  30   9  13  10  34  21  11  18   16  20  24  13  12  34
      Gene368   4   .   4   3   2   5   2   4   3   9   4    8   5   7   1   3   9
      Gene369   5   3   4  10   3   .  22  23  13   4  20   25   1   6  10   5  10
      Gene375  15  23  13   8  13  26  21  24  20   7  20   25  20   7  75  10   9
      Gene423   1   .   1   .   1   .   1   8   1   .   2    7   .   .   1   .   1
                                                                                  
      Gene41   19  16   46  12  50  49  23  21  45  45  11  29  30  34  21  36  59
      Gene76   51  41   68  27  29  61  16  25  36  48  25  22  29  38  60  45  44
      Gene79  740 896 1021 828 555 988 551 543 928 935 542 724 772 546 712 731 774
      Gene124  32  62   74  56  37  38  16  42  51  68  46  66  25  65  22  72  30
      Gene139  14  10   31  22  22  30  15  13  36  29  23  13  19  28  39  30  36
      Gene148 186 180  280 174 135 193 122  92 186 276 111 219 180 218 186 214 204
      Gene166  49  46   75  61  45  76  31  43  49  78  58  63  51  50  55  37  58
      Gene183  50  29   74  58  29  58  30  24  64  60  14  41  41  68  59  33  30
      Gene203   6   4   17  13   7  21  19   1   6  37   8   6  16   7   8  12  28
      Gene237  74  82  167  83 100 258  40  79 104 116  64  96 185 102 220 113 136
      Gene307  10  23   49  39  33  52  29  26  22  40  39  19  44  33  36  40  36
      Gene346   1   5    4   .   1   .   1   .   2   4   .   .   1   2   .   .   4
      Gene43    9   5   31  16  11  10  11   3   9  29   8   3  15  27   8  25   4
      Gene102  81 103   92  55  36  83  40  45  63  75  55  63  51  58  72  68  66
      Gene164   2   8    2   4   2  10   .   1   1   4   3   2   9  11   1   1   5
      Gene200  10  15   42  33   3  22   6  18  14  39  20  19  17  22  33  20  14
      Gene238 134 197  126 132  88 122  92  99  80 205 107 111 102 167 139 102 130
      Gene245  94 146  161  83 124  90  64  62 132 122 135 130 109  86  92 134  88
      Gene260  55  72   60  63  48  84  55  48  91  94  43  74  73  53  53  51  44
      Gene295  31  63   67  58  31  33  23  22  52  75  34  17  40  52  24  30  14
      Gene311  11  19   18   9  10  11   4  10  16  20  15  15   5  16   3  22   3
      Gene324   .   1    1   .   .   .   .   .   .   3   .   .   1   .   .   1   .
      Gene348   6  14   14   7   9  16   9   9   7  12   5   5   4   8   6   4   7
      Gene367  35  88   75  62  29  21  38  57  45  79  60  49  72  56  53  69  53
      Gene372 125 147  180 186  93 137  68 130 167 146  90  85 198 130 128 112 153
      Gene424  12  16    9  11   6  19  17   7  10  30  17  13  11  17  15  13  16
      Gene451  42  26   43  52  52  20  68  20  34  33  14  23  24  24  12  26  27
      Gene496  58 102  129  79  85  76  80 123 113 114  89  47  87 108  86  73  55
      Gene16    9  13   21   5   8  37  21  11  16  26   4  14  20  19  15  17  16
      Gene51   16  16   37   8  14  26  17  10  22  24  20  13  13  19   6  20  12
      Gene68    1   8    3   3   .   3   2   5   2   6   2   1   1   3   2   1   .
      Gene69    8  15    7   3   .   6   4  13  11  11   3   1   9   4   6   3   2
      Gene122  15  35   25  32  39  96  31  30  39  64  34  24  65  20  73  26  69
      Gene213  17  18    7  14   6  19  12   9  11  15  16  17   7  11   5   6  14
      Gene218  33  21  122  62  32  86  35  40  35  86  41  44  60  25  43  43  52
      Gene285 205 185  248 150 187 316 144 135 202 279 221 210 304 174 317 200 316
      Gene291   5   6    3  16  10   5   4   1   1   5   1   .   2   3   8   3   8
      Gene342  37  69   91  46  77  57  19  38  65 131  44  54  94  61  41  56  76
      Gene353   3   1    2   1   4   .   7   .   .   .   2   2   .   .   1   1   .
      Gene362  26  22   16  24  10  23  11  20  35  47  15  18  31  15  11  25  15
      Gene368  12  20   10   1  11   6   1   1   2   4  10  12  10   8   1   8  13
      Gene369   1   7   11  20  10   3   9   3   4  12   8   7   3   7   3  11   4
      Gene375  10  24   34  22  12  29  13  12  15  37  11  10  17  15  34  10  28
      Gene423   .   .    4   1   .   2   .   2   7   4   1   .   1   .   2   .   .
                                                                                     
      Gene41   11  54  31  13  23  49  29  48  25  38  19  35  48  12  44  34  46  18
      Gene76   40  48  58  26  43  27  52  45  36  46  72  36  42  23  29  37  39  19
      Gene79  598 669 668 746 767 724 792 697 817 919 835 722 618 632 831 553 845 529
      Gene124  35  51  42  34  38  52  49  32  39  33  64  52  38  20  35  32  54  36
      Gene139  40  27  28  10  38  15  31  35  15  44  14  15  22  16  32  31  33  21
      Gene148 157 207 173 180 151 214 162 198 130 160 161  99 127 279 267 142 205  82
      Gene166  58  57  74  76  79  83 106  70 105  79  58  51  40  66  66  49 103  59
      Gene183  40  31  18  37  27  62  63  18  54  58  39  28  42  30  70  20  54  42
      Gene203  13  10  10  18   9  16  10  14  14  10  24   7  14   9  15  26  21   8
      Gene237 139  79 144 105 274  93  78 270 104 152  69  58 105  98 103 158 238  89
      Gene307  34  59  35  48  33  52  76  18  29  19  37  19  12  56  23  26  66  39
      Gene346   1   .   .   1   .   .   2   .   1   .   .   .   1   .   3   .   1   .
      Gene43   10   7  21  14   6   7  12   5   6   6  25   5  15   7  16  10  29   8
      Gene102  53  93  75  67  64  54  54  64  68  98  76  44  94  93  76  56  77  46
      Gene164   4   6  12   7   5   8   5   4   8   4   4   8   1  13   2   1   8   .
      Gene200  25  22  18  26  23  31  23  12  23  26  16   2  18  18  23  11  40  17
      Gene238 167 115  84  97 120 116 143 129 109 111 104 104 131  81 102 117 159 107
      Gene245  77 148 109  85  51  79 122 128  92 113 110  55 104  93  97 107 171  66
      Gene260  44  80  68  41  42  62  62  65  73  79  52  69  93  68  37  37 136  46
      Gene295  13  30  26  23  26  51  61  31  52  68  38  39  40  47  57  15  24  46
      Gene311   1  30   6   6   6   9  30  15   3  18  10   .   3   2  13   6  10  11
      Gene324   .   .   .   1   .   .   1   .   .   .   2   .   1   .   1   .   1   .
      Gene348   3  18  10  13   5  10   6   5   8  14  10   6   3  12  32   2   5   4
      Gene367  46  53  31  49  34  59  63  74  61  73  70  56  55  58  73  51  95  28
      Gene372 113 147  92 131 104 124 156 144 113 125 161  88 141  79 144 102 189 120
      Gene424  12  13  21   8  23  14   9  17  26  18  14   6  16  10  18   7  21   9
      Gene451  21  22  23  47  32  23  38  28  55  47  35  28  32  40  31  14  47  20
      Gene496  56  79  55  62  54  76 137  57  73 112  80  44 133  81  89  63 136  73
      Gene16   13   9  19  25   4  24  14  13  14  25  22   8  13  24  18  26  36   6
      Gene51   27  25  27  13  13  10  27  29  26  43  28  12  18  24  27   9  28  17
      Gene68    4   1   6   2   3   1   3   4   5   2   2   5   4   1   7   7   6   .
      Gene69    6  11  10   3   6   2   3   5  10   5   3   4   2   .   2   9  14   8
      Gene122  62  28  56  23  57  56  29  81  21  37  20  26  47  19  50  73 125  29
      Gene213   3   5  11  14  14   6  12  11  13   8  16  10  11  12  11   8  22  14
      Gene218  46  51  64  43  70  63  22  37  69  40  39  37  59  64  71  39  82  29
      Gene285 201 167 265 198 238 198 275 292 238 273 203 127 168 139 257 228 451 184
      Gene291   2   5   9   3   5  11   2   4   9  10   6   .   2   6  10   6  18   3
      Gene342  48  99  73  53  43  88  78  60  81  72  84  51  64  64  68  48  93  55
      Gene353   1   1   1   2   1   1   2   6   2   3   2   7   2   1   1   .   .   1
      Gene362   6  40  17  30  30   7  13  29  15  21  13  10  27   5  15  14  43  14
      Gene368   2  12   5   5   1  10  15   2   6  11  10   1   1   2  13   4   2   4
      Gene369   3   6   4  15   5   6  10   7  10  20   8  11  17  11  23   2   9  12
      Gene375   8  20  28  25  20  26  16  41  28  18  28  19  47  12  25  38  33   6
      Gene423   .   1   1   .   .   1   1   .   1   1   3   1   .   3   2   3   .   .
                               
      Gene41   43   32   53  52
      Gene76   46   58   57  23
      Gene79  938 1102 1076 710
      Gene124  61   39   58  47
      Gene139  28   35   27  17
      Gene148 159  212  209 152
      Gene166  51   61   70  94
      Gene183  29   50   67  31
      Gene203   4   23    8   7
      Gene237 135  306   70  79
      Gene307  41   60   64  52
      Gene346   .    2    1   1
      Gene43   17    8   34  16
      Gene102  92   82   94  73
      Gene164   3    6   10   3
      Gene200  17   23   27  17
      Gene238 106  182  143 135
      Gene245 115  142  150  88
      Gene260  44  119   58  96
      Gene295  45   32   69  50
      Gene311  17   12   20  18
      Gene324   .    .    .   .
      Gene348  14   18    7  11
      Gene367  56   51   96  64
      Gene372 129  173  169 145
      Gene424   8   10   25   8
      Gene451  33   12   42  16
      Gene496 125  109   81  98
      Gene16   13   12   25  17
      Gene51   36   21   35  18
      Gene68    .    6    4   8
      Gene69    4   13    5   2
      Gene122  27   82   32  28
      Gene213   1    4   12  11
      Gene218  49   65   76  28
      Gene285 192  283  174 184
      Gene291  10   11    3   6
      Gene342  51   72   74  69
      Gene353   1    1    3   .
      Gene362  19   51   35  27
      Gene368   3    2    6  18
      Gene369   4    4   12  19
      Gene375  14   20   37  12
      Gene423   1    .    3   .
      
      Slot "nUMI":
          ct3_plat1_TCAACACTTAAGGGTCCCCA     ct1_plat1_TCAAGACTTAAGGGTCCCCA 
                                   70112                              51618 
          ct2_plat1_TCAATACTTAAGGGTCCCCA     ct2_plat1_TCAAAACTTCAGGGTCCCCA 
                                   72235                              63514 
          ct1_plat1_TCAACACTTCAGGGTCCCCA     ct1_plat1_TCAAGACTTCAGGGTCCCCA 
                                   44215                              68232 
          ct1_plat1_TCAATACTTCAGGGTCCCCA     ct3_plat1_TCAAAACTTGAGGGTCCCCA 
                                   49537                              61860 
          ct2_plat1_TCAACACTTGAGGGTCCCCA ct1_plat1_TCAACAACTTAAAGGGTTCCCCAA 
                                   53111                              45021 
      ct1_plat1_TCAACCACTTAAAGGGTTCCCCAA ct3_plat1_TCAACGACTTAAAGGGTTCCCCAA 
                                   55633                              61010 
      ct2_plat1_TCAACTACTTAAAGGGTTCCCCAA ct3_plat1_TCAACAACTTACAGGGTTCCCCAA 
                                   62477                              78750 
      ct2_plat1_TCAACCACTTACAGGGTTCCCCAA ct2_plat1_TCAACGACTTACAGGGTTCCCCAA 
                                   61353                              95652 
      ct2_plat1_TCAACTACTTACAGGGTTCCCCAA ct2_plat1_TCAACAACTTAGAGGGTTCCCCAA 
                                   55392                              69270 
      ct3_plat1_TCAACCACTTAGAGGGTTCCCCAA ct1_plat1_TCAAGAACTTAAAGGGTTCCCCAA 
                                   44005                              53625 
      ct1_plat1_TCAAGCACTTAAAGGGTTCCCCAA ct2_plat1_TCAAGGACTTAAAGGGTTCCCCAA 
                                   64710                              58835 
      ct1_plat1_TCAAGTACTTAAAGGGTTCCCCAA ct3_plat1_TCAAGAACTTACAGGGTTCCCCAA 
                                   49929                              49342 
      ct1_plat1_TCAAGCACTTACAGGGTTCCCCAA ct1_plat1_TCAAGGACTTACAGGGTTCCCCAA 
                                   46182                              81626 
      ct1_plat1_TCAAGTACTTACAGGGTTCCCCAA ct2_plat1_TCAAGAACTTAGAGGGTTCCCCAA 
                                   86747                              61410 
      ct3_plat1_TCAAGCACTTAGAGGGTTCCCCAA ct1_plat1_TCAATAACTTAAAGGGTTCCCCAA 
                                   61880                              60999 
      ct2_plat1_TCAATCACTTAAAGGGTTCCCCAA ct3_plat1_TCAATGACTTAAAGGGTTCCCCAA 
                                   84739                              62808 
      ct2_plat1_TCAATTACTTAAAGGGTTCCCCAA ct2_plat1_TCAATAACTTACAGGGTTCCCCAA 
                                   48887                              65914 
      ct2_plat1_TCAATCACTTACAGGGTTCCCCAA ct3_plat1_TCAATGACTTACAGGGTTCCCCAA 
                                   44555                              51800 
      ct2_plat1_TCAATTACTTACAGGGTTCCCCAA ct2_plat1_TCAATAACTTAGAGGGTTCCCCAA 
                                   59146                              46620 
      ct3_plat1_TCAATCACTTAGAGGGTTCCCCAA ct3_plat1_TCAAAAACTTCAAGGGTTCCCCAA 
                                   41413                              56321 
      ct1_plat1_TCAAACACTTCAAGGGTTCCCCAA ct2_plat1_TCAAAGACTTCAAGGGTTCCCCAA 
                                   61013                              90234 
      ct1_plat1_TCAAATACTTCAAGGGTTCCCCAA ct2_plat1_TCAAAAACTTCCAGGGTTCCCCAA 
                                   49247                              45190 
      ct1_plat1_TCAAACACTTCCAGGGTTCCCCAA ct1_plat1_TCAAAGACTTCCAGGGTTCCCCAA 
                                   72031                              74049 
      ct1_plat1_TCAAATACTTCCAGGGTTCCCCAA ct2_plat1_TCAAAAACTTCGAGGGTTCCCCAA 
                                   61448                              46410 
      ct1_plat1_TCAAACACTTCGAGGGTTCCCCAA ct2_plat1_TCAACAACTTCAAGGGTTCCCCAA 
                                   67167                              37839 
      ct2_plat1_TCAACCACTTCAAGGGTTCCCCAA ct2_plat1_TCAACGACTTCAAGGGTTCCCCAA 
                                   66271                              56491 
      ct2_plat1_TCAACTACTTCAAGGGTTCCCCAA ct1_plat1_TCAACAACTTCCAGGGTTCCCCAA 
                                   66606                              82433 
      ct1_plat1_TCAACCACTTCCAGGGTTCCCCAA ct2_plat1_TCAACGACTTCCAGGGTTCCCCAA 
                                   65814                              51503 
      ct3_plat1_TCAACTACTTCCAGGGTTCCCCAA ct1_plat1_TCAACAACTTCGAGGGTTCCCCAA 
                                   70992                              39870 
      ct2_plat1_TCAACCACTTCGAGGGTTCCCCAA ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA 
                                   45233                              66101 
      ct1_plat1_TCAAGCACTTCAAGGGTTCCCCAA ct2_plat1_TCAAGGACTTCAAGGGTTCCCCAA 
                                   90144                              53614 
      ct2_plat1_TCAAGTACTTCAAGGGTTCCCCAA ct3_plat1_TCAAGAACTTCCAGGGTTCCCCAA 
                                   58401                              63888 
      ct2_plat1_TCAAGCACTTCCAGGGTTCCCCAA ct3_plat1_TCAAGGACTTCCAGGGTTCCCCAA 
                                   60442                              57832 
      ct2_plat1_TCAAGTACTTCCAGGGTTCCCCAA ct3_plat1_TCAAGAACTTCGAGGGTTCCCCAA 
                                   66969                              59715 
      ct3_plat1_TCAAGCACTTCGAGGGTTCCCCAA ct2_plat1_TCAATAACTTCAAGGGTTCCCCAA 
                                   59094                              66205 
      ct3_plat1_TCAATCACTTCAAGGGTTCCCCAA ct1_plat1_TCAATGACTTCAAGGGTTCCCCAA 
                                   57912                              61217 
      ct3_plat1_TCAATTACTTCAAGGGTTCCCCAA ct1_plat1_TCAATAACTTCCAGGGTTCCCCAA 
                                   55380                              57214 
      ct2_plat1_TCAATCACTTCCAGGGTTCCCCAA ct3_plat1_TCAATGACTTCCAGGGTTCCCCAA 
                                   72436                              57275 
      ct1_plat1_TCAATTACTTCCAGGGTTCCCCAA ct2_plat1_TCAATAACTTCGAGGGTTCCCCAA 
                                   62128                              76466 
      ct1_plat1_TCAATCACTTCGAGGGTTCCCCAA ct1_plat1_TCAAAAACTTGAAGGGTTCCCCAA 
                                   63832                              52825 
      ct1_plat1_TCAAACACTTGAAGGGTTCCCCAA ct1_plat1_TCAAAGACTTGAAGGGTTCCCCAA 
                                   58019                              52140 
      ct1_plat1_TCAAATACTTGAAGGGTTCCCCAA ct3_plat1_TCAAAAACTTGCAGGGTTCCCCAA 
                                   72724                              48132 
      ct3_plat1_TCAAACACTTGCAGGGTTCCCCAA ct2_plat1_TCAAAGACTTGCAGGGTTCCCCAA 
                                   92789                              50990 
      ct2_plat1_TCAAATACTTGCAGGGTTCCCCAA ct3_plat1_TCAAAAACTTGGAGGGTTCCCCAA 
                                   66405                              78478 
      ct1_plat1_TCAAACACTTGGAGGGTTCCCCAA ct2_plat1_TCAACAACTTGAAGGGTTCCCCAA 
                                   84313                              63890 
      
      
      Slot "originalSpatialRNA":
      An object of class "SpatialRNA"
      Slot "coords":
                                                   x            y
      ct3_plat1_TCAACACTTAAGGGTCCCCA     -0.43096549 -0.910590003
      ct1_plat1_TCAAGACTTAAGGGTCCCCA      1.02345450  0.363329689
      ct2_plat1_TCAATACTTAAGGGTCCCCA     -0.37723416  1.078665706
      ct2_plat1_TCAAAACTTCAGGGTCCCCA     -0.37580166  0.885343767
      ct1_plat1_TCAACACTTCAGGGTCCCCA      0.80558938  0.196699696
      ct1_plat1_TCAAGACTTCAGGGTCCCCA      0.81200298  0.450601327
      ct1_plat1_TCAATACTTCAGGGTCCCCA      1.37438927 -0.322920094
      ct3_plat1_TCAAAACTTGAGGGTCCCCA     -0.79971470 -1.219865301
      ct2_plat1_TCAACACTTGAGGGTCCCCA     -0.84307443  0.847208532
      ct1_plat1_TCAACAACTTAAAGGGTTCCCCAA  1.08157095 -0.463061638
      ct1_plat1_TCAACCACTTAAAGGGTTCCCCAA  0.57352453  0.252656447
      ct3_plat1_TCAACGACTTAAAGGGTTCCCCAA -0.88984426 -0.755152904
      ct2_plat1_TCAACTACTTAAAGGGTTCCCCAA -0.31932306  1.182947543
      ct3_plat1_TCAACAACTTACAGGGTTCCCCAA -0.61352577 -1.096416227
      ct2_plat1_TCAACCACTTACAGGGTTCCCCAA -0.03482147  1.031008132
      ct2_plat1_TCAACGACTTACAGGGTTCCCCAA -0.47184864  1.361665823
      ct2_plat1_TCAACTACTTACAGGGTTCCCCAA -0.73486402  0.425752850
      ct2_plat1_TCAACAACTTAGAGGGTTCCCCAA -0.34331884  1.315009981
      ct3_plat1_TCAACCACTTAGAGGGTTCCCCAA -0.37592770 -0.539678254
      ct1_plat1_TCAAGAACTTAAAGGGTTCCCCAA  0.88538559 -0.278845982
      ct1_plat1_TCAAGCACTTAAAGGGTTCCCCAA  1.18285317 -0.040068471
      ct2_plat1_TCAAGGACTTAAAGGGTTCCCCAA -0.78014686  1.263729895
      ct1_plat1_TCAAGTACTTAAAGGGTTCCCCAA  1.07787765 -0.427002433
      ct3_plat1_TCAAGAACTTACAGGGTTCCCCAA -0.95215145 -0.861115683
      ct1_plat1_TCAAGCACTTACAGGGTTCCCCAA  0.73339921 -0.074767140
      ct1_plat1_TCAAGGACTTACAGGGTTCCCCAA  0.77387731  0.269496168
      ct1_plat1_TCAAGTACTTACAGGGTTCCCCAA  1.06950742 -0.226109393
      ct2_plat1_TCAAGAACTTAGAGGGTTCCCCAA -0.36443921  1.079897995
      ct3_plat1_TCAAGCACTTAGAGGGTTCCCCAA -0.36747551 -0.423062945
      ct1_plat1_TCAATAACTTAAAGGGTTCCCCAA  0.70757046 -0.107700032
      ct2_plat1_TCAATCACTTAAAGGGTTCCCCAA -0.17456189  1.017381877
      ct3_plat1_TCAATGACTTAAAGGGTTCCCCAA -0.81327490 -0.524381685
      ct2_plat1_TCAATTACTTAAAGGGTTCCCCAA -0.75439558  1.215012342
      ct2_plat1_TCAATAACTTACAGGGTTCCCCAA -0.32236546  0.399962320
      ct2_plat1_TCAATCACTTACAGGGTTCCCCAA -0.14578700  0.802363719
      ct3_plat1_TCAATGACTTACAGGGTTCCCCAA -0.77697015 -0.888575332
      ct2_plat1_TCAATTACTTACAGGGTTCCCCAA -0.40290587  0.863314285
      ct2_plat1_TCAATAACTTAGAGGGTTCCCCAA -0.25632522  1.102471147
      ct3_plat1_TCAATCACTTAGAGGGTTCCCCAA -0.46613592 -0.851603916
      ct3_plat1_TCAAAAACTTCAAGGGTTCCCCAA -0.77042431 -1.229239705
      ct1_plat1_TCAAACACTTCAAGGGTTCCCCAA  1.49559321 -0.008709445
      ct2_plat1_TCAAAGACTTCAAGGGTTCCCCAA -0.33616745  1.154543795
      ct1_plat1_TCAAATACTTCAAGGGTTCCCCAA  0.59174068  0.096160343
      ct2_plat1_TCAAAAACTTCCAGGGTTCCCCAA -0.42068203  1.141257998
      ct1_plat1_TCAAACACTTCCAGGGTTCCCCAA  0.67549395  0.146795060
      ct1_plat1_TCAAAGACTTCCAGGGTTCCCCAA  0.77150848 -0.331803749
      ct1_plat1_TCAAATACTTCCAGGGTTCCCCAA  1.14764607 -0.212515530
      ct2_plat1_TCAAAAACTTCGAGGGTTCCCCAA -0.48124774  0.978915399
      ct1_plat1_TCAAACACTTCGAGGGTTCCCCAA  1.08950512 -0.253070857
      ct2_plat1_TCAACAACTTCAAGGGTTCCCCAA -0.70923819  0.869661416
      ct2_plat1_TCAACCACTTCAAGGGTTCCCCAA -0.62294702  1.098756569
      ct2_plat1_TCAACGACTTCAAGGGTTCCCCAA -0.37649915  0.706804100
      ct2_plat1_TCAACTACTTCAAGGGTTCCCCAA -0.11728913  0.993047440
      ct1_plat1_TCAACAACTTCCAGGGTTCCCCAA  0.98833529 -0.010405353
      ct1_plat1_TCAACCACTTCCAGGGTTCCCCAA  1.35292463  0.334808641
      ct2_plat1_TCAACGACTTCCAGGGTTCCCCAA -0.80372004  0.473425921
      ct3_plat1_TCAACTACTTCCAGGGTTCCCCAA -0.90688477 -0.717079396
      ct1_plat1_TCAACAACTTCGAGGGTTCCCCAA  1.17866600 -0.212906497
      ct2_plat1_TCAACCACTTCGAGGGTTCCCCAA -0.62900381  1.198740640
      ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA -0.56368734  1.037251343
      ct1_plat1_TCAAGCACTTCAAGGGTTCCCCAA  0.64842949 -0.322403496
      ct2_plat1_TCAAGGACTTCAAGGGTTCCCCAA -0.97565520  0.939209519
      ct2_plat1_TCAAGTACTTCAAGGGTTCCCCAA -0.84476728  1.177591309
      ct3_plat1_TCAAGAACTTCCAGGGTTCCCCAA -0.30295006 -1.173682582
      ct2_plat1_TCAAGCACTTCCAGGGTTCCCCAA -0.44045433  1.039943979
      ct3_plat1_TCAAGGACTTCCAGGGTTCCCCAA -0.43558258 -1.018723492
      ct2_plat1_TCAAGTACTTCCAGGGTTCCCCAA -0.52339921  1.217100273
      ct3_plat1_TCAAGAACTTCGAGGGTTCCCCAA -0.63788189 -0.961340725
      ct3_plat1_TCAAGCACTTCGAGGGTTCCCCAA -0.35734775 -0.903114499
      ct2_plat1_TCAATAACTTCAAGGGTTCCCCAA -0.83150294  1.053691394
      ct3_plat1_TCAATCACTTCAAGGGTTCCCCAA -0.60306256 -0.954148821
      ct1_plat1_TCAATGACTTCAAGGGTTCCCCAA  0.60434458 -0.212289995
      ct3_plat1_TCAATTACTTCAAGGGTTCCCCAA -0.70554634 -0.559445670
      ct1_plat1_TCAATAACTTCCAGGGTTCCCCAA  1.24555720 -0.176825903
      ct2_plat1_TCAATCACTTCCAGGGTTCCCCAA -0.28738269  0.980954131
      ct3_plat1_TCAATGACTTCCAGGGTTCCCCAA -0.61267430 -0.423312755
      ct1_plat1_TCAATTACTTCCAGGGTTCCCCAA  1.00090148  0.051504596
      ct2_plat1_TCAATAACTTCGAGGGTTCCCCAA -0.68401276  1.199331128
      ct1_plat1_TCAATCACTTCGAGGGTTCCCCAA  1.29544042  0.180742344
      ct1_plat1_TCAAAAACTTGAAGGGTTCCCCAA  1.36618878 -0.067164530
      ct1_plat1_TCAAACACTTGAAGGGTTCCCCAA  1.15748056  0.299385472
      ct1_plat1_TCAAAGACTTGAAGGGTTCCCCAA  1.08735085  0.435586683
      ct1_plat1_TCAAATACTTGAAGGGTTCCCCAA  1.32058987  0.339609990
      ct3_plat1_TCAAAAACTTGCAGGGTTCCCCAA -0.47577910 -0.897382818
      ct3_plat1_TCAAACACTTGCAGGGTTCCCCAA -0.57740019 -0.549452549
      ct2_plat1_TCAAAGACTTGCAGGGTTCCCCAA -0.38996896  1.023724412
      ct2_plat1_TCAAATACTTGCAGGGTTCCCCAA -0.76132987  0.591617531
      ct3_plat1_TCAAAAACTTGGAGGGTTCCCCAA -0.19225713 -1.156926166
      ct1_plat1_TCAAACACTTGGAGGGTTCCCCAA  0.90477239  0.119871881
      ct2_plat1_TCAACAACTTGAAGGGTTCCCCAA -0.09579269  1.096560996
      
      Slot "counts":
      500 x 90 sparse Matrix of class "dgCMatrix"
    Message
        [[ suppressing 90 column names 'ct3_plat1_TCAACACTTAAGGGTCCCCA', 'ct1_plat1_TCAAGACTTAAGGGTCCCCA', 'ct2_plat1_TCAATACTTAAGGGTCCCCA' ... ]]
    Output
                                                                                   
      Gene1     30   77   33   38   50   35   20   62   46   19   47   25   34   51
      Gene2     26   21   25    9   29   23   20   48   41   12   14   26   58   26
      Gene3    596  543  810  841  627  831  674  662  468  453  674  533  625  848
      Gene4     70   83  108   64   63   81   49   68   45   46   77   58   67   91
      Gene5      3    2    5    1    1    4    6    4    4    3    4    7    4    4
      Gene6     76   50  172   31   88   60   71   68   50   58   73   73   57   86
      Gene7     75   54   97   67   59  112   63   97   92   60   60   49   63   68
      Gene8     70   83  123   94   47  117   50   75  118   57   91  152   94  171
      Gene9     88   62   79   47   51   62   32   58   64   34   60   45   91   83
      Gene10     3    6   14    2    1    8    8    6   12    4    .   10    6    6
      Gene11    51   16   32   15   15   18   31   12   20   18   22   27   16   32
      Gene12    28   23   44   38   17   34   26   20   45   23   49   21   84   45
      Gene13    52   39  117   56   51   57   62   70   49   30   52   73   58   74
      Gene14    13    9   19   15    8   19   22   10   24    7   13   14   20    5
      Gene15   369  139  159  120  120  185  138  313  160  125  174  159  149  254
      Gene16    18   29   20    4   22    8   14   13   11   12   12   22    6   32
      Gene17    25   35   49   41   52   32   31   15   17   51   35   24   31   19
      Gene18    46   33   44   13   14   27   14   25   16   31   24   15   20   26
      Gene19    37   34   34   40   25   45   14   24   25   16   24   25   28   40
      Gene20     .    .    .    .    .    1    .    1    2    .    .    1    .    .
      Gene21     2    .    1    .    8    .    .    .    1    .    1    4    3    3
      Gene22   140   57  135  136  117  100   73  106   93   70   77  116   89  170
      Gene23  2423 1945 2604 2169 1696 2697 1884 2084 1796 1492 1866 2367 2031 2790
      Gene24    23   10   16   14   20   25   13   15   16   13   16   17   25   12
      Gene25    55   30   31   24   17   29   19   11    8   26   27   21   18   41
      Gene26    25   33   45   57   34   40   17   25   28   17   25   34   28   22
      Gene27     .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene28    43   21   14   11   13   23   17   22   12   20   21   27   15   33
      Gene29    62   52  101   75   62   75   89   42   56   28   65   33   77   53
      Gene30   390  120  166  134   98  239  188  200  118  107  144  308  140  330
      Gene31  1832 1798 1220 1314 1392 2017 1831 1732  971 1626 1705 1856 1210 1890
      Gene32    86   55   49   49   33   63   22   65   53   29   58   69   28   73
      Gene33     7   15   16   14   13    8   12    7   11    9    3    9    9    6
      Gene34    54   21   38   27   22   19   19   81   28   23   34   54   41   85
      Gene35   514  365  616  494  306  540  281  433  378  363  423  405  551  703
      Gene36     .   12    4    .    2   12    .   10    2    1    2    .    1    6
      Gene37    14   16   13   17    3   12    9   23   15    5    5   17   11   28
      Gene38     4    .    5   15    3   19    7    6    8    6   18   17   15   16
      Gene39   410  408  588  355  301  493  466  325  299  329  391  263  543  582
      Gene40     1    3    2    1    .    1    1    .    2    1    3    5    1    .
      Gene41    36   21   18   19   18   25   27   45   39   23   32   71   18   32
      Gene42     3    1   16    1    8    2    8    2    6   10    2   12    6    6
      Gene43    11   10   10   12    8   17   10   12    4    3    8   12    8   12
      Gene44    20    8   27    9   11   26   16   22    9   10   29   24   15   20
      Gene45   128   74  120  119   93  111  121  127  132  102  116  162  114  163
      Gene46  2916 1827 3476 2446 1532 2325 1956 2834 2054 1780 1962 2269 1944 3194
      Gene47     4    9    7    6    4   10    4    3    1    5   10   13    3   12
      Gene48    45   37   58   45   65   47   55   28   43   43   49   45   55   52
      Gene49    26    5   43   18   19   30   10   13   78   23   21   29   14   38
      Gene50     .    .    1    3    .    .    .    .    .    .    .    .    .    .
      Gene51    41   21   36   28    7   27   18   14   18   19   10    7   17   29
      Gene52     6    3    3    3    2    4    1    .    3    .    7    .    3    6
      Gene53    52   31   31   37   40   69   53   36   54   41   32   14   45   70
      Gene54    71   52   41   35   32   23   36   36   50   33   46   44   28   99
      Gene55     3    1    3    7    5    9    .    .    2    4   15    1    5    3
      Gene56     6    1   20    4   11   10    3    6    3    3    8    7    8    4
      Gene57    54   59   70   79   18   70   49   37   41   46   67   72   41   75
      Gene58    37   33   43   30   16   23   24   46   25   27   33   40   43   59
      Gene59    28    8   68   26    7   16    4   18   45    4   21   30   41   29
      Gene60     2    1    2    2    .    2    4    3    2    2    2    2    .    .
      Gene61     .    4    .    .    .    .    .    .    .    .    .    .    1    2
      Gene62    49   32   49   24   27   25   50   47   54   24   29   58   70   72
      Gene63   383  162  146  146  189  147  164  344  157  129  132  419  185  366
      Gene64   206  172  242  181  152  222  227  244  189  138  195  159  210  265
      Gene65    73   27   19   58   31   65   32   69   14   41   20   58   23   58
      Gene66   150   68   87   84   62   89   73   96   69   41   62  105   40  146
      Gene67   435  229  472  366  196  296  293  350  275  265  339  283  357  421
      Gene68     6    5    .    5    .    6    .    4    .    2    1    2    1    4
      Gene69    21    3   10   11    2    9    2   14    4    2   11   19    2    8
      Gene70   148   79  101   58   47  136   63  152   89   60  104  144   87  200
      Gene71    43   43   52   38   19   42   20   49   25   36   50   47   27   79
      Gene72    23    4   20   18    4   15   15   14   30    8    6   14   14   23
      Gene73     6    .    .    4    .    1    3    9    .    .    .    2    .    3
      Gene74  1669 1509 2522 1642 1133 1835 1158 1430 1458  820 1640 1555 1404 1968
      Gene75    34   19   38   16    5   29   19   23   21   23   47   21   24   36
      Gene76    35   50   49   36   43   31   21   45   38   25   25   38   22   58
      Gene77    51   51   36   52   36   39   20   37   31   35   43   34   44   71
      Gene78   132   74  125   78   78   87  112  178   95   72  160  158   74  158
      Gene79   741  578  965  699  412  815  572  776  604  624  702  851  793  956
      Gene80    49   75   71   71   46   64   57   75   65   32   52   69   65   89
      Gene81    11    7   17   17   12   18    6   16    4   22    8    9   18   17
      Gene82     .   12    .    .    .    .    1    1    3    3    1    7    2    3
      Gene83    86   79   96  102  105  150  101   61  125  101  112   88   93  140
      Gene84    32   29   50   40   33   30   36   20   79   22   41   43   46   44
      Gene85   889  587  801  571  674  735  505  714  659  591  585  635  756  908
      Gene86     .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene87    46   22   36   24   26   35   37   49   34   48   26   54   39   51
      Gene88   143  129  154  147   51  119  118   93  126   55  109  194  180  147
      Gene89    21   19   63   29   27   32   34   23   17    8   13   22   32   41
      Gene90   220  123  179  139   98  263  152  179  169  107  172  186  217  262
      Gene91    76   33   86   63   26   50   71   46   31   44   59   39   59   73
      Gene92    14   22   21   25   17   14   18   19   16   21   33   14   12   13
      Gene93    45   26   31   19   11   24   23   44   18   20   20   22   26   30
      Gene94    52   32   63   35   40   43   33   57   24   39   62   75   23   40
      Gene95    10   16    4    5    8   13   11   13    1    7   15   10    8   13
      Gene96     1    .    .    .    1    2    .    .    .    .    .    .    .    2
      Gene97     8   12    5    5    3    4    5    .    1    9    3   22    5   10
      Gene98     3    1    6    5    5    1    1    3    1    3    1    3    6    7
      Gene99     5    4    4    4    .    3    1    4    2    1    5    3    6    5
      Gene100  166  115  157  133  110  162  128  131  126  103  144  172  145  191
      Gene101   17    9   13    8    7   11    6   12    9    1   12   14    9   16
      Gene102   72   69   80   88   42   58   45   48   49   36   43   68   54   94
      Gene103   45   22   28   19   33   67   25   42   31    6   39   16   39   79
      Gene104    .    .    .    1    .    .    .    .    .    2    .    .    .    3
      Gene105   20    9    5    1    3   15    9   11    2    8    7   16    5   28
      Gene106   52   34   22   29   12   29   31   49   33   13   37   42   38   63
      Gene107 2976 2975 5007 4152 2242 3671 1786 3114 3633 2182 3214 2783 4988 3815
      Gene108    2    4    3   15    .    5    5    1    5    .    3    1    3    3
      Gene109  220  169  165  154  119  172  134  189  121   93  169  143  164  163
      Gene110  158   72  163  110   65  148  107  132  139  112  119  102  115  172
      Gene111  328  354  495  269  282  438  340  450  387  285  425  382  323  490
      Gene112    7    8    3    6    3    4    7    .    3    .    3    5    3    4
      Gene113   24   13   46   42   19   29   24   20   40   23   28   27   40   33
      Gene114   13   12   21   20    8    4   10   12   16   15    2    5   17   15
      Gene115   46    3   23   11   16   27   27   48   17   28   12   43   11   87
      Gene116   46   42   32   76   38   48   48   21   49   37   33   32   39   23
      Gene117  861  618  827  828  511 1000  554  969  498  549  675  683  819  936
      Gene118    9   14   11    2   12   11   11    9    2   10   19    8    6    8
      Gene119    5    2    2   13    7   13    5   12    7    2    8   11    7   24
      Gene120   78   12   28   18   19   37   10   44   10   11   38   30   18   54
      Gene121    2    4   10   26    5    7   11   14   11    9    4    5    8    7
      Gene122   89   15   47   24   30   22   32   67   34    9   39   84   42  123
      Gene123 2086 1759 1962 1775 1602 1903 1592 1901 1665 1371 1571 1629 1944 1937
      Gene124   69   53   27   60   47   30   47   53   41   38   31   38   77   65
      Gene125  700 1892 2218 2362 1439 2056 1735  601 1491 1682 1699  701 2313  844
      Gene126   43   40   60   56   38   64   36   33   44   32   39   32   44   54
      Gene127  177  153  207  108  141  182   92  141  129  131  116  125   95  141
      Gene128    6    7   16    7    3   17    5   13   18    3    5    9   13    9
      Gene129  120   93  131   98  108  175  110  153  125  114   94  139  147  152
      Gene130   71   32   71   35   44   58   53   57   29   42   27   63   55   60
      Gene131    8   18   34   25   13   11   11   11   30   16   19   19   22   21
      Gene132   28    8   23   22    8   22   11   17    9   24   19   30   14   20
      Gene133    9    6    7    3    4   16    1   14    3    1    2    7   11    5
      Gene134    1   10   15   13   32   39   21    2   17   14   26    8   20    8
      Gene135   27   19    9   11    9   13   10    7    9    4    3   17   17    6
      Gene136  107   96  184  161   91  132   95   84  165   57  107  135  112  125
      Gene137   17    9    5    6    2    8    9   11   15    1    9   19   13   24
      Gene138   61   16   29   27   34   30   32   33   25   23   23   51   39   49
      Gene139   24   12   21   15   14   38   25   28   12    9   15   31   21   54
      Gene140   27   13   16   13   16   18   13   30   19   10    5   11   15   15
      Gene141   29   13   15    5   13   14   10   33    9   16   19   12   11   42
      Gene142  146   97  302  148   72  113  158  167  225   86  125  159  178  276
      Gene143    4    4    2    .    4    6    3    6    1    2    2    4    3   12
      Gene144    8   18    1    2    3    2    1    7   13    6   16   10    6   15
      Gene145   89   43   62   57   60   30   47   37   41   49   50   52   39   26
      Gene146   78  256  105   74  175  275  261   74  118  218  266   57  125  144
      Gene147   69   42  106   34   36   66   59   42   22   33   63   43   53   83
      Gene148  247  123  233  142  141  199  162  171  143   90  208  173  228  244
      Gene149    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene150   12    2    9    7    4   14   11    3    3    3   12   19    5    7
      Gene151  139   99  251  150   64  178   67  136  146   76   97   56  188  130
      Gene152    8   10   10    3    1   21    3   21    5    7    6    7    7   26
      Gene153    6    1    6    6    2    5    5    3    2    1    3    7    7   14
      Gene154    .    .    1    .    .    .    .    .    .    3    .    .    2    3
      Gene155   32   28   26   14   31   40   43   26   27   43   28   36   32   35
      Gene156   85   53   76   53   49   68   50   55   54   31   49   70   68   67
      Gene157    3    3    1    .    2    3    .    2    .    .    6    4    2    3
      Gene158   94   46  129   72   49   93   90   89   89   54   69   64   61   98
      Gene159   40   39   21   41   23   34   13    9   22   14   16   30   25    7
      Gene160   11    5   14    8    3   11    3    7    6    4    8    9    3   14
      Gene161   46   49   67   33   32   45   33   47   50   23   44   42   33   58
      Gene162    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene163   38    2   22   30   22   19   17   11   22   10   23   22   13   16
      Gene164    4    4    6    3    2    2    8    4    1    3    6    8    7    5
      Gene165  144   58  103   78   88   92   76  141  127   60  120   92  121  101
      Gene166   71   43   79   59   39   59   69   72   51   38   54   60   78  116
      Gene167   12    2   17    5   11   18    9   23   18   13   17   31   18   30
      Gene168    1    1    1    1    1   10    .    5    2    .    .    3    1    .
      Gene169   11    1    2    3    4    .    1    3    4    2    .    1    3    3
      Gene170    .    .    .    2    .    .    .    .    2    .    .    .    .    .
      Gene171  196  139  140  159  100  155  147  149  165   96  168  146  225  242
      Gene172    5    5    5    9    3   10    9    4    1   13    1    1    4   13
      Gene173   79   32   28   26   25   40   30   69   28   16   38   70   37   86
      Gene174   24   20   39   32   18   15   40   24   21   15   17   26   15   31
      Gene175    4    4    6    1    8   10   15   12    2    6    2   14    4   11
      Gene176    5   13   11    5    9   10    1   14    6    6   12   11   14   17
      Gene177 2044 1941 2225 1964  987 1977 1349 1798 1474 1669 1590 1920 1893 2746
      Gene178    1    .    6    .    .    1    1    .    2    .    4    1    2    1
      Gene179   63   63   66   65   76  122   63   75   67   61   48   92   70   61
      Gene180   26   22   35   20   20   58   25   36   30   13   31   14   42   33
      Gene181    2    .    .    1    .    .    .    1    .    .    .    .    .    1
      Gene182  125   63  113  108   97  132   88   89   92   69  155   90  106  159
      Gene183   48   15   28   66   63   68   33   77   37   61   35   39   25   84
      Gene184   79   76   50   86   59   88   71  106   61   69   64   81   58   74
      Gene185   19   17   17   21   14   14   17   23    9   15   18   15   15   22
      Gene186   10   12   35    6    1   15    9   11   14   14    7    3   15    .
      Gene187   63   75   83   59   36  111   42   61   77   42   36   56   61   50
      Gene188    5    .    7    1    .    3    2    3    4    5    1    1    2    8
      Gene189   76   95  118   99   71   97   55  141   81  104   75  113   88  156
      Gene190 1165 1125 1146 1390 1007  971  955  836 1032  869 1047  756 1383 1435
      Gene191    8   26   18   19   13   13   32   10   13   12   16   23   19   23
      Gene192    6   10    1    8    2   10   10    3   23    3    5    2    7    3
      Gene193    7    5   18   14   10   20    5    6   18    6    9    5    9   11
      Gene194   15   14   17   22   18   20   25   15   21    9   13   20   23   15
      Gene195    3    8   20   13   10   11    3    7   13    3    8    6   13   10
      Gene196  258  126  208  162  157  209  147  285  179  155  129  271  146  289
      Gene197   34   17   16   23   11   47   22   30   23   11   17   29   14   37
      Gene198   79   88  132   94   69   87   93  120   82   76   79   75  112  167
      Gene199   40   23   30   34   16   35   14   32   17   12    8   33   15   36
      Gene200   27   13   17   38   19   23   19   33   14   11   25   15   29   24
      Gene201   18    8    7    4    5   10   12   16    7   11    4    3   12    7
      Gene202 1150  712 1183 1066  624 1098  784  787  986  753  861  891 1028 1285
      Gene203   19   17   21    5    4   30   21   16    9    8    9   25   20   15
      Gene204    .    1    2    .    .    .    1    .    .    .    .    .    .    .
      Gene205   58   50   52   51   31   70   71   49   61   52   47   54   63   70
      Gene206  102   83   53   36   98  107  106  101   33   72   70   62   49  109
      Gene207   12    4   13    2    3    9   11   14   15    5    .   17    5    3
      Gene208   15    1    7    3    .    .    .    8    6    .    .   10   14   17
      Gene209  271  235  234  219  179  211  152  178  165  154  199  216  273  227
      Gene210   73   44   70   60   52   57   45   77   81   65   53   46   37   91
      Gene211    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene212   36   16   26   15   13   21   17   15   20   12   11    6    8   24
      Gene213    8    8    8   19    6   13   10    7   10    7    7   10   11   12
      Gene214   33   17   37   21    7   20   20   16   31   41   32   22   17   45
      Gene215    2    1    4   11    1    2    2   10    2    .    4    1    1    9
      Gene216   22   27   48   27   26   45   28   15   35   23   31   46   17   53
      Gene217   76   33   63   62   61   90   54   72   49   37   55   46   88  102
      Gene218   52   51   35   50   66   56   44   60   53   37   36   68   23   78
      Gene219    4    3    6    1    1   14    7    3    1    7    4    9    8    3
      Gene220  152   56  140   56   54   62   74  142   49   52   75  130   59  173
      Gene221   20   16   33   10   12   56   21   17   10   20    9    9   13   22
      Gene222   22   16   27   21   11   30   15   29   18   10   12   43   29   13
      Gene223  157  129  160  120   75  107  106  137  137  102  101   89  129  165
      Gene224   25   14   30   21   42    8   46   23   24   18   21   28   30   31
      Gene225   16    8   13    3    1   13    8   12    7    3    4   10    7   20
      Gene226   17   14   32   19   14   15   18   28   17   24   20   36   31   39
      Gene227   37   27   41   13   23   54   18   52   12   25   14   31   40   20
      Gene228   95   52   40   41   44   64   35   67   42   31   32   43   72   80
      Gene229   72   60   50   41   35  107   44   44   58   49   44  139   71   95
      Gene230    8    1    5    3    3    .    8   16    2    4    5    .    1    4
      Gene231   12    2    5    1    .    2    6    8    5    4    7    2    5   12
      Gene232  103  141  115  110   72  132   80  151  163   32  114  124  155  193
      Gene233    2   12   23   25    8   15    6   14    7   10   13    2    7    8
      Gene234    5    2   17    7    7   17    9    8   11    5    2    4   18    6
      Gene235   52   35   57   36   24   49   37   44   63   19   47   48   47   96
      Gene236   16   16   39   30   14   12    8   31   14    7   23   24    8   31
      Gene237  239   64   83  139  102  114   64  185   79   79   76  247   81  277
      Gene238  140   79  152  115   73  190   99  176  107  101   86   73  106  178
      Gene239   26   19   26   23    4   14   15   20   22   24    9   24   39   15
      Gene240   20    6    8   10   13   17    8    9    5    7    5    4    2    5
      Gene241   58   40   79   23   17   27   43   91   49   41   39   65   39   68
      Gene242    2    .    1    4    1    2    .    .    .    4    2    .    1    .
      Gene243  133   98  301  240   91  178  158  165  186  131  132  111  235  246
      Gene244    9    2    9    4    .    6    .    .    3    2    9    2    5    8
      Gene245   76   69  131  101   84  102   87  113   95   55   91   61   93  216
      Gene246   23   19   20   16   15   12    8   30   15   15   16   17    3   31
      Gene247   12    7   33   24   15   14   10    8   18    2   18   17   13    8
      Gene248    9    7   17   14    9   11   18    8   15   11   18   15    7   18
      Gene249    .    .    .    .    .    .    .    .    .    1    .    .    .    .
      Gene250    1    .    1    1    .    1    .    8    .    .    .    1    2    6
      Gene251   24   34   27   24   34   74   25   10   34   39   30   27   33   35
      Gene252   50   24   28   18   29   27   14   36   16   15   30   57   14   74
      Gene253  135  121  172  163  117  161  127   90  128   94  116  101  203  178
      Gene254   91   45   79   54   63   75   56   55   51   22   57   56   51  115
      Gene255  148   62  133   97   78  137   44  109   66   71   68   56   94   78
      Gene256  109   81  210  160   38  131  104   58   91   86   79   57   95  107
      Gene257   13   15   11   24   16   23   14   14   29   13   21   31    9   17
      Gene258   12   18   16   11   13    9   17   11   11    2    2    9   16    5
      Gene259    .    1    1    2    .    1    .    .    .    .    .    .    2    .
      Gene260   60   44   52   47   47   62   52   65   48   40   80   81   73  101
      Gene261   23   13   30   32   10   23    8   14   33    9   30   23   20   22
      Gene262    5    6   14    8    1    2    4    8    5    5    6    8   14    3
      Gene263    6   16   13   14    8   13   18   13   21   10   11    7   16   16
      Gene264   71   50   42   49   20   37   34   62   34   26   23   60   32   53
      Gene265   26    9   27   18    6   18   14   21    1    8   13   16   13   35
      Gene266    1    1    6    2    .    1    5    2    .    4    .    .    .    3
      Gene267   75   66   45   93   50   64   65   38   53   51   31   48   76   79
      Gene268   27    7    7   25    4    1    7   14   10    3    5    7    8   13
      Gene269    8    5   14    3    4    9    6    4   14    6    5    3    4    5
      Gene270  178  133  171  125  157  185  122  137  236  168  177  201  170  241
      Gene271 1323  888  961 1311  689 1178  927 1069  927  902  965  993  992 1504
      Gene272  113   63   63   76   40  143   84   50   96   78   50   92  141   87
      Gene273    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene274    .    .    3    .    .    .    8    .    2    2    2    .    .    1
      Gene275    3    .    2    3    .    1    2    1    5    .    1    4    1    1
      Gene276   22    2   26   12    3   10   21   12   15    1   16    7   15   16
      Gene277   39   15   58   13   15   31   37   39   33   28   28   20   29   42
      Gene278  185   33   79   74   74   80   36  143   57   32   83  165   54  143
      Gene279   24   35   33   16   28   71   20   37   27   39   39   23   28   41
      Gene280   22   20   55   33   29   37   32   36   40   28   12   22   18   63
      Gene281    6   27   51   32   17   23   19    8   18   14   26    7   21   12
      Gene282   10    3   13   17    8   14    2    7   17    6    6   29   27   19
      Gene283  321  265  513  447  280  310  303  359  447  233  288  379  377  304
      Gene284    8    8   18   12    5   10    5    6    5   14    5    6    8   10
      Gene285  293  178  239  179  147  136  177  296  188  122  108  247  194  344
      Gene286  127   89  139  119   58   92   77  116  111   75   56  112  115  142
      Gene287   37   32   63   49   32   35   39   42   24   15   28   18   38   47
      Gene288   16   16   15    6    7    5    2   13   13    4   24   11    5   19
      Gene289   78   46  112   94  107  100   78  152   62   65  101  121   93   79
      Gene290   47   30   59   66   50   46   34   62   59   36   56   43   53   79
      Gene291   10    3    5    8    3    6    4    4    9    3    1    3    9    4
      Gene292 1197  865 1261  805  856  997  843 1016  864  838  651 1095 1030 1196
      Gene293   33   13   18   16   11   18    8   14   11   20   19   11   32   19
      Gene294 2127  849 2150 2596 1364 2190 1482 1536 1537 1302 1249 1579 1995 2874
      Gene295   50   32   43   29   32   75   47   37   30   46   46   15   18   31
      Gene296    2    5    8    2    1    4    .   11    3    1   10    1    7    2
      Gene297   29   24   57  132   22   33   28   27   55   13   31   32   89   32
      Gene298    .    1    8    .    .    1    .    5    .    1    4    .    .    1
      Gene299   59   35   45   28   32   75   56   44   16   10   41   57   25   78
      Gene300    3    5    .    9    9    1    7    6    6    9    2    9    .    5
      Gene301 4308 2222 2805 3354 1810 3555 1812 3975 3006 2254 3082 3756 2971 3995
      Gene302    1    .    4    2    .    .    1    1    2    .    3    4    1    4
      Gene303   29   14   39   36   12   25   21   52   33   22   30   17   23   20
      Gene304    3    .    .    .    3    .    6    .    1    1    .    .    3    .
      Gene305   75   18   57   41   37   31   30   42   41   25   25   32   29   35
      Gene306  129  105  183  213  110  115  161  106  101   97  144  171  214  302
      Gene307   30   33   33   21   35   38   43   29   13   18   21   28    8   44
      Gene308    6   16    8   16   32   22   16   22    9   13   16    9   14   36
      Gene309  574  378  621  501  334  521  404  454  328  392  373  424  430  638
      Gene310   80   48   25   49   36   37   42   58   34   37   26   40   61   76
      Gene311    5   10    9   27    9   18    4    6    3    5   10   10   13    5
      Gene312   26   26   12    9   15   32   20   19    4   17   25    8   26   22
      Gene313   83  112  143  167  148  115   98  113   72  143  128   83  129  136
      Gene314    1    5    5    6    3    4    6    5    1    .    1    7    1    5
      Gene315    1    .    5    1    1    .    5    4    1    .    4    .    3    2
      Gene316   16    8   12   14   12    8   10    8    4    4    3    5   16   47
      Gene317    1    1    1   11    5    1    1    1    5    5    2    2    2    2
      Gene318   18    7   33    8   12   16   28   20   26   11   19   18   31   20
      Gene319    6    6    7    5   15   19    4    8   23    8   15    5   15   15
      Gene320   37   23   54   41   14   47   27   25   32   28   40   52   34   41
      Gene321   57   60   68   50   33   51   42   46   62   34   35   67   46   55
      Gene322    .    3    2    .    3    6    3    3    .    .    2    1   11    5
      Gene323  158   98  146   98   87  126   89  106  105   89   99  117  128  155
      Gene324    1    .    .    1    .    1    .    .    .    .    .    .    .    .
      Gene325  346  309  294  338  182  380  261  257  305  201  363  381  226  338
      Gene326    2    5    5    4    3    .    1    2    2    1    3    6    3    6
      Gene327  463  313  370  206  185  310  220  402  292  183  309  429  350  357
      Gene328  118  203  519  428  198  250  199  112  264  148  220   80  318  116
      Gene329  255  123   91  125   80   99   94  213   80   82   88  203  151  224
      Gene330  396  202  334  248  203  264  248  311  212  185  225  280  277  376
      Gene331   12    2   11   13   11   16    7    5   13    4   13    6   19   24
      Gene332   30    8   18   31   16   16   48   22   20   19   25   26   31   32
      Gene333   26   35   23   10   11   43   43   21   12   20   21   42   17   74
      Gene334    6    .    1    1    .    1    .    1    3    .    .    1    1    6
      Gene335   21   21   10   20   10   14   17   16    3    6   22   11   22   35
      Gene336  161  146  152  108   63  164  105  157  115   76  114  147  119  208
      Gene337   31   18    8   46    7    7    9   23   19   14   16   13   17   25
      Gene338    7   11    6    8    2    .    .    8    3    6    3    2    2    2
      Gene339   76   54   70   91   45   83   55   62   71   74   46   50   45   64
      Gene340   89   48   53   56   50   54   35   61   26   35   22   70   61   68
      Gene341    8   13   10   16    9    2    7    7   10    9    5   14    5   15
      Gene342   50   50   80   50   41   72   53   46   44   50   33   47   68   51
      Gene343    4    .    2    7    2    .    2    1    1    1    .    3    5    2
      Gene344   27   24   12   20   15   24   18   54    9   45   24   52   29   48
      Gene345   26   37   24   68   27   67   27   44   51   15   31   57   36   38
      Gene346    3    .    1    .    .    .    .    .    .    4    .    .    .    1
      Gene347   22   18   16   26   17   38   17   15   20   23   28   32   13   30
      Gene348    8    3    7    4   11    5    5   11    5    7    8   11    8    9
      Gene349  108   72  159   89   66   94  106   90  113   88  103  103  148  149
      Gene350   11    4    2    1    9    7   10    8    5    1    5    1    6    4
      Gene351   25   10   48   25   25   26   18   27   29    5   49   24   43   51
      Gene352   10    6    1    3    9   10   11   10    8    4    .   11    8   11
      Gene353    .    .    .    .    .    .    3    1    5    .    .    1    .    1
      Gene354  258  234  243  283  125  210  204  291  167  142  228  165  157  297
      Gene355   20    7   13   20   14   11    7   27   11   13   10   14   26   26
      Gene356  131   54   77   94   25   54   31   91   68   44   42   73   73  177
      Gene357   24   23   14   17   15   17   18   25    8    4    9    3   12   25
      Gene358   21    4   22    3    4   11   19   26   11   22   16   29   18   10
      Gene359    3    .    1    3    .    .    1    .    2    1    3    4    1    2
      Gene360    1    8    8    9    1    6   11    4   16    1    5    1    1    4
      Gene361    8   12    3   12    7   10   11    6   14    6    6    8   11    3
      Gene362   21   14   34   35   22   38   19   23   21   13    7    5   17   20
      Gene363   11   10   30   24   14   16   20   19   31    8   52    9   24    7
      Gene364   26   35   18   14   26   31   33   24   35   33   25   41   24   40
      Gene365   37   62   60   34   54   43   23   25   51   23   30   41   53   53
      Gene366  168  188  142  213  187  259  157  153  163  169  157  170  163  210
      Gene367   75   32   46   46   50   32   35   59   27   56   42   50   46   55
      Gene368    2    5    4    7    3    5    7    5    9    2    4    1   11    1
      Gene369    5   15    9    4    4   10   11    7    6    5    9    8    3    4
      Gene370  193  138  171  160  179  131  163  209  129  142  115  178  167  181
      Gene371   23   11   14    4    6   11    1   25    5    8    7   14    5   28
      Gene372  197  110  169  135  116  109  110  141  119   78  179  137  140  153
      Gene373   26   15   22   17   20   26   21   30   10   13   11   31   20   15
      Gene374   59   73  102   75   33   62   41   84   52   59   54   72   55   91
      Gene375   42   18    5   15   28   35   27   40    2   11   31   43   10   57
      Gene376   35   18   29   23   18   34   16   32   18   17   16   30   14   19
      Gene377   88   56   25   55   18   62   22   58   46   49   43   60   49   93
      Gene378   74   26   29   34   13   10   27   50   33   19   26   76   24   77
      Gene379 1215  785 1555 1100  847 1441  881  847 1069 1012  935 1025 1136 1384
      Gene380    3    .    4   11    3    3    7    6    .    2    2    1   12    5
      Gene381   31   19   30   16    5   14    6   15   12   11    3   13   18   25
      Gene382    1    .    1    1    1    2    .    1    .    2    1    1    3    1
      Gene383    1    1    3    2    3    2    .    1    3    4    3    2    1    4
      Gene384   63   24   26   31   16   40   18   30   30   48   22   36   30   34
      Gene385   35   41   39   55   44   61   49   39   24   34   30   47   52   67
      Gene386   33   43   49   39   17   34   49   29   37   35   35   63   26   43
      Gene387  214  137  142  127  107  149   83   95   54   76  183  139  146  212
      Gene388    1    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene389   21   13    7    5    2    6    .   28    5    5    2   26    5   23
      Gene390  116   81  113  110   94  133   64   98   54   75   82  124   99   85
      Gene391    7    7    9    7   12   13    4    8   12    1   10   10   11   17
      Gene392   10    6    5    5    6    6    7   11    5    4    8   10    7    5
      Gene393   80   46   72   92   74  127   67   55   94   74   86   45  110   95
      Gene394   19    8   14   16    2   12   24   21   15   12   17   35   12   31
      Gene395   10   14   17    9    9   20    5    7    2   16    8    2   11    8
      Gene396    7    9    3    7   10    3    3   15    9    7    7    1    1    5
      Gene397    9   10   24   14    5   22    9    3    7    6   15   13    8   24
      Gene398   64   22   51   51   24   63   43   53   59   34   23   38   42   53
      Gene399   38   32   71   33   44   36   22   37   47   27   30   34   42   36
      Gene400   27   17   22   32   11   27   17   20   18   11   20   21   16   24
      Gene401    7    5   15    5    3    5    3    3    .    2    .    4    8    6
      Gene402   69   71   54   56   41   91   66   57   60   36   76  121   32   77
      Gene403    8   10   32    9   18   17    4    7   15    1   10    2   18    6
      Gene404  156   65  117   94   44  104   67  122   97   55   78   79  104   91
      Gene405   15   15   39   23   13    3   14    7   14    5   12   33   28    6
      Gene406   24   10   35   11   16   20   24   33   24   12   17   29   28   38
      Gene407    .    .    .    .    7    .    2    1    .    .    .    .    1    1
      Gene408   28   27   71   52   14   21   19   20   51   15   16   20   54   22
      Gene409   18    5    2    2   16   18    6   12    4   12   10   12    6   11
      Gene410  223   82  280  158   96  201  118  147  189   71  116  138  168  193
      Gene411   10   12    8   13    7    8    2   10   12    9    8   13    8   11
      Gene412   74   46   67   67   46   60   57   70   74   32   59   28   72   69
      Gene413    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene414   98   81  155  209  109  118  112  161  182  102  155  160  144  174
      Gene415   25   14   21   24   12   12   14   20   15   18    5   11   15   30
      Gene416   50   13   60   46   39   54   28   46   50   29   21   57   43   52
      Gene417   10   13   18    5    6    6   13   22    5   16   14   10   13   14
      Gene418   29   44  155   77   42   62   65   43   96   63   87   47   73   52
      Gene419    1    5    2    .    1    1    .    .    9    1    .    1    1    3
      Gene420   47   21   28   23   31   20   24   35   21   13   17   40   23   46
      Gene421  153  114  232  106   66  138  102  126   99   68   95  114  122  137
      Gene422   50   12   30   26   16   28   38   31   22   20   15   16   23   18
      Gene423    .    2    3    1    1    .    .    5    .    .    1    .    2    2
      Gene424   16    7   25   12   11   13    9   10   12   10    6    7    3   24
      Gene425   58   35   85   55   58   93   57   60   58   35   32   82   33   73
      Gene426    4    2    4    6    9   13    6    1    4    4    7    5    5   14
      Gene427    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene428    4    2    1    2    7    3    7    3    5    8    2    7    8    7
      Gene429    2    .    6   10    2    .    2    6    5    2    3    2    3    .
      Gene430   86   61   88   76   33   45   34   65   70   34   46   34   61   88
      Gene431    2    3    2    .    2    3    4    2    6    3    5    1    .    8
      Gene432   15   27   26   30   19   40   14   23   39   18   44   29   23   15
      Gene433  749  539  790  664  476  747  608  819  632  386  610  712  648 1018
      Gene434    7    8    1    5    4    7    2    6    2    2    1    8    3    4
      Gene435    6    7    2    4    2    1    3    2    7    .    4    2    .    4
      Gene436  150   54   78  102   67   42   61  158   57   60   84   69   60   88
      Gene437   35   40   32   22   71   70   37   44   65   66   51   68   26   62
      Gene438   19    9   32   39    8   49   20   18   28   22   13   20   30   50
      Gene439   58   32   44   32   16   36   17   55   33   22   34   27   52   40
      Gene440   13   18   26   13   30   20   23   17   15   20   14   24   41   38
      Gene441  167   88   89   55   67   85   79  102   66   84  113   68   81  119
      Gene442  269  252  236  152  144  289  167  233  131  161  197  229  217  187
      Gene443    3    1    .    .    .    .    .    .    .    .    .    .    1    3
      Gene444   93   39   60   83   21   61   48   68   38   63   55   57   59   84
      Gene445   37   25   29   41   16   47   34   30   41   43   32   20   49   50
      Gene446   14    5   11   12   10    5    9   20   14    .   14    7   20   17
      Gene447    5   18   10    6    1   15    8    8    5    2    1    2    4    3
      Gene448   50   25   73   81   23   36    9   32   44   11   20   25   52   22
      Gene449 1281 1894 1387 1316 1189 1941 1457  771  895 1388 2058  770 1310 1491
      Gene450    4    4    8   17    3   15    9    7    1    6    3   12    3    6
      Gene451   33   22   49   52   17   46   30   20   24   25   24   33   43   22
      Gene452 1012  734  747  694  501  980  687  934  648  668  721  708  632 1266
      Gene453   65   25   64   50   27   74   35   53   33   29   33   56   32   42
      Gene454   33   19   32   21   11   13   16   55   30   14   21   29   24   48
      Gene455   37   12   40   21   14   14   16   25   10   11   11   11   24    4
      Gene456   14    7   11   13   11   14   15   14    4   11    7   15   15   26
      Gene457 5108 2677 3967 3960 2619 3967 2605 4223 2482 2341 3461 5676 3573 5696
      Gene458   78   28   87   60   33   69   63   35   74   31   89   46   72   68
      Gene459 1029  849 1160 1091  574 1375  672  923 1105  735  742  820 1088 1204
      Gene460   13   20   20   31   18    9    3   14   16    8   10   15   18   19
      Gene461   11   10   27   26    9   20   18   11   21   13    9   15   21   25
      Gene462    8    6   10   12    8    1   14   18    9    7    8   22    5   12
      Gene463   59   24   47   44   38   83   24   35   72   40   29   43   45   54
      Gene464  102   78   97   74   37   69   36  112   81   38   42  179   95   86
      Gene465   15   15   24   25   12   14   20   16   23   13   39   13   28   16
      Gene466   43   23   34   40   12   46   26   38   32   26   28   33   29   55
      Gene467   36   31   22   24   24   45   31   33   20   28   26   31   23   16
      Gene468    4    .    3   10    2    6    2    1    3    .    2    .    4    8
      Gene469    .    9    8    3    .    .    .    1    4    .    2    1    .    6
      Gene470    1    5    3    3    6    4    2    1    7    .    1    1    1    5
      Gene471   58   28   39   20   37   45   24   66   42   37   20   34   40   44
      Gene472  154   77  133  103   69  125  114  108  113   61  114  101  131  123
      Gene473  108   79   68   44   53   64   66   72   41   48   56   61   60   73
      Gene474   63   42   40   38   16   51   29   57   43   38   34   49   47   73
      Gene475   37   31   24   45   40   34   34   29   29   32   22   42   44   21
      Gene476  346  199  346  201  243  258  299  373  243  166  258  379  275  451
      Gene477   17   12   43   37   26   30   24   34   27    6   19   13   48   40
      Gene478    5   12    8    6   10   15   16   26   10   11    6    9   21   12
      Gene479    2    4    4    3    .    .    .    4    4    2    1    4    1    8
      Gene480    7    9   12   11   13    7   28    7    3   13   13   19    7   18
      Gene481    2    1    1    1    2    .    1    4    4    .    .    1    .    6
      Gene482   42   16   78   62   41   22   15   72   55   11   37   43   46   50
      Gene483    .    .    .    .    .    .    .    1    .    .    .    .    .    .
      Gene484    3    2    2    3    3    3    .    1    .    2    1    1    5    4
      Gene485   20    7    9    7    3   12   12    3    2    4    5    6   10   24
      Gene486   43   29   61   47   27   64   71   61   62   24   73   36   52   86
      Gene487  137   82  132   67   43   95   99   51   56  104  129  138   78  124
      Gene488   13   16   25   17    6   32   27   15   15    7    7   21    8   15
      Gene489  709  364  519  499  324  603  366  630  332  296  524  625  338  795
      Gene490  353  273  436  367  152  360  307  403  308  260  295  317  475  399
      Gene491   11    9   14   22   14    7   10   10    9    3   14   13   15   21
      Gene492  161   98   98   80   55  134   70   91   52   51   95  113   75  146
      Gene493   12   11   11   18    7   25   20   13    7   19   11   16   19    7
      Gene494   29   20   37   42   21   49   17   31   28   31   19   22   37   31
      Gene495 1405  808 1077  972  889 1100  964 1248  661  549  830  986 1004 1287
      Gene496   85   77   88  100   55   68   73   51   67   41   76   85  105  137
      Gene497   34   38   84   75   40   58   48   52   29   55   56   58   57   61
      Gene498   87   10   34   34    9   26   23   16   27   36   28   21   39   41
      Gene499    5    4    7    4    3    5   10   13    2    9    7    8    8    2
      Gene500    .    .    .    .    .    3    .    .    1    1    .    .    .    .
                                                                                   
      Gene1     37   86   46   59   64   44   43   41   49   56   36   53   38   46
      Gene2     39   24   11   35   13   14   28   23   24   11    6   35   33   28
      Gene3    726 1102  593  942  544  497  606  944  524  577  552  999  864  635
      Gene4     41  131   91   96   55   52   54   40   51   52   62  159   97   78
      Gene5      5   13   13    7    5    3    9   10    1    2    4   10    3    6
      Gene6     80  106   54   47   35   61   95   70   21   64   59  119   86   98
      Gene7     62  101   83   93   44   61   60   69   82   39   73   86  113  104
      Gene8     96  183   61   73   55  116  105   84   43  127   51  119   90  118
      Gene9     54   91   37   58   43   38   74   27   40   36   54   59   58   62
      Gene10    10    .   12    2    5    9    5    4    5    3    3    8   14    6
      Gene11    21   34   21   24   26   14   16   17   14   22   25   37   33   14
      Gene12    19   54   28   21   17   16   38   26   21   14   20   48   49   55
      Gene13    54   87   44   61   37   68   79   59   32   54   39   54   84   68
      Gene14    16   29    6   24    4    6   11   19   12   11   10   21   13   13
      Gene15    79  334  159  285  158  131  249  159  148  231  180  259  173  185
      Gene16    17   18    4   21   21   17   26   15   16   16   22   25   46   17
      Gene17    43   30   31   37   19   17   46   38   38   26   16   74   76   28
      Gene18    29   48   12   19   11   17   29   16   28   26   23   24   39   17
      Gene19    34   91   22   46   37   33   36   41   25   35   18   40   58   25
      Gene20     1    1    2    .    .    .    .    .    1    1    .    .    3    1
      Gene21     1    3    .    5    5    4    7    .    2    .    1    6   10    4
      Gene22   132  227   94  132   85  115  118  133   62  101  101  116  142  129
      Gene23  2099 3137 1822 2707 1710 1676 2262 1847 1796 1750 1341 2695 3545 2048
      Gene24    15   19   21   15   21   11   15   13    8    8   10   21   28   43
      Gene25    24   46   14   34   24   17   20   22   28   17   19   53   46   27
      Gene26    50   34   16   31   23   22   48   36   31   21   22   53   65   40
      Gene27     .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene28    26   29    5   19   17   22   16   18   32   15   23   36   37   24
      Gene29    83  126   74   80   22   63   70   59   73   28   40   72  102   78
      Gene30   212  211   78  165  229   95  115  156  138  203  107  132  271  220
      Gene31  1231 1790  927 1052 1354 1662 2312 1124 2090 1425 1324 3001 2583 1075
      Gene32    26  103   47   75   28   60   47   51   53   21   36   61   57   33
      Gene33     7   21    1    7    6   14   10    6   16    4    7    1    9    8
      Gene34    35   44   22   20   14   33   34   39   27   52    8   33   26   28
      Gene35   629  682  522  633  438  256  428  625  275  527  308  426  655  413
      Gene36     .    1    4    1    1    5    3    1    5    .   20   13    8    1
      Gene37    10   15   20   15   21    3   12    4    4   16   10    8    5    9
      Gene38    13   10   10   11   14   10   19   10   12    5    1   12    9    9
      Gene39   467  730  259  601  287  491  585  357  382  329  419  436  691  311
      Gene40     2    1    6    1    4    2    3    2    6    1    1    .   12    1
      Gene41    20   63   16   63   41   19   46   19   18   10   42   69   45   25
      Gene42     6    8    2    7    3   10   11    5    9    2    7   17    3   11
      Gene43     6   30    6    2    7   20   12    8    6    6    7   17   15    6
      Gene44     9   38   16   18   12   18   24    4   10    8   13   17   19   41
      Gene45    88  141  103  107  112  120  143   79   77   87   89  119  167   71
      Gene46  2473 3943 2209 3165 1620 2390 2133 2250 1686 1719 1855 3220 3122 1867
      Gene47     .    6    6    6    1   20    6    6   11   14    4   15    4    .
      Gene48    40   84   34   48   28   50   64   61   34   29   28   63   72   28
      Gene49    39   39   17   27   19   13   23   28   11    9   14   20   20   34
      Gene50     .    .    .    .    .    .    1    .    .    .    .    .    .    .
      Gene51    24   38   18   18   16   19   29   16   16   18   30   26   20   29
      Gene52     .    2    2    1    .    1    4    2    1    .    2    4    2    5
      Gene53    21   68   25   54   20   29   40   35   46   66   22   36   48   70
      Gene54    35   70   65   52   46   38   30   50   30   13   42   47   68   38
      Gene55     5    4    1    4    3    5    3    3   14    5    2    .    1    3
      Gene56     2    3    3    5    3   12    9    6    9    3    4    6   10    4
      Gene57    54   75   67   43   62   79   60   24   65   68   33  105  104   50
      Gene58    38   51   50   36   25   44   30   33   34   16   22   40   47   24
      Gene59    42   92   25   56   29   21   28   33   20    7   11   12   48   41
      Gene60     2    2    .    .    .    1    2    .    .    2    .    6    1    4
      Gene61     4    .    2    .    .    3    .    .    .    .    .    .    1    .
      Gene62    56   99   26   43   29   28   46   45   37   26   17   51   74   33
      Gene63   151  317  179  206  290  185  210  214  185  257  133  247  217  177
      Gene64   225  433  182  244  112  165  217  208  147  148  180  217  310  200
      Gene65    18   24   31   24   25   36   60   21   23   29   25   64   46   24
      Gene66   104  125   84   71   28   90  116   37   60   80   82   82  103   41
      Gene67   398  566  275  411  213  275  378  273  255  294  280  358  472  349
      Gene68     4    9    .    5    5    3    7    1    5    1    .    3    5    1
      Gene69     1    4    1    5    7    2    7    9    1   11    .    3    4    5
      Gene70   146  168   83   93  200   62  101   45   60  112   56   82  145   59
      Gene71    47   62   39   34   26   47   53   53   49   68   36   50   89   20
      Gene72    18   25    8   10    8   15   15   10   11    1   11   13   23   13
      Gene73     1    3    3    3    2    2    2    1    2    1    .    2    5    3
      Gene74  1578 2442 1857 2074 1217 1216 1456 1850  977  992 1241 1711 1969 1483
      Gene75    27   45   37   44   27   17   30   31   10   24   27   41   29   23
      Gene76    33   76   16   58   46   20   47   30   57   44   34   50   64   22
      Gene77    51   76   36   54   28   45   44   57   27   27   44   45   51   53
      Gene78    55  193   68  118  131  118  125  119   74  129   98  141  160  130
      Gene79   686 1103  703  633  581  693  832  923  625  544  509  858  943  734
      Gene80    56  127   57   63   14   51   72   80   30   44   70   92   59   69
      Gene81    38   14    6    8   16    4   24   21    6   11    9   17   16   11
      Gene82     1    2    3    .    3    .    .    1    3    .    .    .    3    1
      Gene83    73  112   61   79   59  100   96   93  123   45   93  173  175   83
      Gene84    31   71   48   59   48   35   17   38   16   38   34   23   66   39
      Gene85   774 1177  845  880  472  821  653  791  513  531  512  933 1108  841
      Gene86     .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene87    55   45   25   32   28   33   29   34   21   23   19   59   66   53
      Gene88   155  228  126  199   78   77  182  109  104   78  147  152  183  129
      Gene89    21   40   16   21   25   21   24   15   12   16   14   41   27   24
      Gene90   157  389  135   91  117  160  190  199   75  186  125  242  337  167
      Gene91    53   58   34   80   66   56   50   48   65   54   43   91   76   58
      Gene92     6   25    8   11    5   33   36   12   15   10   18   35   28   17
      Gene93    21   65   14   27   35   25   29   40    8   31   14   32   55   30
      Gene94    24   40   29   34   22   54   29   29   46   36   30   71   45   48
      Gene95     6   11   10   16    4   22   15   11    5    7   19   11   23   19
      Gene96     .    .    .    1    .    .    .    .    .    .    .    4    1    .
      Gene97     3    8    9    6    3    2    5    5   11   12    1   17    9    9
      Gene98     4    3    6    4    4    1    4    2    .    .    2    5    .    7
      Gene99     3    9    1    2    4    8    5    2   16    9    1    1    9    5
      Gene100  120  230   87  119   99  146  143  108   97  120   90  227  165  113
      Gene101    8   12    6   20   12   18    9    1   15   12   14   10   23   11
      Gene102   51   83   60   75   62   43   54   41   86   45   67   94   96   67
      Gene103   35   30   28   30   15   33   35   29   26   46   28   31   35   46
      Gene104    .    .    1    1    2    .    .    .    .    1    .    .    4    .
      Gene105    7    6    4   16    7   16   14    5   16    4    5   11   15    5
      Gene106   20   37   25   37   29   38   28   27   16   34   18   67   47   29
      Gene107 4463 7029 3700 4764 1750 3134 3230 3985 2781 1836 2402 3097 5191 4687
      Gene108    4    4    1    2    1    1    7    6    5    4    1    1    3    .
      Gene109  143  211  172  131  106  124  188  143  114  121   95  140  224  109
      Gene110  100  165  108  142   78   91  187  127   94  127   56  135  159   96
      Gene111  307  729  276  444  327  357  396  333  301  242  215  591  509  425
      Gene112    2   10    .   10    1    3    3    2    .    4    4    2    2    3
      Gene113   22   72   20   32   15   14   25   20   21   28   31   31   58   58
      Gene114   34   23   17   14    3   17   15   12   12    2    7    6   10   12
      Gene115   34   35   17   21   42   18   20   33    4   57   32   34   32   61
      Gene116   30   50   57   38   36   45   50   26   20   26   15   31   61   39
      Gene117  717 1060  592  763  638  747  836  678  555  553  730  933 1162  704
      Gene118    9   19    5    8    4    9   13    .   11    8   13   18   34    4
      Gene119    3    9    3    2   10    3    5    7    2   12    1    4    3    5
      Gene120   22   36   22   27   42   15   12   18   25   37   11   22   44   19
      Gene121    9    9    4   22    3   11    3    8    3    8    6   15   16    1
      Gene122   37   57   13   47   43   17   23   48   31   45   21   18   51   21
      Gene123 1989 3120 1644 1990 1141 1314 2590 1858 1421 1423 1101 2636 2701 2270
      Gene124   41   80   34   67   38   36   53   40   38   31   33   39   46   61
      Gene125 1812 3353 2166 2778  500 1774 1937 2117 1615  549 1159 2481 2739 1907
      Gene126   47   53   41   34   39   37   46   72   20   37   38   50   43   48
      Gene127  131  191  163  182  124  167  158  134   95  155  128  127  193  136
      Gene128   13   12   10    2    5    4   10    9    4    5    5    9   13   10
      Gene129  134  121  127  214  112  130  152  103  102  173   86  123  151  131
      Gene130   33   63   46   60   25   26   49   36   27   36   14   68   82   56
      Gene131   34   62   25   69    9   32   18   36   24   27    6   24   27   19
      Gene132   13   46   13   28   17   15   17   20   26   11   23   17   30   26
      Gene133    8   18    1    1    5   10    2    4    8    3   15    8   14    8
      Gene134   15   18   12    7    4   21   34   14   25    6   24   29   39   18
      Gene135   13   19   11   12    8   13   10   10   13   11    3   11   26    2
      Gene136  105  180  114  136  106  127  124  144  151   96  124  192  110  108
      Gene137   13   33   13   19    3   20    8   11    3   10    3    3    4   22
      Gene138   19   42   33   27   48   43   33   42   31   29   18   52   36   26
      Gene139   12   51   15   49   24   19   19   20   27   20   19   23   35   28
      Gene140   12   28   19   13   49    8   20   17   11   24   10   13   12   12
      Gene141   18   42   10   22   19   24   17   15   18   10    3   38   32   10
      Gene142  243  407  199  349  149  106   90  153  100  121   96  139  123  200
      Gene143    9   13    1    7    2    4    1    2    6    3    2    8   12   21
      Gene144    3   13    9    9   11    7    6   11    8    7    2   12    7    8
      Gene145   60   70   27   86   37   78   31   85   66   30   54   64   91   43
      Gene146  120  231  133  144   36  285  324  172  205   90  212  405  486   83
      Gene147   83  109   53   67   39   44   49   60   70   70   43  104   86   52
      Gene148  151  283  135  200  113  169  150  112  193  149  107  144  173  249
      Gene149    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene150    6   13    6    8   15    7    9   18   15    5    5   15   13    4
      Gene151  209  339  171  160   85  100  110  149  126  115   78  108  201  192
      Gene152    8   11    5   12    3    5    7    5    4   16    2    7    9   10
      Gene153    .   10    7    3    2    3    1    7    1    6    2    2    6    .
      Gene154    1    .    1    .    1    .    .    .    1    .    .    .    2    .
      Gene155   27   62   19   34   31   27   35   18   21   28   36   47   60   34
      Gene156   49  106   58   59   49   83   64   62   43   51   48   93  119   81
      Gene157    2    2    .    1    .    .    1    .    1    2    1    2    4    1
      Gene158   81  112   76   98   57   45   57   53   81   39   46  110  117   81
      Gene159   12   53   17   39   13   35   23   38   26   15   11   34   51   34
      Gene160    4   13    6   12    8   10    7   15   10    9    5    6   17    8
      Gene161   58   78   33   31   14   30   43   19   38   19   37   70   49   33
      Gene162    .    .    .    .    .    1    .    1    2    2    1    .    .    .
      Gene163   15   52    9   18    2    9   23   25    9   15    1   22   39   18
      Gene164    3    6    .    9    2    3    4    8    .    .    2    6    8    .
      Gene165  109  172   82  117   42  135  153  148  106   60   73  160   98  125
      Gene166   58   88   61   42   60   36   63   58   45   71   34   70   67   47
      Gene167   20   19   29   19    6    8   23   15    5    8   12   15   16   13
      Gene168    1    1    1    .    3    2    2    6    2    2    1    5    5    2
      Gene169    2    2    4    3    3    3    1    4    .    8    1    .    4    2
      Gene170    .    .    .    .    .    .    .    .    .    .    1    .    .    .
      Gene171  153  178  147  214  140  125  174  137  141  139  112  169  202  167
      Gene172   11    1    1   10    3   11    7    .    4    3    7   16    2    2
      Gene173   30   52   25   35   45   30   59   25   28   93   42   76   52   39
      Gene174   25   26   26   22    6   21   20   10   11   19   19   31   32   17
      Gene175    1    5    3    4    4    6    3    5    1    6    2   11    9    4
      Gene176    9   13    7    6    3   22   14    4    7    4   12   17   21    4
      Gene177 1857 2696 2194 2132 1205 1532 1739 1610 1728 1503 1638 2521 2605 1751
      Gene178    .    .    .    .    1    .    5    8    .    1    .    2    .    1
      Gene179   73  123   69   70   98   84   85   55   53   70   41  100  113   90
      Gene180   13   39   17   22   18   34   15   55   16   44   33   34   37   24
      Gene181    1    .    1    .    .    .    .    .    .    .    .    .    .    .
      Gene182   80  113   71   90   88   53   92   85   87   50   71  131  136  119
      Gene183   85   52   43   63   63   31   64   62   21   46   35   61   82   25
      Gene184   76  106   56   59   57   61   50   95   62   66   45   57   79   78
      Gene185   19   32   23   33   22    5   26   15   14    7   18   14   26   19
      Gene186    3   11    6    9    .   15   11    8    3    3    9    9   16    9
      Gene187   60   95   83   47   53   52   39   56   45   52   34   61   97   56
      Gene188    6    4    7    5    8    2   10    2    .    4    6    2    4    5
      Gene189   96  134   96  128   80   88  168   77   74  107   79  114  105   71
      Gene190 1278 2111  915 1479  852  962 1217 1111  818  723 1047 1601 1253 1267
      Gene191   25   12   14   22    5   15   17   28    4   13   26   27   17   13
      Gene192    8   16   11    4    7    5   14    .    7    1    1   13    8    8
      Gene193   19   27   10   17    4    7   26   11   11    9   10   16    7   10
      Gene194   19   17   25   14    6   18   26   21   11    7   18   28   34   20
      Gene195   24   31   18   11    7    8    4    7    8    7    9   13   17   13
      Gene196  199  395  178  218  166  144  190  116  160  288  127  232  309  205
      Gene197   29   18   16   28   19   39   21   15   10   17   27   20   53   29
      Gene198  119  171   83   95   69  131  106   84  101   77   67  150  153   80
      Gene199   17   51   26   37   28   22   12   23   37   18   18   37   35   23
      Gene200   32   31   12   31   24   12   18   25   17   26   19   39   17   16
      Gene201    8   25    6   14    3    8   14    1    .    5   10    7   14    1
      Gene202  976 2046 1159 1098  799  850  971  930  909  912  777 1310 1588 1073
      Gene203    9   19    4   13    9   21   26    9   19   12   15   20   21    5
      Gene204    .    2    2    2    .    .    .    .    .    .    .    .    1    .
      Gene205   53   66   70   35   71   52   41   72   52   45   57   62   77   54
      Gene206   29   70   38   41   72   55  110   35   70   79   50  150  121   35
      Gene207    6   14    3   14    5    2   13   20    7   10    4    4   16    3
      Gene208    8    2    5    6    5    3    .    4    .    6    4    3    4    .
      Gene209  245  318  181  247  106  223  176  203  175  210  209  329  265  185
      Gene210   52   92   41   59   42   45   59   63   43   68   51  130   53   68
      Gene211    .    .    .    .    .    .    .    .    .    .    .    1    .    .
      Gene212    9   39   10    6    8   12   16   10    7    1   15   25   16   39
      Gene213    8   14    4   15   17   11   10    8    2    9    3   12    6    3
      Gene214   29   39   19   27   12   21   39   25   11   30   12   42   40   26
      Gene215    2    1    2    2    5   10    1    .    6    3    .    .    2    1
      Gene216   41   31   12   33   32   10   27   34   10   17   23   74   50   40
      Gene217   47  107   61   70   35   51   70   81   42   46   45   53   86   52
      Gene218   39   55   38   45   30   55   68   32   66   39   40   80  105   56
      Gene219    4    4    4    4    3    2    3    1    1    .    1    7    4    5
      Gene220   91  108   71   68   67   77   92   46   65  100   50  106  123   83
      Gene221   33   25    6   26   16   23   12   12    7    6    9   24   23   26
      Gene222   41   21   31   15   13   16   22   14    7   22   23   40   21   27
      Gene223  134  119   92  133  127  114   87  155   97   92  113  150  144  118
      Gene224   23   26   37   28    7   12   30   18   11   13   23   31   20   23
      Gene225    7   15    6    7   18    4    5    4    8   16    4   16    4    8
      Gene226   22   22   28   22   28   26   27   27   14   19   12   25   27   16
      Gene227   21   28   11   16   25   22   40   30   17   41   19   26   48   37
      Gene228   58   61   23   62   36   52   39   39   53   40   51  100   65   60
      Gene229   66   93   33   64   41   52   59   68   35   39   37   92   97   49
      Gene230    3    7    2   11    2    3    9    5    4    1    4    6    5    1
      Gene231    5    6    7    4    4    2    6    4    .    2    5   10    2    6
      Gene232  133  225   90  152   89   85  156  104   63  113   74  125  191   96
      Gene233   18   27   10   14   11   11   14   24   11    6   10    8   13    8
      Gene234    4   31    5   11    1    4    3    5    5    2    1    8   13    5
      Gene235   31   72   57   67   42   25   57   42   24   36   65   63   68   41
      Gene236   23   17   13   18    5   12   19   16   11   12   28   32   34   17
      Gene237  113  158   81  129  140   82  103   97   58  134   59  140  134  105
      Gene238  157  172  122  113   81  150  113   77  102  109   68  135  215  133
      Gene239   25   31   24   34   21   23   14   16   23   21   19   36   46   20
      Gene240    4   16   10    8    6    7   11    8   12    1    9   14   17    5
      Gene241   33   51   33   62   43   41   39   41   24   39   46   50   66   64
      Gene242    1    1    .    .    2    1    2    .    .    .    .    4    1    6
      Gene243  209  329  216  316  146  182  188  170  164   97  110  250  135  228
      Gene244    6    5    6    6    6    3    3    2    7    1    2    2    3    5
      Gene245  163  178  103  147   84   76  121   89  106   63   43  151  165  115
      Gene246   27   26   32   19    8   23   39   24   12   18   22   19   22    7
      Gene247    1   21    8   17   11   22   20   37    9   10   19   40   31   20
      Gene248   21   14   13   10   15   12   14    9    8    5    4   13   16   14
      Gene249    .    .    .    .    .    .    .    .    .    .    1    .    .    .
      Gene250    2    4    .    1    .    2    1    .    1    .    .    .    5    1
      Gene251   19   36   30   41   12   77   51   23   35   24   22   43   53   27
      Gene252   25   56   39   49   38   21   27   16   30   58   19   29   41   32
      Gene253  131  181  185  208   98  172  167  164   99   91  128  296  245  170
      Gene254   55  101   79   94   38   65   45   69   45   43   65   95  124   68
      Gene255   50  117   97  108   74   98   70   95   70   80   59   95   90   64
      Gene256  143  172   94  125   54  114  117  136   84   60   66  170  164  170
      Gene257   17   47   16   23   14   24   12   10    6   26    9   13   26   17
      Gene258   12   19   36   27    3    6   14   10    5   10    5   27   26   15
      Gene259    .    .    .    .    .    .    .    .    .    .    1    .    .    2
      Gene260   92   98   58   80   45   57   61   55   49   44   45   76   54   62
      Gene261   21   68   12   25    9   27   28   24   17   11   29   27   20   20
      Gene262   17   23    7   11    .    9    8    7    3    3    4    2   17    1
      Gene263    7   19   15   11    7   14   12   25   34    5    8   26   17    8
      Gene264   44   31   23   24   36   23   42   53   35   11   19   50   43   22
      Gene265   10   19   21   18   12   12   27   16   21   15   21   28   18   19
      Gene266    2    2    1    2    1    1    1    2    4    1    1    5    4    2
      Gene267   46  129   72   73   49   51   56   60   50   57   64   60  124   47
      Gene268    1   18   15    3    7    6    5   10    6    8   12   10    4    6
      Gene269   15    7   10   15    6   16    9    6    2   10    4   11    7   10
      Gene270  192  270  142  244  107  171  189  230  126  102  117  200  271  157
      Gene271 1017 1680  993 1152  740  937 1154  847  861  933  995 1314 1357  971
      Gene272   92  166  121  103   87   70  110  103   77   68   77  105  155  105
      Gene273    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene274    3    .    .    .    1    .    1    .    1    .    .    .    3    1
      Gene275    1    5    1    3    1    3    2    2    3    1    1    1    6    3
      Gene276    8   12   19    4    4    4   18    5   12    3    1   16   13   13
      Gene277   49   49   30   41   28   35   26   44   28   15   46   25   45   32
      Gene278   47  105   68   55   93   46   50   39   81   90   49   32   80   76
      Gene279   26   24   24   44   14   22   29   33   48   25   10   81   35   42
      Gene280   27   69   22   37   19   37   25   20   28   15   16   30   38   31
      Gene281   19   39   13   29    3   30   20   23   12    7   28   30   54   11
      Gene282    3   11   11    9    4    3    4   13    6   14    3    8   11    3
      Gene283  359  656  288  446  244  210  312  463  290  272  272  452  498  437
      Gene284   12   14   13    9    7    6    2    7   14    5    8    5   11    8
      Gene285  213  293  185  258  157  141  285  141  120  282  114  269  266  160
      Gene286   84  157   81   88   59  100  104  119  112   71   96  107  140  105
      Gene287   39   56   38   25   33   26   34   45   34   35   36   53   75   33
      Gene288    5   23    7    8   17   11    6   19    3    7    9    8   12   10
      Gene289   57  110   67  103   42   87  140  106   59   77   56  139  127  114
      Gene290   69  105   49   96   38   55   26   46   24   31   40   43  100   68
      Gene291    4   18   15    3    1    7   10    3    1    4    2    9    4    4
      Gene292 1102 1449  797 1034  670  963  950 1113  806  853  592 1359 1509 1051
      Gene293   13   26   10   18    8   26   14   13   19   24   14   12   19    4
      Gene294 1893 3305 1744 1730 1298 1422 1674 1573 1251 1527  953 2131 2842 1873
      Gene295   41   58   34   43   17   38   52   34   35   17   35   58   52   69
      Gene296    2    8    2    .    3   11    3    1    6   13   11    4   11    3
      Gene297   71  104   66   94   17   26   25   45   14   15   14   25   29   56
      Gene298    1    .    1    1    .    .    .    .    .    1    2    .    .    1
      Gene299   32   56   18   26   33   17   51   45   39   25   28   40   87   31
      Gene300    7    5    6    9    2    6    3    3    3    6    4   20   10   12
      Gene301 2657 3954 2276 3078 2367 1905 3008 2678 2205 3157 2200 4477 3501 2968
      Gene302    .    1    1    1    2    1    4    .    3    .    3    2    1    3
      Gene303   17   38   27   30   19   11    9   24   13   15   22   23   39   35
      Gene304    .    .    2    5    .    1    2    .    2    .    .    .    .    2
      Gene305   38   87   36   71   30   30   31   51   32   21   14   42   72   18
      Gene306  115  222  132   97  164  188  137  112  192  127  113  216  209  195
      Gene307   36   38   12   45   34   25   38   24   22   23   35   49   59   20
      Gene308   16    7    8   24   13    7   10   10    5   31   12   14   23    8
      Gene309  409  681  371  498  294  430  552  480  349  423  416  754  619  363
      Gene310   35   58   48   41   46   34   58   56   35   55    8   67   84   28
      Gene311   12   15   13   10    2    4    8   11    8    2   13    6    9    9
      Gene312   22   24    7   26   15   15   20   10   26   19   29   20   41   33
      Gene313  116  183   79  135   87   93  135   96   95  146   85  149  217  111
      Gene314    3    5    3    6    6    2    4    2    3    3    7    4    5    6
      Gene315    .    5    .    .    .    3    1    .    2    1    1    1    4    1
      Gene316    9   10    9   17   10   17   18    5   13   12    7   13   13   12
      Gene317    3   18    4    4    2    .    1    .    2    .    2    6    3    6
      Gene318   19   31   31   39   14   14   18   19   16   14   17   24   25    1
      Gene319    6    9   12   18    7    6   18   24   11    7   17   23   13   30
      Gene320   55   98   56   72   22   18   35   29   33   30   43   38   30   42
      Gene321   37   63   45   45   35   55   59   51   33   31   24   59   58   41
      Gene322    2    7    2    2    3    1    1    3    .    2    2    1    3    1
      Gene323  119  202   93  125   81  101  140   91  118  112   78  139  173  110
      Gene324    2    1    .    .    .    .    .    .    .    .    .    .    1    .
      Gene325  396  525  312  324  275  286  266  411  261  232  282  354  314  319
      Gene326    5    2    2    4    5    5    4    4    2    1    7    1    .    8
      Gene327  272  340  216  289  219  229  292  204  246  345  255  406  289  260
      Gene328  455  551  341  423   60  211  310  455  162   64  226  376  370  400
      Gene329   88  119   78   92  111   67   68  122   97  161   96  165  150   86
      Gene330  248  425  314  337  234  185  249  258  263  277  253  319  389  238
      Gene331   21   25    3   22   10   10   15   13   13    8    9   12    9    5
      Gene332   25   37    7   32   11   16   24   10   28   22   24   24   37   21
      Gene333   21   17   16   25   36    8   19   36   15   38   21   63   26   15
      Gene334    .    3    .    2    .    1    1    .    .    1    .    3    3    .
      Gene335   23   25   21    7   22   10   14   23    9   10   28   33   21   15
      Gene336  142  235  106  106  115  156  133  110   96  115  118  225  165  141
      Gene337   19   31   21   31    9   25   20   11   27   26   14   20   43   16
      Gene338    1    3    .    1    7   11    5    .    2    5    3    4   13    2
      Gene339   61  122   58   91   71   58   76   59   45   48   48   67   94   52
      Gene340   20   52   42   63   65   34   51   49   20   33   17   67   69   51
      Gene341   14    7    5    9    9   13    8   16   13    4    8   25    9   10
      Gene342   87   62   62   73   23   55   61   90   97   33   57   71   72   46
      Gene343    .    .    1    7    .    .    3    3    .    2    3    1    3    .
      Gene344   17   27   11   15   31   17   20   19   13   20   21   33   36   16
      Gene345   31   49   51   28   21   32   51   43   30   43   38   35   58   51
      Gene346    .    2    .    1    .    1    .    .    1    .    .    3    1    2
      Gene347   25   28   24   19   25   28   22   19   13   21   17   40   45   20
      Gene348    4   11    9    4    5    1    7   10    3    3    6   18   11   14
      Gene349   76  247   83  113   80  106  162  113   77  116   74  140  125  108
      Gene350    .    4    7    6    9   14    8    5    3    .    6    9   14    2
      Gene351   37   42   41   17   31   20   14   17   21   22   19   49   73   19
      Gene352    6   11   12    6    3    4    4    9   10    3   11   19   13    1
      Gene353    2    .    1    4    .    .    3    .    .    1    .    .    7    1
      Gene354  176  286  209  261  144  173  224  227  165  183  202  313  203  213
      Gene355   16   41   11   21   10    7   17   12   10   10   12   23   22   22
      Gene356   76   91   82  114   59   35   49   56   34   68   52   68   57  112
      Gene357   13   44   23    5   26   12   13   11   19   24    5   31   21   14
      Gene358   24   17   20   25    6    6   18   20   14   17   11   14   30   10
      Gene359    1    .    1    .    .    1    .    1    1    .    2    2    .    2
      Gene360    8   14    5    7    8    2    5   14    6    3   10    9    7    6
      Gene361   11    5    9    7    7    7    3    9    5   11   10   16    8    4
      Gene362   25   54   24   33   13   23   27   22   22   24   10   30   35   26
      Gene363   27   31   14   21    5    9   20   24    8    4   22   15   20   11
      Gene364   21   36   20   36    6   21   37   24   44   23   28   34   34   22
      Gene365   44   81   50   51   49   45   51   46   67   27   31   82   72   57
      Gene366  252  246  144  207  109  153  192  196  178  187  103  219  282  196
      Gene367   62   72   46   66   45   60   49   68   33   23   66   87   89   53
      Gene368   10    8    6    7    .    6    5   13    1   10    2   11    6    7
      Gene369   19   16   14    .    .   17   12   11   11    1   21   11   11   10
      Gene370  184  285  146  216  121  170  168  181  157  146  125  304  226  149
      Gene371    2   11    5    .   15    8    8    7    2   15    3   14   14    4
      Gene372  142  229  145  154   98   79  126  137   92  124  142  163  207  121
      Gene373   29   21   34   17   10   27   25    8    5   10   12   45   56   10
      Gene374   46  126   55   89   39   49   95   83   54   39   53   77  143   86
      Gene375   17   15   27   16   15   33   36    5   23   25   14   37   52   28
      Gene376   17   29   15   21   13   12   16   10   22   14   14   30   27   33
      Gene377   31   39   37   36   65   47   46   24   36   58   27   80   66   25
      Gene378   26   52    8   49   32   39   25   31   29   41   21   83   38   20
      Gene379 1116 1443  943 1264  795 1260 1055 1035 1073  987  863 1543 1494 1263
      Gene380   11   13    4    6    5    6    1   20    1    .    3    1    5    5
      Gene381   14   24   12   13   15   14   13   12    6   16   16    8   32   23
      Gene382    .    9    2    .    4    .    3    2    1    3    .    1    1    2
      Gene383    2    1    1    2    1    3    .    1    .    1    .    1    6    .
      Gene384   53   75   46   40   17   29   18   23   23   27   28   60   31   41
      Gene385   38   95   33   39   47   32   25   35   12   31   32   66   43   27
      Gene386   48   47   41   47   36   30   43   39   39   43   25   59   69   53
      Gene387  130  172  157  175  104   95  165  144  157   80  103  151  149  113
      Gene388    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene389   13   13    3   10   10    9    9    4    9   18    5   23   23    1
      Gene390   91  139  104   88   75   70   85   98   75   95   61  133  122  134
      Gene391   14   11   14    9    7    6   16    8   14    1   11   27   20   12
      Gene392    4    5    7    4    7    4    6    3    1   10   10    3    6   11
      Gene393  100  212   61  138   39   46   57  115   74   51   62  138  131  125
      Gene394   17   18    9   22    4   14   16   20    5   14   17   32   13   16
      Gene395   14   30    4    3    5    8   10    8    9    8    3   14    6    9
      Gene396    7    6    2    5    9   13   13    5    6    7    8    1   10   25
      Gene397   22   15   11   16    5   17   38    6   33   25   14   19   13   23
      Gene398   32   89   60   45   40   56   49   40   57   33   31   54   80   36
      Gene399   48   90   55   50   15   40   63   31   38   24   46   44   62   72
      Gene400   13   41   25   18   22   12   26   24   23   22   17   41   37   24
      Gene401    8   11    4    6    2    7    3    .    5    1    5    3   17    4
      Gene402   89   61   85   85   41   66   76   85   47   30   62   94   91   52
      Gene403   11   11    5   15    .    8    9   13    8    1    7   15   22   19
      Gene404   75  114   88  100   60   62   78  106   41  104   85  111  124   74
      Gene405   24   44   21   28    5   23    3   19    8    8   10   15   17   16
      Gene406   38   41   28   32    9   10   16   20   20    9    6   27   29   28
      Gene407    .    .    .    .    1    .    1    .    .    .    .    .    .    .
      Gene408   32   76   45   93    6   26   27   41    7   11   19   31   19   45
      Gene409   17    7    3   14    6   19   12    3    1   13   12   13   42    4
      Gene410  222  203  142  210  109   97  163  190   98  109  112  174  171  174
      Gene411   11    5    7    7    1   19   20   14    3    6    6   14   13    9
      Gene412   30  123   68   65   43   54   73   59   83   50   50   71   75   74
      Gene413    .    .    .    .    .    .    .    .    .    .    .    1    .    .
      Gene414  142  251  144  231   95  157   87  162   83   79   83  156  289  155
      Gene415   22   22   16   41   12   13    7   10   13   10   14   30   17   32
      Gene416   38   48   46   52   32   15   34   36   34   47   21   48   49   23
      Gene417    9   15   18   16   10    9   16   13    4    9   12   32   17   10
      Gene418   88  156   56  116   33   92   59  151   49   41   48   51   95  122
      Gene419    .    2    1    .    4    .    .    .    6    .    2    4    2    4
      Gene420   33   32   18   15   18   20   20    8   50   25   31   20   48   24
      Gene421  104  214  124  185   90  146  135  120   88  118   73  216  140  153
      Gene422   22   23   18   38   18   22   21   42   20   26   11   38   43   30
      Gene423    2    2    .    1    2    1    1    9    .    5    2    .    2    1
      Gene424   16   20    9   12    9   32   13   14   12   11    9   20   18   12
      Gene425   44   96   43   65   59   53   90   37   57   43   55   77   60   63
      Gene426   12    5    2    4    .    2   12    6    5    4    8    8    8    2
      Gene427    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene428    8    7    3   12    2    5    7    5    2    5   10   12    8    7
      Gene429    1    1    3    2    5    1    .    4    4    4    1    4    4    3
      Gene430   52  140   48   58   56   52   43   63   66   52   44  103  111   65
      Gene431    1    7    .    3    .    4    .    2    4    1    2    1    5    1
      Gene432   32   27   12   11   14   18   27   32   30    8   25   27   30   12
      Gene433  880  895  626  870  587  530  728  754  539  530  487 1008 1021  871
      Gene434    2   10   13    3    6    7    7    8    8    2    1    2   10    1
      Gene435    2    3    6    .    2    2    4    2    .    4    2    2    2    4
      Gene436   43  125   92   67   92   83   77   74   33   68   35   87   96   76
      Gene437   50   84   61   49   33   70   71   33   36   24   72   69   90   42
      Gene438   13   32   49   24   10   42   46    8   25   17   26   32   27   24
      Gene439   35   71   36   43   28   38   57   47   39   41   25   36   34   55
      Gene440   17   29    6   39    8    6   11    9   24   34   13   14   18   34
      Gene441   40   82   59   71   58  109   70   72   62   87   64  148  137   63
      Gene442  207  270  146  276   73  145  203  161  194  136  160  291  259  199
      Gene443    3    .    .    .    2    1    .    2    .    .    1    1    .    1
      Gene444   55   98   56   62   67   58   68   78   69   61   62  100   83   54
      Gene445   33   37   26   46   24   30   44   17   44   21   22   46  103   38
      Gene446   15   29   16   18   12   11   16   11    5   12    6   23   15    3
      Gene447    3    4    3    9    1    5    8    9    .   12    2    7   18    .
      Gene448   30   67   50   62   12   24   41   65   33   20   17   29   33   51
      Gene449 1335 2486 1233 1568  683 1754 2306 1051 1619  810 1307 3283 3433 1168
      Gene450    2    8    7    7    5    2   15    4    3    4    1   23   12   17
      Gene451   69   55   20   39   17   30   44   19   19   14   21   28   62   27
      Gene452  596  841  449  602  744  684  835  534  793  697  872 1181 1277  559
      Gene453   30   81   38   57   44   15   37   58   36   13   43   54   78   41
      Gene454   18   29   39   33   15   10   10   23   18   45   27   28   19   28
      Gene455   13   37   38   25   20    7   24   19   22   22   23   34   24   19
      Gene456   12   12    8   21    6   12   17    8    7    6    7   10   15    5
      Gene457 3218 4865 2806 3164 3082 3304 4104 3351 2865 3750 2870 5693 5243 3406
      Gene458   61   90   63   76   24   59   78   85   38   71   44   76  134   51
      Gene459  972 1557  869 1029  647  746 1376  865  714  955  526 1189 1083 1058
      Gene460   15   36   21   19    9   24   13   18   18    8   22   24   19   11
      Gene461   18   30   24   28    8   32   15   24   30    4   31   30   21   30
      Gene462    4   14    5    3    8   16   13   10    9    3   14    4   12   17
      Gene463   43   80   43   37   28   36   72   69   73   42   52   62   85   62
      Gene464   83  173   89   48   69   54  101   83   62   92   95   91   91   88
      Gene465   17   26   32   12    5   26   18   19   12   16    8   10   33   30
      Gene466   33   53   31   45   32   49   46   44   21   27   17   47   55   42
      Gene467   26   34   26   46   10   37   31   28   31    7   20   76   47   12
      Gene468    6    6    4    5    .    4   10    1    6    3    .    2    6    3
      Gene469    .    1    4    1    .    .    1    1    .    3    .    .    .    .
      Gene470    2    1    1    5    2    7    5    1    6    .    1    .    5    .
      Gene471   29   35   33   40   35   30   21   35   34   40   31   43   47   40
      Gene472  118  200  131  141   64  137   96  101   78  120  119  143  133  110
      Gene473   49  108   47   46   44   38   52   60   38   33   71   48  126  107
      Gene474   27   52   19   59   48   36   48   23   23   31   35   40   39   21
      Gene475   39   79   55   48   16   45   39   38   27   19   59   73   77   33
      Gene476  303  432  254  269  172  181  196  276  260  200  175  332  350  339
      Gene477   30   38   22   27   13   20   15   22    7   10   20   24   27   26
      Gene478   15   13   13   14   10   10    8    6   15   17    6   23   12   32
      Gene479    2    3    7    9    3    5    1    1    3    2    .    7    8    7
      Gene480   19   20   24   13    6   19   17   11   14   21   11   10   28   16
      Gene481    1    3    8    .    2    .    4    3    .    1    2    3    2    7
      Gene482   61   29   35   62   34   37   43   62   46   46   28   31   46   49
      Gene483    .    .    1    .    .    1    .    .    .    .    .    .    3    .
      Gene484    1    7    3    .    2    2    2    .    1    .    4    5    2    3
      Gene485    8   13   14   23   14    .   10    6    7    4    5    4    8    5
      Gene486   98   68   69   62   33   36   75   90   53   57   29   81   74  101
      Gene487   83   93  104   84   76   92  120   86   62   83   81  139  172  201
      Gene488   27   34   10   14   22   10   14    6   12   11    9   26   34   17
      Gene489  557  718  464  644  409  414  585  405  450  423  410  664  528  463
      Gene490  352  415  301  370  235  236  364  328  226  235  203  385  456  326
      Gene491   23   11   10   31   12   12    9    9   10    8   16    4    7    9
      Gene492  123  173   80   68   58   69   97   91   67   97   59  122  117   68
      Gene493   18    7   16   15   17   14   10   31   11    8   10   19   21    9
      Gene494   32   19   34   22   36   20   33   21   26   15   38   28   46   29
      Gene495  989 1658  949 1054  861  922  980  921  801  802  858 1310 1204 1013
      Gene496   78  141   57  169   54   83  107  100  102   89   55  130  142   63
      Gene497   56   94   42   52   22   59   63   49   52   35   28   93   85   64
      Gene498   40   25   38   35    6   23   22   17   34   26   15   16   32   32
      Gene499   10    2    1    4    4    4    9    2    1    6    4    5   11    3
      Gene500    3    6    .    .    .    2    1    4    .    .    1    1    .    .
                                                                                   
      Gene1     60   54   57   47   53   38   53   47   38   18   24   48   42   61
      Gene2     16   28   34   26   16   19   26   17   24   21   19   10   19   39
      Gene3    527  589 1095  723  569  938  350  609  722  673  636  760  769 1038
      Gene4     56   75  111   96   66   98   51   65   65   31   57   40   78   91
      Gene5      5    4    6    5    3    6    8    .    5   10   10    2    1   14
      Gene6     53  105  112   75   58   71   50   69   55   50   39   71   49   95
      Gene7     79   37  111   70   47   64   57   54   83   69   52   57   51  105
      Gene8     77   98  125   78   48   80   84   73   83   63   60   55   56  125
      Gene9     63   49  106   53   55   44   43   66   46   35   38   44   56  132
      Gene10    10    9    8    7    1   11    5    8   10    9    4    5    1    5
      Gene11    17   18   27    8   10   10   27   12   16    3   13   31   30   43
      Gene12    19   23   38   31   26   32   31   16   58   22   12   29   13   88
      Gene13    55   91   88   64   63   74   43   46   46   38   45   75   59  114
      Gene14    17    4   15   14   11   12   20    5   12    4    2    7   14   19
      Gene15   192  188  302  229  136  195  156  199  235  157  174  183  188  167
      Gene16    16   17   19   17   12   15   11   13   12   16    4    8   14   23
      Gene17    32   37   41   35   29   42   23   20   25   37   31   29   32   39
      Gene18    23   16   24   33   11   15   19   29   20    9   11   33   51   37
      Gene19    43   33   41   39   27   31   19   42   44   19   14   19   22   54
      Gene20     .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene21     .    .    4    2    3    4    .    2    .    3    2    6    1   16
      Gene22   118  102  126   93  124  168  107  139  180   98  101  130  100  229
      Gene23  2283 2174 2688 2058 1675 1884 1723 1646 2108 1518 1716 1990 2331 2873
      Gene24    13   13   21   26   14   24   20   12   24   12   18   19   12   15
      Gene25    49   27   34   26   14   31   17   14   19   24   20   27   44   21
      Gene26    31   33   44   20   38   20   20   31   60   33   28   34   27   61
      Gene27     .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene28    39   31   28   15   19   13    6   25   24    8   12   30   21   33
      Gene29    48   54   85   46   58   70   34   54   58   33   39   36  107  104
      Gene30   273  136  205  316  119  135   86  168  136  126  146  266  157  240
      Gene31  1348 1573 1597 1680 1192 1394  696 1481 1124  604 1037 1403 1814 1441
      Gene32    47   41   74   42   39   43   22   41   49   44   24   70   33   63
      Gene33    10    6    9    6    5   12    2    7   20    7    5    6   13   30
      Gene34    39   46   44   66   24   31   19   33   10   28   63   39   40   33
      Gene35   400  508  836  567  367  563  387  516  649  472  334  552  435  751
      Gene36     5    2    7    4    1    7    4    .    2    1    3    .    2    1
      Gene37    20    5   28   27   10   12    7   18   31   21   17   18    9   11
      Gene38    25    9    7    1    4    7    9    6    6    9    9   13   13    7
      Gene39   456  436  793  360  399  522  325  365  378  530  275  392  495  559
      Gene40     2    2    1    2    2    2    .    2    3    2    1    2    3    4
      Gene41    42   36   47   18   15   49   24   15   37   21   16   20   26   44
      Gene42     1   14    1   12    3    8    3    4    5   12    .    4    1    7
      Gene43    11   13   15    6    3   13    7   12    6    5    2    8   11   15
      Gene44    20   20   12   33    5   13   10   24   12   10   10   33   29   29
      Gene45   107  119  148  122   76  121   99   81  112   90  103   69  113  166
      Gene46  2586 1966 2990 2439 1508 2930 1713 2104 2601 2291 1614 2243 2842 2669
      Gene47     8    6   13    4    .   10    .    6    5    7    5   11    9    .
      Gene48    46   53   64   73   40   59   30   36   72   40   32   51   51   57
      Gene49    24   26   32   15   35   33   15   17   33   23   15   16   20   52
      Gene50     .    .    2    .    .    .    .    .    .    .    1    .    5    .
      Gene51    19   16   17   15    7   42    7   36   17   25   11   26   16   48
      Gene52     1    1    9    1    1    3    .    3    .    1    .    7    3    .
      Gene53    41   34   60   29   25   50   34   58   34   28   31   37   33   28
      Gene54    34   67   87   41   41   32   42   23   55   40   35   49   42   56
      Gene55     4   12    7    2    6    7    1    1    4    1    1    5    .    1
      Gene56    18    6   10    8    6    1    4    2    8    1    4    5    8   11
      Gene57    59   86   78   54   32   64   28   39   36   55   54   43   74   49
      Gene58    30   29   52   43   12   21   28   29   33   21   26   22   28   39
      Gene59    17   20   57   30   37   48   35   10   33   26   18   18   25   81
      Gene60     .    2    .    2    3    3    .    .    2    1    2    1    1    4
      Gene61     .    .    .    2    .    4    .    .    .    .    .    .    1    .
      Gene62    49   17   76   44   26   67   30   26   48   50   32   46   14   71
      Gene63   286  176  259  337  148  214  159  263  169  171  242  249  218  178
      Gene64   181  190  335  185  138  258  149  102  175  164  111  170  213  273
      Gene65    24   50   39   61   11   21   17   47   34   16   43   37   26   26
      Gene66    76   69   63  117   43   47   59   96   23   43   74   82   51   71
      Gene67   235  232  567  350  267  294  238  286  307  232  248  309  288  503
      Gene68     .    3    6    2    2    .    .    3    .    2    3    4    6    1
      Gene69     5    3    6   17    6    3    7    3    3    1   10   10   13    8
      Gene70   202  115  102  139   83   92   80  166   87   98  133  102  110  123
      Gene71    29   65   58   34   34   35   38   33   44   14   30   50   36   84
      Gene72    21   11    9   18    9   20   14   14    4    8    7    6   12   28
      Gene73     .    .    1    2    6    2    1    5    5    2    1    .    .    1
      Gene74  1447 2040 2296 1256 1389 2072 1425 1308 1479 1459  945 1353 1375 3025
      Gene75    22   52   89   20   10   18   21   32   19   23   18   14   27   44
      Gene76    33   42   45   55   24   27   42   31   35   27   32   45   28   74
      Gene77    50   43   59   27   42   67   34   32   39   42   33   42   49   64
      Gene78   187  140  197  169   90  140   58  178   98   78  150  161  110  155
      Gene79   859  893 1095  720  576  769  513  714  790  635  631  642  694  970
      Gene80    89   51   87   58   52   53   37   69   34   30   24   39   24   90
      Gene81    10   12   23   11   23   14   14    6   15   11    5    6   23   13
      Gene82     3    .    9    1    1    1    .    2    .    .    1    1    .    1
      Gene83    85  145  125   73   57  101   51   61   52   40   73   77  154  108
      Gene84    44   48   67   37   37   39   43   44   39   37   36   31   30   56
      Gene85   808  630 1006  817  594  758  478  513  717  512  405  700  637  979
      Gene86     .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene87    78   22   65   42   26   24   29   27   22   16   25   26   36   62
      Gene88   134  107  126   89   98  156  101  128  143  113  103  134  152  259
      Gene89    28   11   44   31   25   18   15   30   17   25   12   30   22   29
      Gene90   166  165  273  211  180  261  173  113  185  171  139  167  205  291
      Gene91    62   53   71   63   35   65   49   68   56   46   52   82   47   73
      Gene92    14   22   11   20   18   14    .   19   17   20    6    6   17   30
      Gene93    35   36   52   30   23   22   19   26   20   28   30   22   19   21
      Gene94    66   74   22   72   14   54   15   49   32   26   40   25   40   62
      Gene95    12   10    7   19    9    3    7    8   14   24   11   14   10   16
      Gene96     3    1    .    .    .    4    .    .    .    .    1    .    .    .
      Gene97     3    7   13    5    3    6    2    7    1   12    2    3    6    9
      Gene98     8    .    7    .    1    1    3    .    .    4    .    .    7    8
      Gene99     4    2    5    7    1    4    3    2    5    5    .    2    4    9
      Gene100  101  151  211  152  145  192  132  143  145   73   87  127  116  180
      Gene101    5    7   19   20   22    5    5   17    1    9    7   12    5   16
      Gene102   35   71   88   84   53   76   50   63   77   78   49   85   49   88
      Gene103   24   40   79   32   31   14   15   32   39   21   34   24   38   34
      Gene104    .    .    1    .    .    .    .    .    1    .    .    .    .    1
      Gene105   14    7    3   13    3    2   11   11    .    .   13   17   13    3
      Gene106   33   32   43   43   29   39   19   44   21   24   12   26   23   56
      Gene107 1923 3055 7133 2666 3560 3798 2677 1604 4217 2633 1465 2193 2797 6723
      Gene108    .    1    4    4    .    1    3    2    2    3    4    .    3    4
      Gene109  132  194  259  154  130  146   92  124  125   96  117  132  124  186
      Gene110  119  136  167  113   84   95   93   95   94  120   56  134   84  203
      Gene111  405  443  494  525  351  415  265  380  376  306  282  346  404  675
      Gene112    4    5    9    4    .    5    .    2    4    6   12    2    9    4
      Gene113   13   11   55   21   36   29   21   25   52   33   26   19   56   35
      Gene114   11    4   33    9   35   20    9    6    8    9    9   10   13   13
      Gene115   58   20   36   55   29   12   24   36    9   10   32   49   11   56
      Gene116   47   51   69   39   41   34   25   26   34   18   21   24   24   58
      Gene117  716  717 1147  668  662  664  431  525  698  639  512 1024  670 1118
      Gene118    7   16    8   12    5    8    5   17    8    8    3    4   16    6
      Gene119    8    6    4   10    .    6    5    6    6    5   11   23    5    5
      Gene120   48   20   23   64   15    3   33   46   25   12   27   36    9   27
      Gene121   14    8   22    9    3   11   12    6    7    9    9   12    4    7
      Gene122   75   23   34   45   33   40   31   50   33   41   27   43   18   52
      Gene123 2039 1832 2399 1786 1863 2000 1446 1554 2025 1228 1393 1710 1955 2876
      Gene124   47   46   65   35   25   52   26   22   50   20    9   33   54   84
      Gene125  936 2034 3300  689 1643 2072 1524  568 1794 1205  453  544 1921 3884
      Gene126   33   46   86   55   29   45   19   58   58   23   25   27   66   58
      Gene127  207  153  218  130   89  186  110  149   96  163   70  127  118  252
      Gene128   13    3   12    1    6    5    6    9   12    3    6    5   18    9
      Gene129  107  179  170   97  130  150  105  145  157   78   95  164  156  178
      Gene130   55   61   90   56   45   46   34   29   35   42   18   70   38   91
      Gene131   27   30   38   31    6   38   32   24   30   22   17   13   13   22
      Gene132   20   20   27   23   21   16   20    9   17   12   15   12    8   25
      Gene133   12   12    6    5    4    4    3   12   10    4    5   10    9   10
      Gene134    5   12   21    8    6    9   17    3   12   18    4    7   23   25
      Gene135   11   12   22    6    2   11   13   11    8    9    8    6   10   15
      Gene136  103  121  143  134  108  163   95  101  115   53   93  122  147  236
      Gene137    9    1    7    9    5    2    6   25    6   12    4   15   11   10
      Gene138   62   29   32   27   23   16   46   41   45   24   24   26   31   55
      Gene139   17   20   29   16    7   22    8   36   22   17   30   25   12   28
      Gene140   16   15   20   32    6    8   12   43    9    5   14   12   10   18
      Gene141   21    8   20   21    9   19   21   15   14   12   15   27   17   11
      Gene142  125   88  283  163  127  179  104  110  203  137  144  126  141  287
      Gene143   12    2   11    4    4    6    6    5    5    9    5    3    9   10
      Gene144    4   12   12    7    9    1    3    4   12    1    1    7    9   17
      Gene145   35   51   38   45   45   34   29   55   49   45   13   49   37   46
      Gene146   86  288  104   96   89  115   81  108  141   77   74   67  251  204
      Gene147  107   43   95   50   52   63   48   57   49   34   54   39   63   68
      Gene148  223  143  293  138  147  254  160  111  138  148   94  161  171  256
      Gene149    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene150    7    6   13   17    3   16    2   14    2    8   10    9    3    9
      Gene151  126   83  174   92  160  219  132   78  153   93   93  138  144  312
      Gene152    9    9    6    8    4   13    4    9    6    9    3   13   12   10
      Gene153    7    3    2    7    9   12    1   10    2    5    3   15    7    8
      Gene154    8    .    5    .    .    .    1    .    .    .    .    .    .    .
      Gene155   51   53   22   30   26   36   16   32   36   23   25   43   53   30
      Gene156   78   58   48   51   36   76   70   33   60   75   41   47   54  116
      Gene157    1    3    4    1    .    1    1    .    1    1    .    1    1    6
      Gene158  122   67   72   71   58   89   67   50   95   56   86   99   88  123
      Gene159   31   34   24   39   17   21   18   39   18   15    9   21   28   35
      Gene160   10    3    6    7    2    6    .    6   14   11    6    7   12   17
      Gene161   42   41   55   28   20   36   32   31   34   24   27   31   41   60
      Gene162    1    .    4    1    .    .    .    .    1    .    .    4    .    .
      Gene163   19   35   20   34   16    9   21   15   19   12    9   14   16   41
      Gene164    2   11    1    3    4    5    .    1    5    .    .    4   10    8
      Gene165   76  106  138   72   75  106  134  107  132  106   85   55  119  161
      Gene166   41   51   75   80   40   62   40   51   49   34   34   45   68   69
      Gene167   17   26   19    8   14   18   11   16   20   16   14   14   15   35
      Gene168    7    2    2    6    1    .    .    .    2    9    .    1    5    8
      Gene169    3    2    1    3    1    4    .    5    8    1    6    2    2    3
      Gene170    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene171  178  153  231  172  134  138   82  152  133  102  114  126  175  257
      Gene172    7    4    9    5    6    4    5    8    3   12    .    3    3   14
      Gene173  124   25   57   71   25   33   16   45   27   23   33   89   47   38
      Gene174   17   18    8   19   18   36    7   10   17   12   14   17   19   15
      Gene175    8    1    7   17    9   20    .    8   11    1    7    6    8   12
      Gene176    5    7   28    8    8    2    2    2    5    7   30   14    9   23
      Gene177 2255 1682 2052 1276 1460 2277 1169 1269 2073 1782 1024 1828 1726 2830
      Gene178    1    1    3    .    .    2    .    1    2    3    1    .    2    1
      Gene179   67   59   86   86   45   56   56   67   87   57   55   59   67  103
      Gene180   33   22   52   16   29   12   22   28   23   14   21   15   21   20
      Gene181    .    .    .    4    .    .    .    .    .    .    1    2    .    .
      Gene182   76  122  125  127   42  105   75   91   66   61   69   98   75  131
      Gene183   50   49   45   15   44   86   55   45   27   43   23   58   52   78
      Gene184   71   54  112   52   33   67   63   46   68   53   18   38  101   78
      Gene185   12   20   31   18   17   21   11   15   27   22    6   10   25   30
      Gene186    8    4   27    7    7   10    8    1    7    3    5   14   10   18
      Gene187   48   63  125   76   40   93   61   51   88   63   33   30   39   85
      Gene188    6    7    2    6    1    3    3   11    7    4    1    .    4    2
      Gene189  128  104  118  115   86   99   46  104   82   67   56   67   99  123
      Gene190 1175 1208 1350 1011  805 1304  734  875 1029  772  769  844 1526 1582
      Gene191   15   14   13   21   11   21    6   26   26   13   15   22   25   44
      Gene192    7    3    3   15    9    .   12    3   18   11    3    6    5    9
      Gene193    8    3   16   13    9   21   11    4   20    8    8    2    6    8
      Gene194    9   21   39   13   16   17   16   34   13   16   11   21   17   42
      Gene195   17    8   18   15   13   20   10    3   10    5    8    7    2   28
      Gene196  306  186  302  354  195  219  108  326  183  135  210  310  193  220
      Gene197   21   23   47   24   22   15   12   14   25   12   36   30   22   28
      Gene198  112  135  121  138   74  102  102  141   66   77   48   99   84  122
      Gene199   26   22   26   40   42   33   11   18   25   17    5   34   21   52
      Gene200   43   21   16   23   10   19   17   14    4    9   17   15   26   51
      Gene201   19    4   11    4   15    8    8   15   14    8   11   13   27   19
      Gene202 1035 1335 1327 1211  749 1155  632  844 1039  801  747  914  927 1771
      Gene203   16   17    9   17    5   17    7   12    3    3   12   23   15   22
      Gene204    .    2    .    .    .    .    .    3    .    .    .    1    .    .
      Gene205   79   77   70   64   44   50   39   57   58   53   43   61   63   92
      Gene206   66  106   70  102   20   29   21  123   56   20   64   61  109   83
      Gene207   13    9    6   16    7    8    4   14   15    .    2   28    2   20
      Gene208    1    1   10    8    4    6    2    1    8    6    7    4    9    7
      Gene209  228  150  287  239  197  253  135  167  199  131  105  171  283  447
      Gene210   80   29   63   54   14   65   64   82   50   43   43   58   59   70
      Gene211    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene212    6    3   30   13   18   18   19   14   14   13   18    3   20   15
      Gene213   12   18   16   10   11   10   10   11    6   11   13    9    9    7
      Gene214   33   25   31   30   21   37   24   15   13   20   12   28   30   60
      Gene215    5    2    4    3    1    5    2    .    .    1    3    2    4   10
      Gene216   13   15   50   18   20   51   26   38   19   17   32   15   20   29
      Gene217   43   97   92   55   50   73   45   67   65   38   63   74   50   75
      Gene218   41   52   37   51   25   42   26   23   49   27   36   49   69   56
      Gene219    .   10    8    3    .    3    6    3    3    4    4    9   13    9
      Gene220  116   73  100  128   67   76   43  122   66   53   93  120   90  133
      Gene221    9   26   28   17   24   21    4   13   22    9   19   28   17   21
      Gene222   20   12   39   13   16   22   18   17   28   15   13   16   18   36
      Gene223  133  119  234  105   74  149  128  140  100   84   79  108  126  206
      Gene224   18   28   27   36   14   41   16   13   33   16   17   30   14   40
      Gene225   11    7   15   20    7    3    6   13    7    5   11   14   10    6
      Gene226   21   27   25   37   23   28   16   27   39   13   12   19   20   33
      Gene227   14   20   29   14   25   24   17   21   15   17   15   24   25   42
      Gene228   49   36   71   68   34   59   30   58   33   38   33   35   25   91
      Gene229   87   96   75   69   52   87   35   47   65   64   48   43   89   83
      Gene230    5   10    5    4    .    .    3    1    3    1    .    5    5    1
      Gene231    2    1    4    5    3    6    6    4    2    3    4    9    2    3
      Gene232   97  139  210  110   74  112   44   83  105  123   92  117   87  178
      Gene233    5    8   12    5   10   21   13    6   18    9    3   13    8   21
      Gene234    6   31   13    4   11   12    7    2    3    5    7    2    4   12
      Gene235   52   44   56   54   51   59   28   64   50   22   34   54   31   95
      Gene236   42   14   32   22   27   31   28   20   12    7   17   30   19   15
      Gene237  221  107  183  214   67  113   69  225   78   62   97  394  107  151
      Gene238  125   67  159  179   72  116  113  118  114   97   82  111  105  168
      Gene239   21   23   30   43   29   35   19   24   27   14   18   44   30   33
      Gene240   11   14   11   18   18    7    5   14    9    5    7   14   23    7
      Gene241   70   49   62   46   54   35    9   50   41   20   59   69   51   86
      Gene242    .    1    1    .    1    .    3    1    1    3    1    4    .    1
      Gene243  125  122  390  176  211  281  161  198  184  165  105  124  126  323
      Gene244    6    .    4    6    1    6    .    .    2    8    2    4    .   11
      Gene245  103   57  177   60   82   87   80  115   68   45   90   51  121  102
      Gene246   19   18   41   17   15    3   18   13   18    7    5   29   17   21
      Gene247   17    9   38   11   14   29   17    8   19   11    2   20   33   58
      Gene248    8    6   13    7    4   17   16   14   10    3    7    8   14   14
      Gene249    .    .    .    1    .    .    .    .    .    .    .    .    .    .
      Gene250    3    .    3    9    1    4    6    .    1    5    .    1    1    2
      Gene251   27   41   48   25   15   27   15   13   22   19   15   31   29   29
      Gene252   34   59   25   50   10   31   10   42   31   22   44   77   40   40
      Gene253  145  106  150  128  119  134  104   93  136  117   95  143  162  308
      Gene254   95   63  106   68   46   72   44   73  105   48   32   60   58  155
      Gene255   92  102  115  111   65  109   43   68   92   48   66   54   49   83
      Gene256   95   84  196  101   98  156   77   73  122   80   61   64   84  240
      Gene257   19    6   25   29   22   15    7    9   19   11   15   17   26   39
      Gene258    7   20   14   11   13   10    9    2    7    2    8    7    3    7
      Gene259    .    .    .    .    .    .    .    1    .    .    .    .    .    1
      Gene260   57   68   67   31   41   67   65   57   84   44   47   87   50  101
      Gene261   10   22   37    9   12   34   16    6   17    6    7   13   25   35
      Gene262    5   12    4    4    5    4   10    5    1   10    3    5   15    6
      Gene263    9    5   16    6   14   11   16   13   12    7    7   11   14   17
      Gene264   20   31   54   54   34   27   35   34   37   32   27   27   42   50
      Gene265    7   18   29   23   17    9   23   13   19   19   12   22   17   23
      Gene266    .    3    .    1    2    3    1    .    .    1    1    1    1    3
      Gene267   71   69   52   61   62   77   42   82   63   31   44   68   54  120
      Gene268    3   15   18   11    3    1    1    4    1    3    .    7    9   12
      Gene269    9   11   16    4    9   12    9    5   18    5    2    7    8   18
      Gene270  235  209  247  182   99  172  128  164  179  115   91  165  198  374
      Gene271 1127 1128 1287  953  822 1093  691  972 1066  787  730  917 1330 1750
      Gene272  154   92  102   70   79  104   70   96   68   78   56   68   79  123
      Gene273    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene274    2    1    .    .    .    1    .    1    .    3    3    .    2    5
      Gene275   18    1    8    .    6    8    3    .    4    2    2    2    6    4
      Gene276    4   13    8   23   11    8    7    4    3    6    7   13    4   33
      Gene277   52   49   26   51    7   23   22   26   29   22   36   20   31   48
      Gene278  142   52  123  154   53  100   70  114   94   41   77  111   68  105
      Gene279   20   19   67   14   21   29   28   27   30   18   22   29   33   38
      Gene280   26   33   48   48   35   40   31   23   38   31   13   26   36   36
      Gene281    7   23   25    7   15   35   24   14   17   24   11    5   11   25
      Gene282   26    5   19   16    6   18    6    2   17    3   15   16   10    9
      Gene283  347  309  553  337  324  471  263  314  366  282  255  240  336  692
      Gene284   13    6    7    8    4    2    4    6    2    5    8   15    7   10
      Gene285  227  164  286  310  167  175  167  243  237  149  199  331  233  345
      Gene286   69  111  234  102  106  205   66   82   70   57   79   70  128  162
      Gene287   48   44   47   27   35   35   35   32   25   18   16   36   46   59
      Gene288   28   22   21   14    7    7    3   15   16    9    3   15    5   17
      Gene289  111   48  150   60   84   69   88   91   47   75   49   66   83  129
      Gene290   59   34   76   52   49   95   44   39   63   74   24   24   48  111
      Gene291    5    3   15    4    4    1    .    1    2    3   10    2    4    9
      Gene292 1051  822 1534 1073  648 1076  817  804  952  908  659  982  905 1307
      Gene293   15   21   40   24   15   12   18   25    8   10   15    8   16   47
      Gene294 1352 1770 2093 1732 1245 1984 1216 1460 1580 1461  998 1499 1800 2591
      Gene295   47   53   53   35   38   28   46   12   33   32   15   22   44   33
      Gene296    8   10    7    6    2    5    5    1    9    1    .    3   12   10
      Gene297   24    4   86   26   75   54   32   24   64   25   19   23   23   89
      Gene298   12    .    .    1    .    3    2    .    1    .    2    2    .    2
      Gene299   46   59   52   35   19   33   16   41   35   30   40   27   34   42
      Gene300    6    7   20    3    2    2    .    3    9    8    8    3   14   18
      Gene301 4081 3114 3621 4819 2362 3113 1966 3356 2701 1991 2236 3354 2601 3431
      Gene302    1    .    .    .    .    .    2    4    .    .    .    .    3    2
      Gene303   27   21   43   24   30   28   16   13   29    4   20   16   38   23
      Gene304    .    1    2    .    .    .    1    1    1    2    .    .    1    2
      Gene305   32   38   87   57   34   39   34   45   31   28   26   38   33   74
      Gene306  110  112  221  150   97  204  101  134  132  119   70   86  124  227
      Gene307   41   28   33   43   34   43   29   21   27   21   22   99   25   73
      Gene308   17    6   24    9    6   15   13   15   16   14    3   26   12   20
      Gene309  515  428  616  403  366  456  373  521  375  409  322  461  378  684
      Gene310   68   32   69   72   40   36   41   35   37   28   30   60   48   56
      Gene311    2    3   22    5   16   16    8    4   10   16    2    4    9   13
      Gene312   23   28   29   13    4   13   14   22   26    7    7   32   18   46
      Gene313  170  129  180  146  112  159  111   79  118   81   84  107  101  250
      Gene314   10    4   13    2    5    5    1    2    7    5    7    .    6   11
      Gene315    1    6    2    .    1    2    2    2    5    .    .    .    2    2
      Gene316   11    3   21    2    9   14   11   14    5   12    4    4   18   13
      Gene317    9    .    9    5    4    3    1    1    9    5    1   13    3    6
      Gene318   11   18   45   30   37   18   12   16   16   18   16   12    9   42
      Gene319    4    9   26   13   21    6    8    7   12    7   14    7   14   25
      Gene320   39   59   34   68   39   43   28   24   36   28   39   38   30   64
      Gene321   39   38   68   68   31   75   39   42   30   42   43   56   61   85
      Gene322    3    2    4    4    3    2    1    4    5    .    .    1    1    3
      Gene323  170  162  180   99   73  121   81  147  116   94   76  107  115  219
      Gene324    .    .    .    1    1    2    1    .    2    .    5    .    .    .
      Gene325  297  259  396  346  239  252  250  208  293  359  191  206  374  582
      Gene326    4    6    4    4    1   11    1    6    3    4    3    2    2    6
      Gene327  344  262  406  374  155  316  176  196  249  251  237  323  301  406
      Gene328  115  199  806  120  334  622  458   75  312  299   96  103  157  650
      Gene329  172  133  106  155   57  120   44  114  108   68  122  242  109   81
      Gene330  257  305  315  294  204  424  180  210  234  227  159  257  249  468
      Gene331   10   12   23   15   10   17    6    6    8    9    7    1    6   28
      Gene332   25   14   24   31   15   20   10   27   17   12   28   22   22   26
      Gene333   23   46   37   32    8   31   22   34   28   24   23   32   36   22
      Gene334    .    4    7    4    .    2    3    2    3    3    2    1    7   10
      Gene335   15   19   32   21   19   14   23   19   11   17    7   24   13   15
      Gene336  138  120  179  106   91  109   90  100  116   92   80  102  106  211
      Gene337   12   16   45   18   22   29   15    5   17   12   14   38   29   45
      Gene338    3    6    4   15    1    .    3    3    4    4    2    5    5    8
      Gene339   45   42   69  107   55   92   58   58  105   48   46   72   68   69
      Gene340   91   18   37   94   32   37   35   73   46   32   45   57   43   53
      Gene341   14    8    3    7   18    8    5    3   10   12    4    9    3   11
      Gene342   44   52   69   71   55   59   39   58   36   69   54   48   21   79
      Gene343    .    .    3    .    .    2    2    .    1    .    1    1    8    1
      Gene344   39   21   44   45    9   20   10   24   19   14   33   44   22   30
      Gene345   13   42   55   32   47   29   14   42   33   38   26   44   49   48
      Gene346    .    2    .    .    .    .    .    2    .    2    .    .    1    .
      Gene347   22   29   16   28   11   10   20   19   22   14   22   22   28   34
      Gene348    6    3    9    7    9    6    5   11    3    4   12    .   15    5
      Gene349   85  102  149  131   52  118  107   90  110   51   79   99   99  139
      Gene350   12    6   10    8    3    7    2    3   13    2    2    6    3    6
      Gene351   24   40   34   41   32   25   11   35   19   14   12   24   27   46
      Gene352    9   12   11    4    7    8    5   10    1   11   13   10    2   21
      Gene353    .    1    2    2    2    1    2    2    3    .    .    .    .    .
      Gene354  165  250  295  248  121  214  164  184  245  147  153  175  215  338
      Gene355   15   22   25   16   11   29    8   17   21   18    8    8   19   29
      Gene356   82   31   90  116   34   82   54   84   74   46   47   82   42  152
      Gene357   13   16   23   14   11   20   13   21   13    4    8   23   18   36
      Gene358   14   27   21   26   12   21    9   37    2   15   13   14   18   25
      Gene359    .    .    .    1    1    .    .    .    .    .    .    3    2    1
      Gene360    4   10    5    9    7    8    3    7    3    1    6    4    4    2
      Gene361   10    4    3    9    5    4    1    2   24    .    4    2    1   11
      Gene362   17   18   37   18   11   37   19   12   28   30    9   13   10   34
      Gene363   12   33   34    4   14   42   24   11   26   45    6    4   20   49
      Gene364   52   19   49   30   32   12   11   21   32   13   24   33   16   26
      Gene365   44   33   79   35   49   78   38   44   39   26   26   35   51   86
      Gene366  196  239  258  266  134  287  184  141  188  150   91  181  193  333
      Gene367   70   52   55   41   43   65   72   37   59   41   33   53  100   68
      Gene368    .    7    5    5    7    .    4    .    4    3    2    5    2    4
      Gene369    6   16   17    .    9   17    5    3    4   10    3    .   22   23
      Gene370  209  158  206  182  136  203  108  118  210  111  110  174  189  298
      Gene371   28    2    7   32    5    3    7   15    9    3   13   24   15    5
      Gene372  144  120  172  171   95  161  118  138   85  118   94   95  115  216
      Gene373   30   29   41   29   22   33    6   44   33   12   20    8   20   46
      Gene374   92   78  134   69   40   80   61   64   41   58   43   63   61   68
      Gene375   33   48   25   29   13    5   15   23   13    8   13   26   21   24
      Gene376   25   29   20   15   13   25   11   29   10   12    9   11   36   21
      Gene377   67   61   52   64   26   65   25   86   37   27   40   76   57   56
      Gene378   63   24   21  131   35   24   28   44   52   33   34   26   19   19
      Gene379 1144  979 1371 1330 1016  864  716  991 1001  848  685  944 1250 1632
      Gene380    3    1    8    1    6   10    1    1    7   13    .    2    4    5
      Gene381   21   24   17   12   12    9   17   11   11   12   12   23    9   25
      Gene382    4    5    8    2    2    4    2    2    2    .    .    1    1    3
      Gene383    .    2    2    3    .    .    .    .    .    2    5    .    2    .
      Gene384   28   31   36   32   23   41   23   20   27   37   12   70   37   72
      Gene385   30   29   38   28   27   31   14   70   29   31   21   33   45   60
      Gene386   44   24   43   52   19   37   42   46   15   43   20   36   32   40
      Gene387  145  149  158  143  108  102   75  142  132   52  154  116  111  239
      Gene388    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene389   22    2    9   35    5   21    2   10   11    9   14   22   10   14
      Gene390   74   64  159   99   78   81   65   82  113   69   35  105   95  131
      Gene391    9    8   22   11   14    3    8    8    9    1    7    9    8   15
      Gene392   15    4    1   10    5    8    6    1    4    1    2    8    2   11
      Gene393   56  118   86   79   61  232   49   47  101   93   49   21  104  223
      Gene394    9   14   23   15   15   17   11   10   12   15    7   16    9   32
      Gene395   12    9   16   15    2   15    5   13    7    6    4    7   12   17
      Gene396    5    8   13    6    6    4    1    8    5    4    1    3    2    2
      Gene397   12   13   30    9    3   10    8   12   10   14   15   24    4   17
      Gene398   38   58   64   44   25   46   15   57   43   27   22   53   35   82
      Gene399   21   76   44   36   34   38   39   14   48   49   15   28   51   67
      Gene400   12   20   28   44   12   23   13   16   16   23   18   16   21   29
      Gene401    1    4   12    9    4    6    8    1   12    5   13    2    4    7
      Gene402   50   43  102   82   45  104   80   46   49   37   41   41   68  117
      Gene403   13    5   22    8   14    9   15    4   18   10    9    7    7   12
      Gene404  114   99  126   93   73   72   79   92   64   57  105  137   83   94
      Gene405   10   13   42    5   32   46   27   12   15   34    8    4    8   37
      Gene406   30   34   33   20   17   49   13   14   29   12   28   14   28   40
      Gene407    .    1    1    1    4    .    .    .    .    .    .    .    1    1
      Gene408   28    9   52   20   50   42   61   16   64   42   15   18   27   80
      Gene409   14    5   16   13   10    5    5   13    6    9   12    5   15    5
      Gene410  159  146  271  132  170  172   90  110  170  135   88  119  132  279
      Gene411    5   10   13   10   20    5   12   12   24    2    3    6   21    5
      Gene412   59   93   89   51   54   98   63   44   84   62   46   72   63  117
      Gene413    .    .    .    .    .    .    .    .    .    .    .    .    .    3
      Gene414  181  126  172  163  124  124  139  100  190   96  107  145  120  171
      Gene415   24   13   21   28    6   41    3    7   10    9   16   47   36   11
      Gene416   27   52   73   36   43   35   29   31   49   33   37   54   36   67
      Gene417   24   17    6   13    6   23    5    2    8    9    4    7   25    8
      Gene418   43   44  156   51   74   76   42   60   85   81   30   42   53   75
      Gene419    4    6    1    .    .    .    3    5    2    1    .    3    2    5
      Gene420   31   22   23   15   27   20   21   19   27   22    6   23   22   62
      Gene421   66  116  221  105   95  107   83   76  132   90  114   91  122   93
      Gene422   40   27   40   35   17   36   24   14   35    6    9   20   13   41
      Gene423    .    4    2    .    5    1    1    .    1    .    1    .    1    8
      Gene424   31    5   18   30   12    7   12   17   22    9   11   11   10   10
      Gene425   79   41   72   43   45   74   43   74   55   44   39   50   48   80
      Gene426    .    8   10    9    2    6    1    4    4    1    6    3    1    3
      Gene427    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene428    3    5   15    2    5    3    8    3    9    4    5    .    7   10
      Gene429    .    2    3    1    .    7    .    4    4    1    1    4    .    5
      Gene430   72   67   88   78   93   71   62   41   54   62   16   43   46   83
      Gene431    3    2    3    3    3    4    .    1    1    1    2    2    3    1
      Gene432   12   15   41   17   27   19   18   16   20   30   13   16   33   37
      Gene433  689  581 1292  694  480  876  471  679  780  573  497  735  752  847
      Gene434    6    7    1    5    3    1    1    4    3    5    .    2    4   14
      Gene435    3   14    7    4    3    1    4    2    1    5    1    2    1    5
      Gene436  168   70   91  126   63  110   45   84   61   37  138   97   69  130
      Gene437   26   91   74   42   44   49   17   38   39   29   41   33   75   63
      Gene438   21   33   43   24   24   32   19   31   26   20   22   30   19   53
      Gene439   44   41   40   32   33   44   20   50   36   11   24   39   51   49
      Gene440   26   47   23   15   27   17   26    8   21   13    4    5   25   34
      Gene441   77  113   81  140   53   61   47   81   71   75   51   92   94  122
      Gene442  183  162  225  195  165  189  169  183  177  180  139  221  144  285
      Gene443    1    .    .    2    .    .    .    2    5    .    1    1    2    7
      Gene444   55   67   87   83   53   68   47   73   42   53   47   53   40  100
      Gene445   26   42   47   19   20   52   20   27   40   25   28   21   45   53
      Gene446   12   15   32   14    5   20   25    1   10   11    .    7   16   13
      Gene447   15    6    2    1    2    2    7    4    7    7    3    8    5   10
      Gene448   20   36   87   35   25   50   70    8   48  109   14   19   23   71
      Gene449  841 2253 1431  760  982 1614 1137  881 1344 1336  560  903 2349 1841
      Gene450    7    7   15    4    3    5    3    6    5    8    2    1    4    7
      Gene451   29   42   71   31    9   41   41   26   65   32   20   32   28   74
      Gene452  899  893  791  890  615  591  507  841  478  479  686  683  949  737
      Gene453   28   37   68   48   45   48   51   52   55   48   28   27   55   70
      Gene454   31   12   26   37   18   44   24   35   32   15   19   25   29   27
      Gene455   28   28   35   18    8   28   17   24   16   14   16   19   16   21
      Gene456   23   12    8   15    6    5    7    6    8   18   17   21   20    5
      Gene457 4350 3269 4973 4531 3056 3647 2661 3545 3210 2538 3122 4133 3091 4772
      Gene458   91   76   78   89   92   78   46   74   68   20   51   73   52   85
      Gene459 1180 1020 1166 1177  687  984  684 1037  807  621  742 1108  902 1340
      Gene460    6   14   20   23   21   14   13    5   21    2    8   21   16   28
      Gene461   12   26   27   19   46   26   20    9   18    6    9    9   18   26
      Gene462    6    5   16    3    4    2   13   13    8    2    3    6   15    4
      Gene463   63   55   89   57   24   57   35   60   68   49   24   63   51   86
      Gene464  118  122   99  102   58   48   60   74   55   93   69   63   91  119
      Gene465   12   42   19    8   10   46   18   11   18    4    4    5   19   36
      Gene466   33   61   46   42   48   52   44    7   34   21   19   39   43   50
      Gene467   21   43   38   30   30   18   17   13   32   23   17   35   41   25
      Gene468    3   11    6    3    6    4    6    3   11    6    2    3    1    6
      Gene469    .    2    .    .    1    5    .    4    .    1    .    .    4    2
      Gene470    3    1    4    5    .    1    .    1    .    1    5    3    .    6
      Gene471   41   33   58   53   42   30   20   43   29   30   28   51   49   59
      Gene472  115  111  159  110   71  125   78   64   90   84   67   75   81  169
      Gene473   73   61   81   77   51  102   60   56   70   33   63   78   98   64
      Gene474   34   43   44   83   28   25   14   58   42   35   35   23   30   23
      Gene475   14   47   71   16   21   49   40    8   47   35   14   23   42   63
      Gene476  347  307  444  234  276  379  240  227  278  222  207  243  303  401
      Gene477   23   30   41   14   16   24   13   16   16   15    7   33   12   48
      Gene478   20   14   19    7   11    4    8   13   31   16    6    9   10   18
      Gene479    5    4    2    8    3    7    4    1    .    6    1    3    1    3
      Gene480   19    8   20    5   26    9    5    4   18    9    8    8   12   19
      Gene481    6    1    .    2    6    7    .    2    .    3    1    1    .    4
      Gene482   74   34   47   42   30   60   39   28   49   37   58   92   33   80
      Gene483    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene484    4    3    5    4    4    .    .    2   10   11    1    3    3    1
      Gene485    6    7   20    8    4    6    7    6    7    1    2    8   15    9
      Gene486   62   42  100   17   69   65   82   33   81   35   56   51   41  113
      Gene487  124  116  188   84   75   94   93   59   64   64   89   96   92  136
      Gene488   18   11   23   24    5   10   13   12   11    6   11   18   17   31
      Gene489  642  559  556  679  369  485  376  541  553  282  464  578  415  807
      Gene490  249  287  379  410  289  337  249  214  354  285  199  306  312  437
      Gene491    6   16   19   12    7   17    8   24   22    9   10    5   12   11
      Gene492   87   82  172  105   65   87   84  116   83   68   54  103  101  115
      Gene493   13   13   19   14    6   28    3   10   13   11   22   28   39   11
      Gene494   32   31   45   10   26   34   15   19   34   28   22   17   20   61
      Gene495 1352  973 1377 1227  636  961  807 1008  777  742  855 1127 1065 1689
      Gene496  107  110  105   65   60   85   89   57  107   91   90   65   93  154
      Gene497   78   44   55   55   47   52   40   51   35   40   36   62   50   55
      Gene498   48   25   25   23   12   32   13   18   66   21   23   17   19   36
      Gene499    5    3    1    7    .    5    3    .    1    1    4   10   10    3
      Gene500    .    .    5    .    .    2    .    .    .    .    .    1    1    .
                                                                                   
      Gene1     39   19   84   28   51   49   65   55   35   31   52   53   54   58
      Gene2     25   11   37   31   17   20   15   17   17   24   19   27   28   33
      Gene3    449  357  723  862  448  539  531  549  720  559  824 1127  871  535
      Gene4     81   61   82   82   50   80   77   44   88   74   34  113  123  104
      Gene5      3    2   11   12   10    3    2    2    5    9   11    7    3    7
      Gene6     48   44   83   42   49   50   78   67   67   49   59   65  102   89
      Gene7     54   82   56   77   81   61   63   47   93   98   91   66   58   76
      Gene8     41   61  101   87   44   82   56   45   80   67  100  118   69   77
      Gene9     55   60   68  114   55   42   78   35   48   35   60   69   78   32
      Gene10     2    5   12    2    .    2    3    7    6    7    6    4    6   11
      Gene11    15   10   37   33   22   17   23    4    9   14   18   28   17    9
      Gene12    35   32   20   19   64   26   31   14   29   59   49   34   43   29
      Gene13    36   45   72   61   66   51   74   25   52   66   75   87   60   57
      Gene14    10    4   24   15   11    3   18    8   20   15   22   21    4   10
      Gene15   143  176  196  150  163  168  202  146  242  177  277  182  245  136
      Gene16    26    8   18   18   35    5   23   12   22    9   13   21    5    8
      Gene17    32    5   40   31   44    9   86   22   33   22   38   59   38   31
      Gene18    24   21   17   30   17   13   18   15   22   13   17   23   33   26
      Gene19    22   23   34   35   27   22   38   16   47   26   25   41   31   28
      Gene20     .    .    1    .    .    .    .    .    .    .    1    .    .    .
      Gene21     .    2    5    .    2    .    1    1    1    2    3    3    1    .
      Gene22    86   70   95  149  135   69  199   61  144   83  109  158  149   90
      Gene23  1564 1210 2585 2253 1812 1385 2414 1157 2024 2104 2287 3349 2143 1754
      Gene24     9   15   17   34   18    5   13    5   19   17   19   28    7   10
      Gene25    19   24   35   43   21   15   38   14   33   17   35   42   54   25
      Gene26    25   32   34   52   38   38   44   28   48   19   42   56   21   43
      Gene27     .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene28    12   19   20   31   18   20   15   13   15   17   20   27   12    8
      Gene29    63   71   57   89   77   60   62   42   65   55  116  105   82   57
      Gene30   158  160  248  244  149  102  161  112  245  139  127  229  168  122
      Gene31  2609  806 2618 2404 2377  826 2798  804 1111  703 1347 2907 2104 1178
      Gene32    31   48   71  111   65   46   47   23   41   40   34   70   65   26
      Gene33     3    2   11    3   15   11   20   11    4    3    3    9    7    7
      Gene34    18   30   37   32   27   34   53   14   48   23   44   53   35   40
      Gene35   394  401  601  548  346  420  345  316  460  538  637  478  396  351
      Gene36     1    6   13   10    6    .    4    2    7    1    1    5    1    .
      Gene37     3    7    6    7    6    9    9    4   14   10   16    7    2   23
      Gene38    14    3    2    9   15    7   17    1   11    5   13   17   10   10
      Gene39   320  438  454  493  390  396  553  306  330  398  617  549  427  429
      Gene40     2    3    1    1    1    .    .    2    3    1    .    2    3    5
      Gene41    18   10   52   24   25   25   22   16   18   19   16   46   12   50
      Gene42     2    2   22   12   16    6    5    5   12    7    8    8    5    5
      Gene43    15    6   30   15   16   11    9    1    7    9    5   31   16   11
      Gene44    16   14   16    6   19    5   13    7   16   10   31   16   17    8
      Gene45   105   82  161  109   96   79  136   87  112   95  109  153   97   96
      Gene46  1815 1901 2754 3637 2469 1568 2457 1668 2473 1982 2816 2746 2386 1515
      Gene47    11    4    4    9    2    8   11    .   14    4    2    9    3   12
      Gene48    34   34   64   72   42   55   55   37   48   32   51   82   66   45
      Gene49    14   22   37   18   23   21   31    9   34   28   28   43   23   33
      Gene50     .    1    .    .    .    1    2    .    1    .    .    4    .    .
      Gene51    12   24   28   22   32   14   22    7   21   16   16   37    8   14
      Gene52     .    .    4    3    9    1    .    .    1    3    2    2    1    1
      Gene53    53   19   41   32   45   36   67   13   33   30   26   36   64   37
      Gene54    33   36   33   45   48   31   45   33   41   39   25   29   39   33
      Gene55     1    .    6    .    7    1    4    4    5    2    4    3    .    3
      Gene56    11    5    5   16   11   17    6    4    7    4   11    9    3    2
      Gene57    46   43   78   54   44   81   69   44   45   60   81   93   81    9
      Gene58    14   17   25   57   48   16   57   22   37   38   31   59   57   28
      Gene59     9   44   28   26   13   27   23   11   42   51   57   30   18   20
      Gene60     1    .    5    1    3    2    .    .    2    .    4    2    2    1
      Gene61     .    2    .    .    .    .    .    .    .    1    .    .    .    2
      Gene62    36   51   48   54   25   29   37   25   31   56   42   69   40   31
      Gene63   134  125  198  174  173  184  201   96  190  112  147  235  166  158
      Gene64   210  199  309  199  174  140  221  132  232  255  169  258  263  226
      Gene65    46   34   37   36   34   15   62   26   27   22   33   60   44   18
      Gene66    55   49   91   90  114   37  102   40   51   91   61  118   66   48
      Gene67   248  199  422  305  308  290  371  196  337  281  364  465  343  322
      Gene68     6    4    1    6    6    .    4    .    .    1    8    3    3    .
      Gene69     3    4    9    4    8    5    3    2    9    8   15    7    3    .
      Gene70    67   77   87   98   73   69   87   98  103   90  110  107   68   86
      Gene71    17   40   78   49   53   48   72   33   41   38   66   75   48   38
      Gene72    13    7   15   32   16   11   20    6   15    7   11   22   17    5
      Gene73     .    2    1    3    1    2    5    .    1    1    5    1   10    .
      Gene74  1039 1320 1725 1641 1523 1017 1667  886 1795 1529 1638 1535 1340 1436
      Gene75    29   24   34   30   45   18   43   27   19   38   32   39   23   40
      Gene76    38   26   54   37   51   11   26    8   50   51   41   68   27   29
      Gene77    26   38   43   54   38   25   40   22   52   61   26   50   65   35
      Gene78   104   71  109  110  163   47  171   59  126  111  152  166  121   79
      Gene79   495  477  712 1002  737  532  786  305  816  740  896 1021  828  555
      Gene80    33   50   55   54   35   44   90   39   61   69   40   55   61   40
      Gene81    12    2   17   15   11   10    5   13   14   13   25   26    6   27
      Gene82     .    .    .    2    1    .    .    3    .    5    5    4    1    2
      Gene83   130   57  153  218  108   84  153   54  139  108   63  159  175   79
      Gene84    53   29   47   37   52   22   43   35   51   39   65   57   28   37
      Gene85   538  548  973  924  772  519  638  493  940  740  687  927  745  619
      Gene86     .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene87    24   46   41   57   70   21   68   32   37   25   65   27   36   37
      Gene88    65  131   97  135  138   82   73   67  128  137  173  235  133  102
      Gene89    14    9   24   19   11   16   36   10   38   23   22   37   24   16
      Gene90   115  216  245  167  217  125  208  156  206  110  150  233  203  153
      Gene91    57   37   98   77   60   28   76   23   43   33   45   65   48   53
      Gene92    25   12   34   24   14    7   23    5   22   10   19   13   11   13
      Gene93    21   23   18   18   34   21   35   10   19   26   36   35   16   14
      Gene94    45   25   51   61   54   13   85   22   41   43   34   96   69   28
      Gene95     6    4    7   16   11    5   16    4   13    3    9   14   16   13
      Gene96     .    .    .    2    .    .    .    .    .    2    1    .    .    1
      Gene97     7    5    6   12    7    .    5    .    3    2   15    6   11    8
      Gene98    12    2    3    3    3    1    4    2    5    .    2    3    1    3
      Gene99     3    1    6    4    1    1    .    2    4    5    3    3    2    5
      Gene100   94   70  123  158   98  115  119   72   80  122  162  162  169  131
      Gene101    .    7   13   16    6    7   24    9   18    4   13   17   12    3
      Gene102   68   48   71  117   57   53   95   37   69   81  103   92   55   36
      Gene103   29   25   41   52   26   23   42   18   19   49   54   53   39   45
      Gene104    .    1    2    1    .    .    .    .    .    .    .    .    .    .
      Gene105    8    1    1   13    7    5    8    5    8    6   12    8   25    5
      Gene106   39   30   39   49   23   16   37    9   44   50   58   57   70   19
      Gene107 2200 3239 3647 3611 2437 3269 3592 2922 4750 3986 4913 3937 3401 3532
      Gene108    .    1    .    .    .    1    .    2    1    2    3    3    5    .
      Gene109   97   99  244  158  151   93  192   85  155  133  158  175  181  134
      Gene110  121   71  160  132  110   62  128   70  186   62   86  184  154   91
      Gene111  297  204  393  522  439  338  373  228  347  430  497  469  444  371
      Gene112    4    3    4    5    5    5    7    6    6    3    4    5    1    3
      Gene113   31   19   43   46   32   20   36   31   62   35   74   50   28   27
      Gene114   10   29   15   19   17   23   10   15   24   22   24   10   13   11
      Gene115   12   16   18   29   30   12   31   12   19    7   16   28   45   19
      Gene116   39   30   64   53   28   47   52   23   47   24   41   68   70   31
      Gene117  579  532  702  878  600  589  979  435  928  679  831 1101  792  579
      Gene118    9    7   16   29   11    8   20    2    5    5   12   22   11    2
      Gene119    6    3    5    4    4    7    2    1    3    3    1    4    8    2
      Gene120   14   13   29   30    6   18   17   15   24   16    6   30   17    8
      Gene121   11   12   10   14    7   10    5    5   10   13    2    6   11    6
      Gene122   22   14   36   49   27   19   34   14   27   15   35   25   32   39
      Gene123 1713 1353 2142 2842 1937 1545 1926 1023 1752 1682 2344 2391 1949 1636
      Gene124   51   54   38   54   42   20   42   30   19   32   62   74   56   37
      Gene125 1451 1807 2354 2495 1809 1337 2465 1250 2203 2143 2208 2308 2563 1824
      Gene126   25   44   46   25   41   59   47   40   58   22   51   46   60   42
      Gene127   83   99  179  197  228   75  157  148  136  123  187  204  190  173
      Gene128    2    5    5    3    4   14    5   11    8   12   16   14    4    6
      Gene129   72   69  201  156  157  147   99   59  186   97  100  161  136  137
      Gene130   40   30   37   74   37   30   73   25   67   39   73   58   48   88
      Gene131   24   13   25   29   28   25   23   24   36   24   24   21   29   35
      Gene132   16   12   28   30   31    8   13    8   21   11   24   23   15   16
      Gene133    6    2    7    5    6    3   13    5    3    7    7    9    4    6
      Gene134   20   15   14   31   16    9   34    5   14    9   28   26   23    8
      Gene135    5    8   22   21   13   10   19    4   12   17    6   22    8   12
      Gene136  102  107  150  140   92  111  122   50  157  123  123  189  225  142
      Gene137   16    7    2    2    1    9    8    5   12    6   10    2   15    9
      Gene138   39   23   38   11   65   29   39   35   52   23   40   51   28   21
      Gene139   30   16   23   40   24   11   25   21   15   14   10   31   22   22
      Gene140    5   21    8   14    7   16   12    2   19   33   16   23   11    6
      Gene141    9    9    5   20   25    6   24    5   32    9   16   40   11   16
      Gene142   63  114  176  185  104  147  118   87  211  153  241  173  113  122
      Gene143    4    6    2   12    1    5    1    1    2    9    4    3    9    5
      Gene144   17    9   15    9    6   12   13    4    4    5    7   15    4    3
      Gene145   35   22   37   44   52   63   66   22  108   47   69   53   46   38
      Gene146  183  120  307  263  256  120  369   89  125  166  108  363  301   99
      Gene147   68   41   78   97   80   22   64   54   81   48   86   98   76   68
      Gene148   91  123  194  275  164  144  151  155  124  186  180  280  174  135
      Gene149    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene150    7    1    8   10    5    3    8    4    7    2    3   18    1    7
      Gene151   96  112  151   97  112  116  140  172  155  149  249  233  123  139
      Gene152    3    4    1    8    .    5    6    .   21    4    7    2    3    8
      Gene153    3    8    3    1   10    1    3    1    9    6    1    4   14    5
      Gene154    .    .    3    3    .    .    2    1    .    .    .    2    5    1
      Gene155   45   12   48   28   29   30   32   19   26   43   21   60   32   19
      Gene156   71   45   98   90   69   46   69   33   45   35   56   80   81   39
      Gene157    .    .    2    .    .    3    1    .    1    5    1    5    3    .
      Gene158   76   54   68   55   66   72   94   58   61  101   84   71   88   52
      Gene159   24   14   23   17   37   20   25   20   40   10   44   33   29   31
      Gene160    5    4   10    3    8    5   19    1   11    2    8   10    8    8
      Gene161   54   28   42   36   50   25   36   25   55   33   50   83   40   28
      Gene162    .    .    .    .    .    .    .    .    .    .    .    1    1    .
      Gene163   15   20   16   20   11    6   28   10   23   30   16   35   19   18
      Gene164    1    4    2    8    4    3    3    3    2    2    8    2    4    2
      Gene165   87   91  140  174  132   83  109   57   83   90  156  152   80   74
      Gene166   45   43   87   59   61   37   37   43   53   49   46   75   61   45
      Gene167   15   15   12   34   34   21   13    8   29   22   15    7   16   19
      Gene168    1    .    4    2    2    .    5    4    1    2    2    1    4    .
      Gene169    2    1    7    .    9    .    3    5    4    1    1    4    1    2
      Gene170    .    .    .    .    .    .    .    .    .    .    1    .    .    .
      Gene171  152  113  117  177  207  145  185   93  143  156  169  199  129  128
      Gene172    7    2    5   11    7   12    8    3    1    7   13    9    8    4
      Gene173   19   41   38   52   40   28   66   14   33   31   35   49   40   14
      Gene174   10   23   17   28   25   36   14   15   30   12   18   42   22   22
      Gene175    9   14   10    8    7    8   10   11    4    3    6   11    3    6
      Gene176   14    8    6   13    9    8   11    3    5    4   14   12    8    9
      Gene177 1556 1265 1877 2300 1687 1068 1782 1031 2607 1541 1857 2684 1686 1723
      Gene178    .    .    2    2    .    .    5    .    1    .    .    .    .    .
      Gene179   58   55   82   81   48   47   66   56   74   80  113   89   76   66
      Gene180   33   18   20   21   21   25   34   11   29   33   46   44   21   19
      Gene181    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene182   87   59  174  105   95   99   77   58   93   71   95  133   95   89
      Gene183   25   22   34   65   66   30   57   25   29   50   29   74   58   29
      Gene184   46   38   91   80   79   73   77   50  115   72   63  106   84   67
      Gene185   13   15   12   19   17   10   15    3   30   11   16   33   23   14
      Gene186    4    7    7   11   12    7   18    5    4    4    6    9    5    5
      Gene187   48   32   56   88   94   85   36   34   40   53   79   74   68   44
      Gene188    4    2    1    4    6    4    3    .   12    6    3   10    6    .
      Gene189   40   61  156   85   80   94  136   47  101   95  119   85   94   74
      Gene190  993  890 1187 1655 1214  849 1246  678 1508 1204 1216 1385 1389  853
      Gene191   19   13   15   31   33   23   22    8   17   15   40   18   19   25
      Gene192    4    1    9    2    2    2    5    6    5    5    4   10    3    2
      Gene193    9    7   26   13   15   12   11    4   18   12   15   21    8    7
      Gene194   12   22   28    5   22   19   19   12   22   18   14   34   29   21
      Gene195    7   30   13    3    2   11    9   14   13    6   13   15    7   19
      Gene196  112  135  196  284  175  160  241   81  267  179  186  282  184  126
      Gene197   11   32   20   26    6   28   29    7    9   36   17   40   27   11
      Gene198   87   85  131   84   63   98   95   91  113   49   92  123   80   77
      Gene199   34   15   32   29   31   26   30   12   43   15   38   49   29   17
      Gene200   24   18   19   19   29   16   18   11   21   10   15   42   33    3
      Gene201    7    5    7   12   10    2   27   15    8    5   12   14    7    2
      Gene202  695  643 1410 1221  964  772 1007  533 1101  916  973 1302  921  764
      Gene203    4    8   12    4   23   12   30    2   17    6    4   17   13    7
      Gene204    1    .    3    .    .    3    1    .    .    .    .    1    .    1
      Gene205   47   48   31   48   64   61   64   27   64   28   72   63   40   59
      Gene206   59   52  103   87   82   43  105   37   74   32   46  124  125   28
      Gene207    7    3    9    2   10    2   15    .    7    5    7   11   17    5
      Gene208    2    6    3    4    1    7    1    2    2    3    9    5    2    .
      Gene209  180  183  366  207  232  132  245  141  231  246  156  331  254  225
      Gene210   47   30   67   57   48   38   52   47   69   73   79   81   88   43
      Gene211    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene212   16    8    5   24   21    6   18    7   16    6   11   28   12   14
      Gene213   14   13    5   14   21   16   17    3    3   17   18    7   14    6
      Gene214   26   23   24   48   26   19   16   14   29   22   28   25   44   28
      Gene215    2    2    2    .    7    .    6    4    4    7    6    7    1    .
      Gene216   24   21   29   37   21   29   58   25   30   16   19   38   70   24
      Gene217   48   21   28   58   74   53   73   34   56   47   61   58   67  108
      Gene218   47   28   76   96   82   46   80   26   49   33   21  122   62   32
      Gene219    .    2    8   11    2    5    7    1    2    5    8    3    7    4
      Gene220   81   45   76  115   54   64   91   56   62   57   80  122   86   73
      Gene221   37   10   10   15   23   14   15   11   23   17   45   18   31    7
      Gene222   16   14   17   20   19   38   24    9   15   34   36   48   40   24
      Gene223  117   84  172  137  125   98   94   79  151  114  144  150  138  130
      Gene224   13   24   29   24   32   18   42   12   36   26   35   25   36   37
      Gene225    4    3    2    7    3    8    3    5    .    3   10    2    9    5
      Gene226    8   14   18   32   18   24   22   18   24   19   23   38   30   14
      Gene227   17    5   29   22   18   25   42   18   40   31   20   26   33   28
      Gene228   31   37   54   59   40   40   53   20   48   23   48   96   63   54
      Gene229   54   47   54   67  117   47   99   28   61   63   75   62   46   26
      Gene230    .    4    2    5    3    7    6    1    1    9    2    6    9    .
      Gene231    9    5   13    9    7   10   13    4    6    1    4    5    4    4
      Gene232  102  114  146  136  104   77  132   56  119  128  136  178  173  114
      Gene233    8    8   14    7    8   27    6    8   13   13   16   16    9   21
      Gene234    5    1    2    7    2    8    3    4    3   10   19   16    2    8
      Gene235   44   47   58   50   41   57   25   33   31   60   33   69   37   41
      Gene236    6   11   26   20    9    6   34   16   17   16   21   13   25   18
      Gene237   54   97  148  107   84   65  103   47  100   74   82  167   83  100
      Gene238  128   78  139  103  140   66  136   60  152  134  197  126  132   88
      Gene239   14   23   26   20   29   54   39   20   14   15   29   42   30   28
      Gene240   25   17   17   10   11    7   14    4    2    7   10   21   12    6
      Gene241   31   33   91   49   43   36   74   22   54   28   53   52   67   37
      Gene242    .    1    2    3    .    4    2    .    .    1    1    1    3    1
      Gene243  106  207  165  166  147  160  128  128  233  161  387  242  233  175
      Gene244    1    4    4    4    1    .    5    2    5    1    9    8    1    .
      Gene245   55   88  138  116  121   73  119   48   95   94  146  161   83  124
      Gene246   11    8    5   17   15    7   15   13   24    5   15   14   26   18
      Gene247   23   24   28   19   14   11   13   17   24   26   36   23   19   18
      Gene248    8   13   14   15    4   11   10    9   28    3   17   26   12    8
      Gene249    .    .    .    .    .    .    .    .    2    .    .    .    .    .
      Gene250    1    1    3    .    4    .    .    .    6    .    5    4    2    .
      Gene251   37   31   28   36   62   23   49   29   49   26   19   64   35   25
      Gene252   16   10   38   49   57   11   32   19   30   24   22   33   28   15
      Gene253   91   76  212  165  188  119  199  122  175  173  133  274  239  135
      Gene254   34   48   82  107   65   40   60   50   76   63   61   87   59   64
      Gene255   75   67  103   99  119   42  109   45   89   70  135  171  111   90
      Gene256  110   80  179  122  108   94  133   64  116  111  132  215  132  116
      Gene257   15    7   12   34   28   11   20    5   25   13   28    9   19   27
      Gene258    8   10   17   19   13    8   16    7   17    4   16   10   13    2
      Gene259    .    1    1    .    .    .    1    .    2    .    .    .    .    .
      Gene260   58   49   61   83   76   49   66   71   49   55   72   60   63   48
      Gene261   25    8   45   30   20   28   17   10   15   19   27   32   28   10
      Gene262    3    4   12    8   10    6   12    6    9    7    6    5    2    3
      Gene263    8   12   10   20    9   19   26    7   12   19    1   26   16   21
      Gene264   23   33   41   55   31   48   44   30   60   33   33   41   36   53
      Gene265   18   16   41   11   20   11   16   13   17   22   17   19   34   19
      Gene266    .    .    .    1    .    2    3    .    1    1    .    1    3    .
      Gene267   41   44   78   61   67   84   57   46   53   65   81  102   79   53
      Gene268    4   15   14    1    5    1   11    1    3   12    5   17    7    6
      Gene269    3   10   13   13    5   11    9    8    8    2   10   15    5    4
      Gene270  128  108  189  245  131   91  161   99  182  160  132  226  246  146
      Gene271  720  605 1335 1176 1083  766 1081  634  954  716 1112 1515 1124  852
      Gene272   39  114  116   51   52   67   86   70  130   75  109  101  115   56
      Gene273    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene274    .    .    .    1    2    .    .    .    .    1    2    2    .    1
      Gene275    .    1   10    3    5    .    3    3    2    6    5    5    2    7
      Gene276    5    1   22   10   22    9    8    4    6   26    8   22   16   16
      Gene277   23   17   40   25   33   27   47   18   43   40   31   40   38   33
      Gene278   27   76   79   67   45   33   53   43   76   64   93   63   61   75
      Gene279   31   22   45   20   45   30   44   28   34   42   33   66   40   25
      Gene280   21   11   44   28   33   39   36   33   25   16   38   31   38   25
      Gene281   23    9   40   34   22   11   22   16   19   12   27   43   30   20
      Gene282   11    6   18   12    5    4    5    3   12    7   15    9    5    8
      Gene283  224  247  297  361  364  275  335  200  423  319  463  427  357  296
      Gene284    .    6   17    6    3    3    9    1    3   14    5   10    6    5
      Gene285  130  138  157  217  165  119  223  139  271  205  185  248  150  187
      Gene286  137   61  124  132  134   66  117   77  138  122  100  124   91  128
      Gene287   28   13   35   34   34   53   36   20   24   29   35   43   34   36
      Gene288   14   13    8    3   20    7    5    7    8    .   18   24    1   13
      Gene289   63   43   96  120   60   70  112   44   91  131  111   78   62   87
      Gene290   22   57   44   37   52   47   54   37   35   65   51   55   49   59
      Gene291    3    2    9    7   10   10    4    3    9    5    6    3   16   10
      Gene292  736  641 1184 1276 1038  864  962  700 1255  896 1071 1370 1040  816
      Gene293   28    2   36   38   36   19   15   11   21    6   15   23   18   15
      Gene294 1481 1665 1753 2118 1867 1025 1719 1283 2126 2077 2227 1727 1851 1616
      Gene295   31   24   28   39   44   30   55   18   31   31   63   67   58   31
      Gene296    3    1    2   10    4    3    1    2    8    .    3   10    3    2
      Gene297   21   49   55   39   17   59   34   45   60   60   62   43   21   40
      Gene298    .    4    1    .    .    1    .    .    1    4    .    .    4    1
      Gene299   46   25   35   62   25   17   44   10   30   36   43   79   48   30
      Gene300    5    5    6   10    3    1    8    .    2    7   13   12    5    .
      Gene301 2734 2357 2868 4072 3111 2073 2957 1445 2753 2547 2477 4296 3386 2251
      Gene302    .    3    .    .    .    .    4    .    .    1    1    6    .    1
      Gene303   22   13   28   27   17   15   22    7   39   27   26   43   25   22
      Gene304    3    .    .    3    .    .    1    .    .    .    .   10    .    .
      Gene305   70   45   73   29   60   55   33   16   26   58   32   56   48   45
      Gene306  177  112  139  185  136  126  184  109  149  110  145  223  182   97
      Gene307   29   24   34   41   27   40   40   16   33   10   23   49   39   33
      Gene308   16    8   28   13    9   15    9    9   15   19    7   26    8    4
      Gene309  449  376  552  563  455  366  440  324  450  475  460  791  594  416
      Gene310   32   26   59   65   28   38   73   17   30   52   50   31   59   32
      Gene311   12    1   12    8    6   17    7    3   13   11   19   18    9   10
      Gene312    7   23   13   20   29   16   16   19   19   24   12   32   21   38
      Gene313  105   84  187  121  119   77  145   59  147   82  168  185  113  114
      Gene314    1    8   14    7    5    3    8    5    7    8    3    3    6    3
      Gene315    1    .    .    .    1    5    4    2    1    1    3    5    2    2
      Gene316    9   27    6   18   14    3   11    4    5    3   13   13   21   15
      Gene317    2    1    2    3    3    6    1    2    1    9   10    4    6    1
      Gene318   15   10   26   29   14   29   26    3   19   33   20   29   14   18
      Gene319   13    7   31   12   14    4   33    9   12   10   13   20   15   11
      Gene320   39   41   57   59   25   24   38   39   57   47   51   69   31   33
      Gene321   48   17   72   49   42   28   53   34   31   45   77   51   29   30
      Gene322    1    .    .    6    1    2    1    1    3    4    .    1    1    .
      Gene323  114   80  141  134  135   80  100   84  143   83   97  223  130  113
      Gene324    .    .    .    .    .    .    .    .    1    .    1    1    .    .
      Gene325  294  207  461  301  323  327  336  227  338  275  388  436  244  367
      Gene326    4    3    2    2    4    .    9    1    .    3    3    5   10    .
      Gene327  191  225  290  299  208  280  250  193  306  301  248  382  321  217
      Gene328  177  281  218  284  246  357  222  253  394  360  425  328  252  431
      Gene329   76   84   96  133  128   71   96   57  102  129   94  133  111   69
      Gene330  251  201  274  341  319  229  254  145  343  198  220  307  422  234
      Gene331    1   10   26   17   17    6   14   12    5    9    3   19   19    1
      Gene332   17   31   46   46   27   24   18    6   22   12   12   27   24   12
      Gene333   27    9   62   24   22   29   34   33   21   36   30   48   16   22
      Gene334    6    1    5    1    .    1    .    1    .    .    .    1    5    7
      Gene335    6    6   15   25   19   12   15    8   18   15    8   15   12    3
      Gene336  106  119  191  180  122  126  106   98   87  134  219  124  218   90
      Gene337   17    9   47   32   19   22   44    9   22   31   33   37   18   22
      Gene338   15    .    3    6   11    6    5    4    .    3    3    3    4    .
      Gene339   47   69   37   84   82   32   66   45   79   74   82   82   75   77
      Gene340   38   28   40   30   56   34   35   19   40   22   25   72   68   37
      Gene341   13    8    9   20    4    4   12    .    8    9    6   13   17   12
      Gene342   57   30   77   55   87   55   52   40   60   37   69   91   46   77
      Gene343    1    .    3    5   11    .    2    .    6    2    7    1    .   15
      Gene344    9    9   29   27   24   28   21   17   18   24   20   39   26   11
      Gene345   24   32   39   61   43   46   34   35   45   47   38   63   37   33
      Gene346    .    .    .    5    2    .    .    .    1    1    5    4    .    1
      Gene347   11   16   35   32   22    4   25    3   27   15   28   34   13   16
      Gene348    7    7   12   11    9   11   10    7   18    6   14   14    7    9
      Gene349   96   65  139  130   94   64  120   78   98   78  128  148  107  120
      Gene350    6    .   14    6    6    8   10    4    9    1    2    .    3   10
      Gene351   33   15   20   34   33   16   19   19   56   35   37   34   16   21
      Gene352    5    5   12    3    3    3    9    4   14   14    6    3    7    5
      Gene353    2    3    .    1    1    .   15    3    .    3    1    2    1    4
      Gene354  180  177  315  196  264  145  203  147  171  228  129  274  292  129
      Gene355   23    9   16   14    7   17   31    5   28   17   16   20   18   24
      Gene356   42   56   76   68   42   71   62   47  129   43   86   84   51   61
      Gene357   14   22   10   14   19    7   15    6   20   19   18    7    9    9
      Gene358   18    8    6   14   33   16   14    5    9   11   13   16   10    8
      Gene359    .    .    1    .   10    2    1    .    2    .    1    .    2    .
      Gene360    6    4   10    9    9    4   17    1    8    9    5    1   13    7
      Gene361   11    4    8    7    7    5    9    3    4    1    9    7    9   15
      Gene362   21   11   18   16   20   24   13   12   34   26   22   16   24   10
      Gene363    6   22   27   21   22   17   14    8   38   24   27   43   23   13
      Gene364   29   18   32   30    9   38   40   10   15   45    9   89   40   31
      Gene365   59   56   65   44   46   33   51   43   89   65   56   73   72   21
      Gene366  210  163  305  112  153  124  179   92  221  264  119  326  232  213
      Gene367   75   50   86  112   55   48   58   46   64   35   88   75   62   29
      Gene368    3    9    4    8    5    7    1    3    9   12   20   10    1   11
      Gene369   13    4   20   25    1    6   10    5   10    1    7   11   20   10
      Gene370  161  122  165  190  199  157  181   95  178  141  193  179  185  163
      Gene371    6    4    8   13   16    2    2    1   12    5    3   11   12    5
      Gene372  118  117  154  176  104  117  147  112  206  125  147  180  186   93
      Gene373   20   10   42   15    6   27   33   21   35   21   21   21   30   21
      Gene374   43   33   85   79   74   63   71   63   61   57   56   59   57   39
      Gene375   20    7   20   25   20    7   75   10    9   10   24   34   22   12
      Gene376   29   13   42   16   23   11   13   13   23   17   23   16   21   13
      Gene377   36   25   79   63   45   32   41   19   25   74   63   61   42   36
      Gene378   35   24   24   52   25   15   44   34   28   52   21   72   49   11
      Gene379  840  755 1571 1547 1116  533 1372  631 1555  970 1249 1857 1583  915
      Gene380    3    2    2    7    2    2    .    1    4    2    7    4    3    1
      Gene381    7    6   11    9   20    8   17    .    7   20    7   16   17    3
      Gene382    2    .    .    1    .    1    4    .    1    .    1    2    .    1
      Gene383    1    1    4    1    .    2    2    1    2    .    .    .    6    1
      Gene384   27   19   23   19   15   25   19   34   43   34   26   24   22   23
      Gene385   47   18   61   63   47   37   48   14   33   52   27   51   42   43
      Gene386   19   31   50   53   61   24   70   28   60   41   36   61   63   27
      Gene387   69   77  162  139  129   62  111   92  136  133  234  125  167  111
      Gene388    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene389    4    7    9    9   16    7   19    2    5   16   11    .   13    3
      Gene390   85   63  152  131  111   65   61   79  105   82  117  120   87   87
      Gene391    8    1   17   10   12   11   12   13   17   11    8   18    8    9
      Gene392    .    2    7    5    2    4    .    6    4   11    9    7    7    3
      Gene393   66   77  111   68   75  102  162   54  129   83  121  142   84   97
      Gene394    7   18   16   31   26   17    3   10   14   19   18   10   13   32
      Gene395    9    3    8   21   10    4    1    2   17    4   10   15   15   13
      Gene396    2    7   11    3    8    9    8    3    8    6    2    4    2    .
      Gene397    9    4    9   12   17   10   15    6   17   16   23   29   15   13
      Gene398   49   22   47   85   35   51   75   43   45   38   20   56   63   45
      Gene399   23   60   46   44   21   32   60   30   62   45   64  131   46   35
      Gene400   15   19   15   27   17   25   37   10   16   27   20   45   22   17
      Gene401   18    1    7    7   12    9    5    1    1    1    7    6    6    9
      Gene402   71   57   85   75   46   28   82   27   75   96   55  135   84   60
      Gene403    8   10    4    6    9   16   20   12   25    6   23   15   12   17
      Gene404   94   42   83  112   79   54   84   51   67   71   81  111  106  116
      Gene405    7    8   18   17    8   23    5   12   32   15   24   20   30   23
      Gene406   19   11   31   29   15   18   28   11   19   16   23   29   17   28
      Gene407    .    1    .    .    .    .    1    .    .    1    .    .    .    1
      Gene408   13   27   12   11   32   82   33   42  101   46   59   32   22   44
      Gene409   19    1   14    8    3    7   15    2    .    4    3   29    7   14
      Gene410  108  191  180  113   92   92  124  119  183  191  304  137  189  141
      Gene411    7    7   10   18    8    7   16    3   13    5   10   20   10   19
      Gene412   74   64  103  124   64   59   84   38   91   74   99  112   62   83
      Gene413    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene414   93  143  148  157  137  120  170   83  143  182  102  223  154  133
      Gene415   12   14   15   24    8   14   18    7   14   16   16   31   16   16
      Gene416   58   28   36   40   42   35   44   15   34   32   41   79   43   41
      Gene417   15   14   10   23   15    7   15   10   19    6   30   30    9   19
      Gene418   42   64   86   69   53   92   41   45  110  127   81  108   60  131
      Gene419    .    3    3    .    1    1    2    .    1   22    1    5    8    2
      Gene420   19   10   22   42   13   21   30   12   28   26   39   28   23   11
      Gene421   96   95  135  157  126  124  101   93   94  115  132  148   97  122
      Gene422   25   15   33   27   28   14   23   22   23    9   28   29   17   42
      Gene423    1    .    2    7    .    .    1    .    1    .    .    4    1    .
      Gene424   10   13   15   23    7   11   21    6   11   12   16    9   11    6
      Gene425   58   52   52   49   32   69   67   52   55   45   61   81   65   27
      Gene426    1    3    5   17    9    6    7    1    4   11    2    3    4    3
      Gene427    .    .    .    .    .    .    .    2    .    .    .    .    .    .
      Gene428    4    5    7    8    4    8   15    5    6    6    .   11    5    3
      Gene429    .    .    .    .    5    .    2    .   11    1    8    3    3    3
      Gene430   54   24   67   53   76   34   42   44   53   40   61   86  110   37
      Gene431    2    2    .    3    .    1    .    1    8    .    .    2    1    8
      Gene432    6   15   16   40   57   10   16   26   27   31   30   30   20   13
      Gene433  630  584  739 1016  636  728  997  417  630  655  649  822  633  655
      Gene434    2    .    4    9    1    4    6    4    4    2    4    5   13    8
      Gene435    2    .    8    7    .    3    4    .    2    4    4   12    1    4
      Gene436   98   50   88   65   70   78   83   34   69   41   79   77   62   47
      Gene437   45   33   55   95   57   43   92   15   47   44   48   88   71   38
      Gene438   16   16   45   34   24   14   25   28   42   38   25   55   24   20
      Gene439   38   31   49   63   50   57   40   27   47   31   39   67   31   48
      Gene440   24   18   34   22   34   19   30   32   31   43   31   46   22   22
      Gene441   65   38  104  105  130   62   96   28   64   65   56  149  103   61
      Gene442  151  149  212  299  241  191  230  105  204  225  272  216  191  202
      Gene443    .    3    4    1    1    .    5    .    1    2    .    3    7    .
      Gene444   40   49   86   95   49   39   77   24   64   67   69   87   93   62
      Gene445   36   29   38   65   27   35   32   23   51   27   42   42   40   44
      Gene446    9    8   33   22   15   12   15   14   11   10    9    9   13   11
      Gene447    2    4   10    6    1    9    8    9    3    6    7    5   10    7
      Gene448   11   39   27   55   30   45   37   44   68   67   46   29   16   61
      Gene449 1410  828 2707 2179 1835 1025 2461  811 1128 1178 1228 2619 1905 1011
      Gene450   10    9    7    6    8    2    7    6    9    5   12   14   10    5
      Gene451   33   21   27   32   17   26   32   13   48   42   26   43   52   52
      Gene452  779  450 1185  828 1133  450 1126  389  519  728  688 1068  916  537
      Gene453   33   33   52   47   29   37   46   12   44   54   46   58   40   37
      Gene454   21   17   35   17   13   15    5   16   33   20   25   18   13   24
      Gene455    9   27   19   18   20   20   20   17   28   25   28   25   15   22
      Gene456   24   10    6   12   26    5   13    9   12    9   22   20   14    9
      Gene457 2385 2550 4737 3928 4231 2877 3436 2204 3644 3038 4072 5290 3490 2648
      Gene458   45   38   68   80   76   68   23   47   80   78   60   78   81   43
      Gene459  749  589 1160 1083 1229  993 1106  572 1139  786  817 1093 1073  787
      Gene460   10   10   23   19   13   17   17   12   15   18   18   15   30   12
      Gene461   26   12   22   24   30   13   24   12   23   33   49   25   22   13
      Gene462    7    5    3    9   13   12    9    7   13   15   14    4    4    3
      Gene463   61   37   55   43   53   51   54   22   84   44   47   59   50   33
      Gene464   59   55  103   76   82  100   92   32   95   93  104  108   37   67
      Gene465   14   20   27   33   23   11   23   20   23    5   24   30   25   28
      Gene466   24   41   59   31   32   29   46   22   30   29   42   68   35   20
      Gene467   25   21   39   33   27   15   31   21   26   26   40   46   25   19
      Gene468    6    1    2   16    2    3   14    5   18    3    4    6    4   10
      Gene469    2    .    .    .    3    .    8    .    2    4    .    1    .    .
      Gene470    2    1    2    4    .    .    1    1    3    .    1    1    2    3
      Gene471   27   32   36   47   44   26   45   30   29   36   37   52   56   40
      Gene472  116   75  174  123  124   53  114  120  136  112  125  150  181  142
      Gene473   59   35   65   70   68   46  113   34   81   54   79   99   71   62
      Gene474   39   26   28   33   23   31   36   23   38   21   46   57   48   22
      Gene475   42   35   42   62   24   22   30   17   50   43   28   75   29   36
      Gene476  159  157  298  264  240  356  354  188  313  160  263  394  295  230
      Gene477   34   28   17   27   29   19   20   20   33   23   31   23   24   14
      Gene478    5    4   12   17    8   10    8   11   20    9   10   26    7   11
      Gene479    5    6    4    2    4    4    5    .    3    3    7    3    3    .
      Gene480   12   11   17    9   15   10   15   10   11   18   14    8    8    7
      Gene481    .    3    2    .    1    .    .    4    5    2    .    .    3    .
      Gene482   38   38   34   17   17   59   28   50   54   78   43   81   38   62
      Gene483    .    .    .    .    .    3    .    .    1    5    .    .    2    .
      Gene484    5    1    5    .    5    2    2    1    1    4    6    4    3    3
      Gene485    8    7   10   12   12   10   13    4    8    8    9   17    5   13
      Gene486   52   59   73   59   45   78   40   21  108   50  129   74   57   76
      Gene487   71   51   76  132  127   85  115   33   86  102  114  177  117   59
      Gene488   26    6    2   12   21   21   16    4   13    5   10    2   19   11
      Gene489  417  301  480  595  461  353  420  355  629  403  386  648  426  375
      Gene490  313  217  340  294  278  348  298  224  427  302  351  391  316  276
      Gene491    5   12    9    4    6   25    5   23   17   13   11    9   12   11
      Gene492   41   85  111  103   91   82  127   45   67   83  100  100  105   84
      Gene493    5   14   11   27   15   27   11    4   18   19    9   16   11    7
      Gene494   21   16   32   36   24   26   32   18   35   41   37   55   35   34
      Gene495  759  913 1096 1285 1107  627 1392  592 1297 1015 1227 1315 1102  787
      Gene496   82   52  131  147   77   52   86   51   98   58  102  129   79   85
      Gene497   62   37   49   60   38   47   48   24   48   42   39   80   54   43
      Gene498   38    8   18   53   33   26   26   24   68   35   17   58   19   21
      Gene499    5    4    8    .    2    3    9    8    5    8    2    4    6    2
      Gene500    .    .    .    .    .    .    .    .    6    1    1    1    .    .
                                                                                   
      Gene1     29   43   36   47   57   33   55   43   45   55   74   28   69   61
      Gene2     28   24   29   13   45   36   17   23   17   20   32    9   18   30
      Gene3    942  550  569  875 1338  663  478  615  886  708  755  533  766  774
      Gene4     95   37   74   72  164   74  123   68   73   87   87   70   65   98
      Gene5     11    .    5   13    3    9    8    5    5    4    9    4    5    9
      Gene6     41   58   24   39   70   44   67   85   66   80   98   59   77  116
      Gene7     63   36   54   58  105   66   83   72   80   74   89   71   57   68
      Gene8    107   87   46  119  130   80   90  115   63  111  101   96   68   95
      Gene9     72   22   36   49   74   71   53   42   78   69   55   76   49   47
      Gene10     5    2    2    8   13   10    2   12    7    6   19    4   12    2
      Gene11    18   21   10   24   18   19   15   29   14   23   28   35   43   23
      Gene12    19   14   31   32   41   57   32   18   29   27   37   10   16   43
      Gene13    76   30   37   70  108   57   46   65   71   61   59   48   39   53
      Gene14     7   15   17   14   17   14   18   12   28    9   15   19    9   13
      Gene15   248  133  138  163  225  153  156  254  115  286  171  149  216  210
      Gene16    37   21   11   16   26    4   14   20   19   15   17   16   13    9
      Gene17    22   43   11   21   52    8   24   43   31   21   48   14   22   34
      Gene18    19   13   32   35   49   18   19   29    9   27   23   20    6   29
      Gene19    30   32   18   37   66   55   33   35   41   28   20   56   23   44
      Gene20     .    .    .    2    .    1    .    2    .    .    1    .    .    .
      Gene21     1    .    1    8    1    .    1    1    3    1    3    3    1    1
      Gene22   131   75   76  162  146  102  102  175   98  117  131   93   87  106
      Gene23  2374 1241 1481 1886 3296 1723 1766 2122 2068 1826 2475 1948 2270 1934
      Gene24    15    5   13   15   24   20   27   11   18   18   14   13   26   27
      Gene25     8   15   26   23   55   18   38   40   25   30   50   12   11   29
      Gene26    39   27   23   29   54   34   60   42   41   45   15   40   28   26
      Gene27     .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene28    21   17   11   31   30    9    8   19    3   42   23   25   24    9
      Gene29    51   45   43   75   94   52   76   56   70   43   87   46   59   79
      Gene30   372   62  167  144  285  146  145  230  157  297  179  207  267  199
      Gene31  1656 1469  917  981 2933 1043  923 1582  844 1508 1298 1619 1797 1169
      Gene32    77   30   37   72   72   57   45   71   42   89   45   44   65   64
      Gene33     8    5    3   12   13   10   20    8   16    5   10    9    2    9
      Gene34    53   25   17   21   35   32   61   69   24   49   20   37   31   30
      Gene35   672  288  356  753  651  480  618  622  624  613  637  494  577  540
      Gene36     3    3    6    2    7    1    1    .    .    1    2   11   10    1
      Gene37    39   10   10   19   34   13   12    8   11   28   18   21   16   13
      Gene38     8    2    4   11    9   13   10    8   12   10   21   10   11   16
      Gene39   532  333  351  350  832  434  565  420  484  436  703  530  496  646
      Gene40     2    3    .    4    3    3    .    3    1    6    3    1    2    2
      Gene41    49   23   21   45   45   11   29   30   34   21   36   59   11   54
      Gene42     2    5    7    9   13    2    4    .    7    1    3    5    2    5
      Gene43    10   11    3    9   29    8    3   15   27    8   25    4   10    7
      Gene44    25   11    6   18   27    6   22   11   13   12   28   15   11   19
      Gene45   128   80   92  118  155   84   84  110  112   97  121  168  101  106
      Gene46  3005 1830 2002 2362 3097 1730 2155 2944 2343 2565 2797 2511 2384 2056
      Gene47    12    .    6    6   15    9    .    3    5    5   16   11    8    8
      Gene48    49   22   42   42   59   32   49   49   56   42   59   32   41   58
      Gene49    26   35   14   35   32   44   21   18   33   27   42   29   29   37
      Gene50     .    .    1    1    .    .    .    .    .    .    .    1    .    .
      Gene51    26   17   10   22   24   20   13   13   19    6   20   12   27   25
      Gene52     1    2    4    5    7    .    .    2    .    7    1    .    1    4
      Gene53    27   34   41   45   59   27   44   28   32   26   50   37   36   25
      Gene54    37   39   31   47   70   19   38   55   25   41   39   34   37   40
      Gene55     3    5    .    6    6    8    9    6   10    3    2    5    2    3
      Gene56     4    1    3    9    6    3    .   10   10    3    6    3    9    5
      Gene57    71   32   35   52   79   39   69   77   74   38   61   79   38   70
      Gene58    28   16   36   30   41   22   35   41   29   46   41   27   25   26
      Gene59    25   12   23   35   38   43   36   15   27   12   20   19   27   46
      Gene60     .    1    .    5    .    .    2    .    .    1    .    .    1    1
      Gene61     .    .    .    1    .    .    .    1    .    .    .    .    .    .
      Gene62    38   28   22   53   46   59   51   39   40   30   80   58   50   51
      Gene63   387  148  102  198  181  157  189  334  167  290  165  350  302  178
      Gene64   227  168  164  176  360  206  222  233  275  117  224  155  133  273
      Gene65    48   26   13   17   59   39   24   46   31   50   20   79   22   42
      Gene66    84   64   59   67  101   46   65   84   50  106   49  104   99   71
      Gene67   399  224  238  246  487  286  281  371  295  242  374  392  314  448
      Gene68     3    2    5    2    6    2    1    1    3    2    1    .    4    1
      Gene69     6    4   13   11   11    3    1    9    4    6    3    2    6   11
      Gene70   134   57   62   95  118   70   81  115  103  144   50  121  156   91
      Gene71    33   34   16   38   38   50   60   33   53   43   51   38   61   48
      Gene72    12   10    3   10   11   17   12   16   20   14    9   19   16    9
      Gene73    10    1    .    1    3    .    3    5    .    1    7    3    2    2
      Gene74  1489  845 1115 1722 2297 1270 2000 1831 1943 1375 1819 1430 1319 2180
      Gene75    34   13   30   24   42   38   22   20   29   20   32   15   30   21
      Gene76    61   16   25   36   48   25   22   29   38   60   45   44   40   48
      Gene77    52   48   31   34   65   40   36   54   46   38   42   26   49   39
      Gene78   172   72   67  120  100   87   74  212  120  164  124  144  125  118
      Gene79   988  551  543  928  935  542  724  772  546  712  731  774  598  669
      Gene80    63   41   41   73  107   44   47   45   38   36   47   52   73   76
      Gene81    26    9   21   16   15    8   17    9   15   15   18    6    4   12
      Gene82     1    2    1    2    5    .    3    1    .    1    1    1    4    1
      Gene83    72  101   41   75  164   67   69   91   73   76   84   74   73   87
      Gene84    44   17   35   49   56   42   32   41   45   35   60   23   35   52
      Gene85   762  455  566  766  934  827  685  900  800  713  773  731  810  560
      Gene86     .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene87    44   28   28   32   43   15   37   22   27   46   51   58   41   21
      Gene88   119   96   98  122  204  162  139  149  160  124  147  160  109  125
      Gene89    22   16   16   20   49   18   23   35   11   24   16   36   23   13
      Gene90   205  123  132  122  182  113  213  147  160  155  143  146  119  276
      Gene91    66   62   49   29   88   40   45   83   59   72   63   46   80   66
      Gene92    13   15    6   10   24   15   13   11   12    3   18   14   13   11
      Gene93    56   11   10   15   46   23   14   54   32   39   21   39   42   16
      Gene94    65   15   12   17  101   25   41   58   27   69   42   23   45   43
      Gene95    15   10    2   12   32    4   10   27    7    7    6   10   23   10
      Gene96     .    .    1    2    2    1    2    3    3    .    .    .    3    1
      Gene97     6   11    9    1    7    2    5    .   16   12    7    5    1    6
      Gene98     .    4    2    2    2    2    7    2    2    1    .    3    1    .
      Gene99    17    3    2    5    7    3    6    3    9    6    1    3    3    2
      Gene100  186  101   84  149  159  173   88  228  112  123  122  172  152  145
      Gene101   19    4    5   13   26    5   18   14   12   12   10   23   10    9
      Gene102   83   40   45   63   75   55   63   51   58   72   68   66   53   93
      Gene103   43   20   43   37   56   45   25   36   35   51   36   40   43   30
      Gene104    .    .    .    .    3    .    .    .    1    .    .    .    1    1
      Gene105   30    8    2   10   31    2    7   16    7   10    2   18   10    6
      Gene106   28   18   28   43   76   33   43   45   28   56   14   22   63   45
      Gene107 2423 1682 3121 5327 4561 3546 4761 2420 4012 2878 4803 2204 2851 4072
      Gene108    1    .    .    2    1    2    2    .    1    .    3    2    1    4
      Gene109  175   85   98  173  223  124  166  126  123  152  138  221  146  161
      Gene110  108   67   78  112  175  132  100   96  103   98  105  141   92  108
      Gene111  477  217  289  426  623  277  431  375  274  393  396  397  413  545
      Gene112    3    1    5    2   16    3    2    3    4    4   11    3    7    1
      Gene113   15   17   19   71   35   19   45   39   38   22   43   36   40   27
      Gene114   10    4    9   18   20   16   16    3   11    7   11    4   16   25
      Gene115   53    9   15   19   24   34   36   65   12   36   30   45   52   22
      Gene116   58   35   25   31   45   11   42   21   52   54   39   41   52   33
      Gene117  868  615  535  816  907  595  871  867  746  798  715  518  832  790
      Gene118    9    7    4   12   17   10   10   10    9    4    6    5    9   10
      Gene119   19    1    3    3   15    5    4   14    1   12    7   14   17    .
      Gene120  110   17   16   35   24   25   19   43   32   55   25   36   43   17
      Gene121    9    1   13    8   14   10    8   12    6    5   10    4    9    9
      Gene122   96   31   30   39   64   34   24   65   20   73   26   69   62   28
      Gene123 2340 1286 1433 2380 3504 1598 1670 1699 1638 1389 2451 1866 1579 2494
      Gene124   38   16   42   51   68   46   66   25   65   22   72   30   35   51
      Gene125  650 1216 1405 2246 2418 1783 1833  759 2249  676 1901  573  634 2482
      Gene126   50   17   22   58   61   32   36   69   34   47   51   40   35   53
      Gene127  212   61   88  153  251  151  123  120  184  110  201  119  125  186
      Gene128   17    1   10    2    3   12    6   31    3    8   19   10   11    7
      Gene129  134  150   77  164  150   78   58  125  116  165   92  136  158  127
      Gene130   39   37   42   69   64   67   47   65   58   63   36   84   42   67
      Gene131   34   11   18   43   30   27   17   22   29   24   27   27   17   30
      Gene132   14   20   11   25   33   10   17   34    8   17   27   25   19   28
      Gene133    7    8    2    6   12    5   10   10    6    7   10   10    8    4
      Gene134    8   37    8   26   39   11    9    5   14    6   18    5   11   24
      Gene135   13   21    9   16   22    5    6    9    6   10   16    9   12   17
      Gene136  128   56  132  154  188  129   84  187  180  126  148  133  108  149
      Gene137   15    9    4   18    3    3   13   15   11   13   19   14    3    6
      Gene138   32   25   25   24   74   31   33   33   28   39   30   29   22   31
      Gene139   30   15   13   36   29   23   13   19   28   39   30   36   40   27
      Gene140   35    7    7   10   18   12   10   49    7   15   15   37   24    8
      Gene141   21   18   13   17   24   14   15   38   20   38    9   21   19   21
      Gene142  128   97  166  142  162  130  167  161  152  100  198  132  172  260
      Gene143    5    3    5    3    5    4    5    3    6    1    5    5    1   10
      Gene144    3   10    7   11    8    2    3    7    2   10    1    6    3    8
      Gene145   52   24   36   37   46   43   75   30   51   53   96   81   21   84
      Gene146   75  261   65  158  366  153   78  105  134   88  117  108   62  119
      Gene147   48   49   31   58   82   60   77   72   59   55   49   71   62   61
      Gene148  193  122   92  186  276  111  219  180  218  186  214  204  157  207
      Gene149    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene150   15    9    1    7   19    .    6   14    3   11    4    7    7    9
      Gene151  116   74  112  136  169  133  190  131  183  102  120  129   67  172
      Gene152   38    .   14   10   10    2   10   14    9    7    6   13   14    8
      Gene153    4    4    3    7    5    1    6   11    3    6    9    9    7    4
      Gene154    .    1    .    .    5    .    .    .    .    .    .    .    3    .
      Gene155   52   19   14   23   33   37   37   19   23   64   21   43   19   22
      Gene156   75   32   50   46   80   51   53   52   69   58   47   55   71   53
      Gene157    1    .    .    3    3    .    .    .    .    .    4    1    2    1
      Gene158  103   60   66   74   99   92   49   92  103   72   85   93   89   76
      Gene159   25   18   14   33   33   18   22   24   27    4   39   35   30   26
      Gene160   19    2    7    3   10    2    7    4    9   13    5    9    6    6
      Gene161   41   14   28   42   49   32   66   56   44   43   64   37   30   34
      Gene162    1    .    .    .    2    .    2    .    .    .    .    .    .    .
      Gene163   22    8    8   14   34   12   10   31    4   17   22   28   25   28
      Gene164   10    .    1    1    4    3    2    9   11    1    1    5    4    6
      Gene165  109   34   58  121  152  119   92   86   89   65   95   86  128  134
      Gene166   76   31   43   49   78   58   63   51   50   55   37   58   58   57
      Gene167   13   18   24   19   20   18   16    7    9   21   10   13   14   24
      Gene168    .    1    1    1    7    3    2    2    3    2    2    2    6    6
      Gene169    3    .    3    .   10    .    3   17    2    5    1    9    5    2
      Gene170    .    1    .    .    .    .    .    .    2    .    .    2    .    .
      Gene171  158   93  120  178  231  117  201  141  136  124  146  147  139  203
      Gene172    4    5   10    8    4   15   11    2    2    .   10    4    3    7
      Gene173   88   11   12   22   62   18   25  113   29   89   21  103   58   40
      Gene174   35   19   13   34   25   15    7   24   25   20   16   17   19   20
      Gene175    3    5    5    7   12    .    8    7   10   14   10    8    9    4
      Gene176   14    8   15   15   10    8   13    8   10   17   10   20    8   15
      Gene177 1837 1032 1536 1992 2516 1618 1415 2035 1093 1405 1917 1700 1305 1443
      Gene178    2    7    .    .    .    .    5    5    .    5    1    3    .    1
      Gene179   68   55   58   80  145   62   57   93   54   87   72   71   81  102
      Gene180   23   16   18   17   47   20   29   42   14   17   32   62   43   44
      Gene181    .    .    .    .    .    4    .    .    2    1    .    .    1    .
      Gene182  111   79   84  121  142  117   93  116  106  117   90   98   81  162
      Gene183   58   30   24   64   60   14   41   41   68   59   33   30   40   31
      Gene184   47   39   49   74   75   43   61   51   64   72   59   80   51   56
      Gene185   21   23    9   21   18   12   21   13   17   23   21   17   16   23
      Gene186    9    4    7    8   13   15    6    3    7    8   15    3    4   22
      Gene187   80   55   31   75   91   82   60   64  108   33   62   60   67   67
      Gene188    1    7    3    3    6    5    8    .    1    6    4    2    .    1
      Gene189  113   67   65  109  137   56   80  107  114  101  102  104   82  129
      Gene190 1100  693  807 1224 1386  826 1061 1094 1126  882 1391  752 1137 1222
      Gene191   24   14    3   38   22   17   19   34   26   27   22   17   34   21
      Gene192    1    2    6    2    7    8    8    5    9    .    .    1    7   13
      Gene193    4    2   21    4   17    7    8   11   13    3    8    .   12   15
      Gene194    6   20   18   10   32   29   10   29   21   24   16   13   20   22
      Gene195   13    8   11   21   14   23   25    9   19    6   14   12    9   20
      Gene196  353  132   81  217  273  189  183  358  252  363  266  267  356  208
      Gene197   26   14   20   17   20   12   11   27   17   15   20   12   20   31
      Gene198   93   64   83  123  149   94  143   61  106   96  131   75  102   70
      Gene199   46   19   20   29   33   28   22   15   40   28   18   26   29   24
      Gene200   22    6   18   14   39   20   19   17   22   33   20   14   25   22
      Gene201   11   16    3   14   17    6    2    3   14    6    9   12   12    7
      Gene202 1057  542  750  871 1313 1061 1140 1313 1255  840  980 1042  950  934
      Gene203   21   19    1    6   37    8    6   16    7    8   12   28   13   10
      Gene204    .    .    .    .    1    .    .    .    1    .    1    .    3    .
      Gene205   80   17   89   62   85   38   50   47   54   57   36   62   58   55
      Gene206  161   55   40   31  132   37   44  167   50  138   38  112   95   55
      Gene207    4    .    3   17    4    9   16   15    4    5    4    5    3   15
      Gene208    5    .    .    3    3    5    8    3   16    4    7    2    1    3
      Gene209  231  193  217  216  376  183  152  239  202  184  297  228  219  231
      Gene210   74   49   41   57   80   53   55   68   44   20   78   60   92   52
      Gene211    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene212   14    5   26   16   16   17   13    8   21    9   25    2    2   31
      Gene213   19   12    9   11   15   16   17    7   11    5    6   14    3    5
      Gene214   25   11   16   51   17   24   20   16   27   36   42   43   26   34
      Gene215    4    .    .    1    5    .    1    1    8    5    2    7    2    7
      Gene216   30   19   29   27   55   14   27   21   41   17   23   19   24   15
      Gene217   51   39   42   69   74   49   60   55   44   74   45   74   56   60
      Gene218   86   35   40   35   86   41   44   60   25   43   43   52   46   51
      Gene219    4    .    3    2    6    1    5    1    1    2    5    1    5    1
      Gene220  138   57   40   74  117  124   74  117   69   72   90  149  135  106
      Gene221   31    6    9   27   27   20   12   19   18   30    9   26   18   43
      Gene222   11   17   16   14   26    5   26   27   14   27   29   19   21   28
      Gene223  128   81  127  201  141   98   90   95  166   80  195  132  147  103
      Gene224   24    7   34   38   60   29   20   23   24   29   22   39   28   21
      Gene225   22    .    3    5    2    .    8   10    8   18    4   25   12   14
      Gene226   27   16   21   40   24   31   31   24   15   34   20   12    9   34
      Gene227   27   16   21   31   23   16   24   20   21   23   22   11   34   30
      Gene228   58   20   21   71   30   41   38   70   64   77   36   46   53   47
      Gene229   46   38   59   84   93   60  108   84   78   60   84   37   87   81
      Gene230    4    .    1    3    7    1    2    2    3    5    4    1    3    6
      Gene231    5    3   12    5   10    6    3    9    .    7    7    7    2    8
      Gene232  132  105  104  150  191  105  137  106  149  143  111   92   91  122
      Gene233   14   13   14   11   15    5   20   12   12    2   16    3   17   20
      Gene234    .    9    5    7    2    4   15    7   14    5    6    .    2    7
      Gene235   44   42   39   39   93   33   48   31   71   46   34   78   46   39
      Gene236   33    7    9   28   21   10   26   17   29   15    5    9   10   14
      Gene237  258   40   79  104  116   64   96  185  102  220  113  136  139   79
      Gene238  122   92   99   80  205  107  111  102  167  139  102  130  167  115
      Gene239   24    9   11   35   33   15   25   16   24   23   19   25    9   27
      Gene240   24   10    5   10   13    5   21   23    4   13    5   16    8    2
      Gene241   74   37   36   60   62   48   35   55   51   74   43   57   43   57
      Gene242    .    .    .    1    3    .    1    .    .    .    1    .    2    4
      Gene243  203  114  181  297  185  207  271  171  236  131  248  148  149  299
      Gene244    6    2    4    1    8    .    3   12    4    1    9    .    6    3
      Gene245   90   64   62  132  122  135  130  109   86   92  134   88   77  148
      Gene246    9    6   11   22   34   18   19   15   19    9    9   11   14   29
      Gene247    4    6   24   29   14    8   23    6   18    6   24    9    7   14
      Gene248   12   13   11   24   12   12   11   19    9   17   13    5   13   22
      Gene249    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene250    1    3    2    .    1    .    .    .    .    .    1    2    1    4
      Gene251   20   22   21   39   66   20   28   13   35   24   21   19   25   22
      Gene252   62   10   28   35   51   23   17   47   21   48   55   62   52   54
      Gene253  120  167  107  183  222   97  153   99  132  136  201  131  123  188
      Gene254   96   81   52   90   70   61   59   94   64   75   75   77   82   38
      Gene255   93   54   77  117  165   49   39   67   82   70   79   48   91   77
      Gene256   97   65   88  132  136  125  140   73  106  135  113   92  105  149
      Gene257   16   12   12   26   29   18    9   16   12   16   32   15    4   16
      Gene258   15    8   16   16   17    6   13    8   14   12   17   22    9    7
      Gene259    .    .    1    .    .    .    .    .    .    1    .    .    .    .
      Gene260   84   55   48   91   94   43   74   73   53   53   51   44   44   80
      Gene261    8   16   22   19   42    8   33    7   36   15   31   19   21    9
      Gene262    1    9    2    8   16   18    5    1    6    1    6    7    6   10
      Gene263    6   15   10   11   15   12   18   17   13    4   16   13   10   22
      Gene264   30   14   35   42   67   18   36   49   36   41   41   68   46   34
      Gene265   17    8    9   24   32   13   12   47   20   19   19   10   31   12
      Gene266    .    .    .    1    .    1    4    .    1    4    1    .    3    4
      Gene267   65   39   32   52  112   43   88   38   68   75   89   82   43   55
      Gene268    6    7    9    9   17    8    5    2    4   13    3    3   17    7
      Gene269    6    .    4    9   20   12    7   10   10   16   10   13    8    6
      Gene270  223  134   97  215  323  166  177  184  180  171  200  312  166  211
      Gene271 1361  594  773 1028 1707  803 1072  955 1158 1003 1418 1071  979 1025
      Gene272  127   50   34   75  151   65  123   71  105  111  115  119  105  117
      Gene273    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene274    .    3    1    .    3    1    1    .    .    .    1    .    .    2
      Gene275    4    .    .    .    .    4    3    4    5    3    2    1    1    6
      Gene276    8    7    6   10   30    3   14   11    8   11   19   12    6   16
      Gene277   55   22   13   21   27   16   37   38   45   23   22   20   27   22
      Gene278  142   43   75   97  113   40   67  197   73  152   81  156  122   84
      Gene279   35   18   34   19   66   35   36   28   23   18   18   27   25   39
      Gene280   31   26   25   40   40   23   33   23   37   48   27   25   63   25
      Gene281   15   17   12   31   51   22   21   12   29    8   20   14    7   33
      Gene282   18    7    4   12   27   19    5    7   18   12   14   20    7    8
      Gene283  315  247  321  258  455  343  282  426  384  303  417  371  281  516
      Gene284    9    6    4   10    3    5    9    6   18    5    7    6   14    7
      Gene285  316  144  135  202  279  221  210  304  174  317  200  316  201  167
      Gene286  147   58  119  138  140  116   96  136  161  107  106  120  109  125
      Gene287   41   34   17   46   62   22   27   33   38   42   43   40   38   34
      Gene288   15   11   11   16    8   15   15    9    9   12   18   11    4   10
      Gene289   77   56   61   85  151   66   91   79   85  105  131   67  116  120
      Gene290   47   25   54   80   80   62   74   61   43   45   70   33   47   55
      Gene291    5    4    1    1    5    1    .    2    3    8    3    8    2    5
      Gene292 1247  565  710 1245 1456  748  928 1059  859  923 1102  691  958 1115
      Gene293   14   10   24   24   39   28   17    5   30   13   20   18   17   10
      Gene294 1879 1010  758 2197 2263 1626 1685 1771 1803 1556 2052 1523 1772 1917
      Gene295   33   23   22   52   75   34   17   40   52   24   30   14   13   30
      Gene296    8    3    1    8    7    4   14    9    .   11    9    .    2    6
      Gene297   36   24   42   65   67   88   40   46   84   28   52   28   13   62
      Gene298    6    2    1    3    .    .    3    2    2    .    .    .    .    .
      Gene299   71   46   10   29   80   36   20   28   39   55   36   35   34   53
      Gene300    2    3    4    1    7   18    9    2    4    2    4    1    8    6
      Gene301 3992 1464 2117 2647 4404 3027 2540 3087 2853 2927 2416 3674 3363 3338
      Gene302    5    .    .    1    4    1    1    .    .    1    .    1    .    1
      Gene303   35   13   31   24   48   20   22   37   22   13   33   17   23   35
      Gene304    .    .    2    .    2    .    .    1    3    1    .    .    3    .
      Gene305   71   40   43   80   78   30   43   41   44   26   37   37   66   30
      Gene306  198  154  101  133  193  120  189  170  209  128  161  147  161  190
      Gene307   52   29   26   22   40   39   19   44   33   36   40   36   34   59
      Gene308   14    5    8   14   26   25   20   20   12    8   10   17   13   13
      Gene309  728  413  409  628  610  445  491  384  528  627  366  469  344  533
      Gene310   63   34   10   56   63   38   35   71   56   82   48   46   44   51
      Gene311   11    4   10   16   20   15   15    5   16    3   22    3    1   30
      Gene312   13    9   18   12   43   35    9   39   27   11   10   16    9   10
      Gene313  160   57   80  164  203  102   75  130  116  142  127  135   68  127
      Gene314    .    3    2    5    4    8    3    1    7    4    3    3    2    7
      Gene315    .    1    .    .    1    .    1    2    1    2    .    1    4    1
      Gene316   19    4    4   17   11   18   15    4    6   13    1   20   28   12
      Gene317    7    .    2   11    6    1    4    1    3    5   17    9    2    4
      Gene318   16   20    8   35   23   32   20   13   18   17   32   21   14   25
      Gene319   21   12    8   25   30   14   11   10   10    5    7   10   22   20
      Gene320   43   24   33   37   47   52   54   54   80   59   54   41   33   41
      Gene321   54   19   46   62   61   60   49   60   46   45   57   59   55   42
      Gene322    2    2    3    2    .    3    1    9    1    .    6    4    3    3
      Gene323  136   97   83  159  194  110   88   85  160  129  120  124  115  137
      Gene324    .    .    .    .    3    .    .    1    .    .    1    .    .    .
      Gene325  371  186  254  353  497  324  324  385  287  320  327  422  248  365
      Gene326    2    6    .   10    5    1    3    1    8    4    1   11    6    .
      Gene327  377  170  191  324  481  303  294  438  378  289  318  362  400  315
      Gene328  147  142  381  492  365  420  454  101  406   53  457  125  117  491
      Gene329  218   60   51  120  167   66  106  193   89  155   95  210  188   95
      Gene330  413  271  172  303  362  224  326  293  349  203  247  303  242  326
      Gene331    5   24   14   34    8   12   11   13    8    6    5   12    9   17
      Gene332   13    9    7   16   32    9   16   30   10   13   19   31   27   18
      Gene333   62   16   14   26   37   30   24   70   20   47   37   55   36   39
      Gene334    1    .    .    .    3    .    .    .    .    1    .    .    1    6
      Gene335   21    4    8   24    7    9   14   13   17   11   28   16   14   16
      Gene336  179   86  104  178  132  111  151  145  136  144  138  158  124   74
      Gene337   16   11   12   23   38   10   17   11   19   16   28   19   11   27
      Gene338    3    3    1    4    5    1    6    7    7    .    2    5    9    3
      Gene339  109   51   56  106  151   60   56   67   41   75   55   75   71   85
      Gene340   82   33   36   44   81   39   48   67   42   84   41  108   51   44
      Gene341    8   11    7   10    9    7   13    6    7    7    9   12    1   11
      Gene342   57   19   38   65  131   44   54   94   61   41   56   76   48   99
      Gene343    .    1    .    4   14    .    2    5    1    .    .    3    7    5
      Gene344   43   19    6   29   37   27   19   46   18   29   15   35   64   28
      Gene345   21   37   26   49   46   45   48   27   33   36   39   30   48   27
      Gene346    .    1    .    2    4    .    .    1    2    .    .    4    1    .
      Gene347   26   12   12   26   20   21   12   25   33   14   50   26   24   30
      Gene348   16    9    9    7   12    5    5    4    8    6    4    7    3   18
      Gene349  121   60   82   95  145  127  117  116  117   99  138  104   91   82
      Gene350    6   12    .    6   11    6    3   10    3    9    2    8   16    1
      Gene351   35   32   34   32   32   42   34   30   21   41   27    8   20   25
      Gene352   11    .    .    6   11    3    .    8    6    4    3    8   11   12
      Gene353    .    7    .    .    .    2    2    .    .    1    1    .    1    1
      Gene354  220   99  127  212  410  196  213  176  196  209  258  204  188  224
      Gene355   10   14   18   14   42    8   19    9   16   10   26   10   20   11
      Gene356  122   34   47  120   84   65   81  113   60   66   49   75   93   95
      Gene357   13   10   20   19   37    4   21   15   26    9   15   22   11   25
      Gene358   15   11   18   26   30   22   26   20   22   12   13   18   16   12
      Gene359    3    .    .    .    2    .    .    2    .    2    1    2    .    .
      Gene360    5    6    1    8    7    5    6    4    8    1    9   11    7    2
      Gene361    4    2    7    4    6    5    4    7    9    2   13    7    7   12
      Gene362   23   11   20   35   47   15   18   31   15   11   25   15    6   40
      Gene363   16   12   20   24   45   15   20   14   32    5   23    4    6   46
      Gene364   31   25   20   13   34   57   32   43   34   29   21   28   17   35
      Gene365   35   22   34   53   49   78   37   48   37   29   57   53   26   56
      Gene366  272  108  203  104  401   97  194  247  210  105  204  139  213  171
      Gene367   21   38   57   45   79   60   49   72   56   53   69   53   46   53
      Gene368    6    1    1    2    4   10   12   10    8    1    8   13    2   12
      Gene369    3    9    3    4   12    8    7    3    7    3   11    4    3    6
      Gene370  187   88  118  173  235  132  148  152  184  145  247  149  200  181
      Gene371   13    7    1    1    8    1    4   27    5   23    7   23   27    4
      Gene372  137   68  130  167  146   90   85  198  130  128  112  153  113  147
      Gene373   29   43    6   26   42   18   31   22   17   47   18   14   21   35
      Gene374   47   50   57   60  108   41   77   64   57   51   76   49   68   65
      Gene375   29   13   12   15   37   11   10   17   15   34   10   28    8   20
      Gene376   33    7   18   12   32   18   35   15   14   34   13   15   22   17
      Gene377   66   43   32   42   61   57   44   66   24   83   35   80   79   21
      Gene378   91   17   20   36   50   29   49   46   29   62   40   56  106   18
      Gene379 1436  732  940 1242 1694 1166 1078 1055  902  999 1130  986 1146 1244
      Gene380    4    1    8   10    3    3    5    3    2    2    5    2    2    2
      Gene381   25    2    6   18   13   11    9   20   15   26   16   16   27    9
      Gene382    2    .    1    2    8    3    .    .    .    2    6    3    .    3
      Gene383    .    .    4    .    3    2    .    .    2    1    2    4    2    1
      Gene384   45   25   25   46   39   37   17   31   31   56   26   26   21   39
      Gene385   70   38   12   45   81   15   18   33   23   34   58   29   49   36
      Gene386   41   26   36   60   56   26   51   48   35   37   76   23   20   36
      Gene387  143  127  134  112  173  106  128  121  150  157  121  113  121  152
      Gene388    .    .    .    .    .    .    .    1    .    .    .    .    .    .
      Gene389   21    5   13    6    4    6    1   33    9   16   10   19   17   12
      Gene390  114   77   70  138  103  115  103   93  137   93  103  123   73  146
      Gene391    7    9   11   12   23   12   17    6   14    7    8   11    8   14
      Gene392   12    3    .    2    4    1    5    9    2    8    3    5    7    7
      Gene393   98   87   64  113  159   66   80   41   89   68  111   81   38  110
      Gene394   22    7   13   19   15   14    7   17    9   29   25   11   11   24
      Gene395   10    4    4   11   18    9   11   13   16   10    4    6    8    5
      Gene396    6    .    3    1    6    5    8    7   11    3   13    4   13    2
      Gene397   13   14   10   18   20    9   21   18   18    1    9   28   13    8
      Gene398   73   48   32   61   56   40   41   41   34   42   50   77   44   52
      Gene399   29   54   30   51   62   42   46   26   55   20   60   30   21   58
      Gene400   15   39   18   30   27   18   26   29   14   16   18   48   35   15
      Gene401    2    4    .    5   19    .    8    3    2    1    2    1    3    4
      Gene402  101   32   52   60  102   50   59   81   70   81   56   47   94   99
      Gene403    1    5    6   10   11   16   18    3   16    .   16    4    5   23
      Gene404  195   56   56  102  103   52   63  145   47  113   76  122   74   84
      Gene405    9    6   25   22   19   13   16   12   38   10   43   21   20   24
      Gene406   18   17    8   25   19   14   17   33   34   25   14   23   21   11
      Gene407    .    .    .    .    .    .    .    2    1    .    1    .    .    .
      Gene408   13   18   54   73   15   42   89   18   88   19   41   18   28   59
      Gene409   10   11    4    9   19    5    2   14    8   11    7    8    7    2
      Gene410  105   89  197  130  154  171  134  173  154  159  204  131  169  186
      Gene411    6    8    7    4    9   15   17    3   19    8    9   11   20    8
      Gene412   39   52   22   88  155   58   69   65   85   38   66   52   40  103
      Gene413    .    1    .    .    .    .    .    .    .    .    .    .    .    .
      Gene414  200   64  135  173  212  136  106  129  117  171  201  143  114  120
      Gene415   27   15   10   19   27   27   27   15   28   17   24   13   18   27
      Gene416   42   23   21   51   86   41   52   42   39   35   36   35   27   42
      Gene417   11    4   18    9    9    8   17   16   17    7   23    3   10   24
      Gene418   56   32   98  110   87   55   68   37   87   37   89   31   45  185
      Gene419    2    1    2    2    6    4    .    1    2    .    6    4    2    6
      Gene420   23    5   26   22   25   41   37   26   37   29   13   28   16   31
      Gene421  128   61   77  155  137  111  130  172  163  147  131  148  115  149
      Gene422   39   19    3   27   54   18   19   34   10   16   21   31   20   19
      Gene423    2    .    2    7    4    1    .    1    .    2    .    .    .    1
      Gene424   19   17    7   10   30   17   13   11   17   15   13   16   12   13
      Gene425   83   35   31   50   96   54   42   56   59   57   38   56   49   66
      Gene426    2   19    3    6   19    2    6    1    4    1    3    2    6    5
      Gene427    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene428    3    2    6    6   15    3    7    3    3    1    5    9    4    3
      Gene429    1    1    3    2    2    1    2    2   12    .    4    2    8    6
      Gene430   76   64   48   71   95  115   49   49   55   55   92   81   52   84
      Gene431    2    1    2    3    1    1    1    2    2    2    .    1    5    .
      Gene432   25   19   14   30   25   25   30   18   26   17   28   23   17   28
      Gene433  895  542  465  846 1088  526  771  560  805  617  783  613  748 1003
      Gene434   17    2    .    9    4    1    .    7    1    1    1    5    4    5
      Gene435    5    4    4    5    6    4    8   12    .    5    .    5    3    6
      Gene436  147   35   38   85   91   57   44  130   51   96   81  105   65   52
      Gene437   59   25   36   58   76   41   56   44   63   43   77   50   33   48
      Gene438   29   18   25   20   49   34   31   34   18   28   16   27   21   28
      Gene439   53   38   50   35   60   47   43   34   24   39   26   41   23   45
      Gene440   21   20   14   28   35    9   31   30   24   27   31   25   10   24
      Gene441   73   56   32   80  201   49   51   53   73  131   67   88  122   48
      Gene442  252  131  123  229  234  236  195  178  152  161  181  216  129  255
      Gene443    1    .    1    1    1    .    6    1    1    1    .    .    1    1
      Gene444  102   41   30   71   95   51   67   69  106   68   41   71   64   84
      Gene445   61   18   27   39   66   28   32   27   23   26   46   48   38   18
      Gene446   17   13    8   10   32   11   13   13   12   10    7    7    3   16
      Gene447    1    5    .    3    9   10    3    4    5    2    3   15    4    1
      Gene448   45   11   32   53   38   46   51   18   70   12   34   44   17   32
      Gene449 1194 1236  830 1536 2642 1320 1011 1068 1354  953 1315  958  802 1829
      Gene450    9    7    6    3   15    8    .    9    3    6    7   11    5   15
      Gene451   20   68   20   34   33   14   23   24   24   12   26   27   21   22
      Gene452 1091  408  399  467 1662  588  628  869  472  710  733  988 1009  793
      Gene453   34   23   55   48   61   42   43   37   46   39   31   40   42   85
      Gene454   42   16   14   24   32   36   41   44   18   21   36   29   19   33
      Gene455   39   12   18   13   22   20   15   11   25   21   19   36   17   33
      Gene456   10   16    5    1   27    5   21   21    9    4    3   16   14    9
      Gene457 6761 2429 2865 3844 5821 2948 3026 5230 3405 4711 4392 4456 4553 3603
      Gene458   73   43   41   90   96   73   65   41   63   69   87   71   42   69
      Gene459 1325  673  733 1048 1381  840  913 1004  817  761 1027  885 1137  938
      Gene460    1   17    2   25   34   27   14    8   12   20   13   16   17   28
      Gene461   11   14   12   32   57   14   32    5   25   19   25   13    7   21
      Gene462   18    5    3    3   14   15    4    3   11    2    5    9    2    4
      Gene463   55   31   21   30   49   43   42   41   44   64   63   62   48   65
      Gene464   90   35   97  116  100   93   90   93   83  100  137   83   74   67
      Gene465    6   26   17   15   30   25   12   16   39   25   11    7    5   33
      Gene466   41   36   11   43   66   25   21   23   32   52   49   50   34   24
      Gene467   29   27   16   25   42   19   40   28   39    6   30   26   10   33
      Gene468    9    7    1    6    8    7   11    4    6    4    9    7    3    3
      Gene469    2    .    1    2    1    3    .    .    3    3    1    .    .    3
      Gene470    1    .    1    1    .    1    3    2    .    3    8    3    .    1
      Gene471   45   32   27   32   52   27   37   56   42   21   25   47   31   57
      Gene472  127  110   91  118  160   89  140  168  124  124   85  144   64  116
      Gene473   63   30   53   93  128   31   58   49   42   56   46   84   40   53
      Gene474   69   39   19   38   49   35   23   32   35   43   42   91   37   30
      Gene475   15   25   38   59   32   33   36   18   58   16   47   24   16   72
      Gene476  384  167  175  376  614  202  276  308  276  398  266  343  208  351
      Gene477   13   10   13   19   35   32   25   14   42   22   28   26   19   67
      Gene478   12    3    2   18   14    4   17   29   15   10   13    4    9   14
      Gene479    5    2    2    2    8    1    7    4    7    1    6    3    3    6
      Gene480   25   11    5   18   28   16   17   12   23   17   18   10    8   19
      Gene481    2    1    1    .    6    3    1    1    1    .    5    1    .    2
      Gene482   65   25   53   47   36   51   69   41   42   43   95   50   40   45
      Gene483    .    .    .    2    .    .    .    .    .    .    .    .    .    .
      Gene484    1    .    9    2    2    2    3    .    5    2    .    1    3    5
      Gene485    3    6    7    8   31    7    4    3    7    9   23    7    1   13
      Gene486   62   34   75   92   70   63   49  106   51   41   83   63   61   58
      Gene487  121  115   85  125  200   73   95   93  111   72   63  122   77  105
      Gene488    7   16   12   17   11   22   18   14   30    6   20   18   15   17
      Gene489  634  276  460  430  664  329  378  579  431  627  444  716  685  384
      Gene490  344  180  295  415  410  250  242  288  367  344  362  253  303  299
      Gene491   10    8    8   11    6   11   14   14   21    8   16    8   11   28
      Gene492  140   65   70   90  161   72  100   99  126  149  140  126   75   87
      Gene493   12   14   13    7   14   11   13   11    9   20   27   11   10   17
      Gene494   38   12   20   39   48   29   42   37   32   39   24   30   29   30
      Gene495 1213  688  717  830 1322  895  878 1649 1029 1021 1456 1372 1307 1041
      Gene496   76   80  123  113  114   89   47   87  108   86   73   55   56   79
      Gene497   45   25   32   73   86   71   65   52   56   63   30   56   29   41
      Gene498   21   21   33   19   84   19   23   23   25   16   22   15   32   27
      Gene499    5    1    6    2    8    1    .   10    .    6    4    6    5   13
      Gene500    .    .    2    .    1    1    .    .    .    1    .    .    1    1
                                                                                   
      Gene1     87   78   51   63   25   30   47   51   32   45   20   42   67   11
      Gene2     25   23   14   11   21   34   25   20   15   27   11   25   34   25
      Gene3    698  892  663  729  654  731  471  934  687  749  732  682  847  593
      Gene4     88   64   67   81  112   65   64   94   58   68   49   66  142   48
      Gene5      3    4    2    1    .   10    6    5    5    7    8    5    6    5
      Gene6     33   38   56   72   41   64   65  145   65   54   43   44   68   86
      Gene7     39   72   42   60   94   55   69   90   47   50   81   79   76   49
      Gene8     79   72   73   66  111   76   98  112   62   53   91   50  126   57
      Gene9     53   80   44   48   46   48   64   73   62   44   31   49   94   55
      Gene10     6   13    2    4    9   10    4    .    8    5   11    5   13    1
      Gene11    14   35   21   38   18   21   39   23   21   18   26   22   27   31
      Gene12    33   34   36   17   25    5   40   54   27   19   32   14   13    7
      Gene13    52   79   30   77   77   63   38   67   58   51   61   67   80   54
      Gene14     5   14    8    9   17    5   12   12   10    5   16    6   10    2
      Gene15   210  145  246  109  233  134  139  177  174  169  170  140  208  134
      Gene16    19   25    4   24   14   13   14   25   22    8   13   24   18   26
      Gene17    17   50   22   62   21   18   65   34   25   44   16   31   33   25
      Gene18    25   21   13   41   15   23   31   32   16   26   32   20   44   22
      Gene19    44   17   19   26   27   37   27   46   39   36   31   24   40   36
      Gene20     1    .    .    .    .    .    .    3    .    .    .    1    .    .
      Gene21     1    1    4    .    6    2    .    2    .    2    1    .    6    3
      Gene22    65   82   87   96  116  133   94  105  114   74  140   63  122   78
      Gene23  1947 1936 2283 1753 2554 1957 2316 2611 2048 1588 1949 1495 2346 1847
      Gene24     4   12    9   15   18    8   21   14    6   12   13    6   20   14
      Gene25    36   28   22   22   43   20   37   20   28   16   16   27   35   27
      Gene26    45   56   34   57   59   27   38   50   25   39   27   32   43   23
      Gene27     .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene28    19   15   18   11   32   32   21   16   26   13   37   35   48   22
      Gene29    35   92   41   45  116   38   83   89   84   61   75   93   55   58
      Gene30   253  207  290  157  266  264  169  178  138  129  166  140  191  162
      Gene31  1110 2429 1406 1447 1121 1404 2484 1694 2517 1579 2499 2215 3090 1633
      Gene32    37   51   82   40   36   87   70   78   55   24   28   44   70   15
      Gene33    12   13    2    5   13    2   11    8   13    1    9    7   16    3
      Gene34    58   23   62   18   46   59   30   37   51   14   33   26   15   50
      Gene35   447  384  420  362  628  549  452  547  442  319  411  273  498  545
      Gene36     2    1    2    6    4    3    1    2    9    4    1    .   18    1
      Gene37    21    1   22    5   12   12    8    9    6    1    5    2    5    3
      Gene38    10   12   13    4   15   17   16   10    8   13   16    5   13    2
      Gene39   383  351  322  356  615  310  439  506  330  579  483  472  481  256
      Gene40     .    1    .    .    3    .    5    .    2    1    4    1    2    .
      Gene41    31   13   23   49   29   48   25   38   19   35   48   12   44   34
      Gene42     4    2    1   14    5    .    2    7    3    3   16    2    4    2
      Gene43    21   14    6    7   12    5    6    6   25    5   15    7   16   10
      Gene44    21   19   10   17   18   14    4   10    9   23   17   10   13   14
      Gene45    86  107  114  118  134  102  115  196  126   98  115   88  145  115
      Gene46  1953 2434 1606 1943 2773 1821 1890 2091 2136 1910 1834 1498 2429 1758
      Gene47     6   10   11   12   13   11    2    9   14    7    3    6    4    9
      Gene48    36   82   31   59   51   30   43   62   50   41   58   58   64   47
      Gene49    19   20   24   15   34   15   15   41   29   17   21   25   31   22
      Gene50     1    4    .    1    .    .    .    .    .    1    .    .    .    .
      Gene51    27   13   13   10   27   29   26   43   28   12   18   24   27    9
      Gene52     2    1    .    2    4    3    4    2    1    .    4    1    2    1
      Gene53    30   48   24   46   33   42   47   92   16   32   28   33   43   40
      Gene54    23   29   39   35   67   61   28   52   48   30   29   41   68   38
      Gene55     5   12    1    4    2    5    4   10    3    7    3    3    5    2
      Gene56     9    4   11    6   14    3    7    3    4   11    7   11   15    1
      Gene57    49   34   46   39   41   65   30   89   50   51   50   50   74   37
      Gene58    22   19   50   23   34   34   17   39   54   37   29   28   34   25
      Gene59    14   16   18   31   39   25   15   80   25   18   28   12   31   18
      Gene60     1    2    .    .    2    .    .    .    5    .    1    2    5    1
      Gene61     .    .    .    .    .    1    .    .    1    .    .    .    .    .
      Gene62    42   42   32   24   33   40   63   63   30   54   22   33   65   37
      Gene63   394  145  358  216  175  311  198  173  128  202  180  156  239  316
      Gene64   225  201  149  234  290  143  238  323  257  208  205  179  272  142
      Gene65    28   19   29   43   16   38   71   18   40   29   37   33   59   35
      Gene66    63   60   86   66   56   53   89   68  100   45   61   68  113   37
      Gene67   374  326  286  342  366  292  347  426  284  286  359  272  395  302
      Gene68     6    2    3    1    3    4    5    2    2    5    4    1    7    7
      Gene69    10    3    6    2    3    5   10    5    3    4    2    .    2    9
      Gene70   104   88  134   78   75  164   87  143   89   88  148   74  112  118
      Gene71    60   53   68   21   60   44   38   55   46   24   46   41   56   42
      Gene72     6   24   13   13   10   16   17   17    2   12    8    8    9    8
      Gene73     1    4    1    1    3    .    .    5    3    5    3    .    5    2
      Gene74  1657 1391 1691 1182 1902 1064 1232 2423 1732 1009 1366 1118 1330 1298
      Gene75    13   22   39   37   37   33   24   33   21   10   14    6   26    9
      Gene76    58   26   43   27   52   45   36   46   72   36   42   23   29   37
      Gene77    38   29   22   38   51   53   59   67   29   35   32   41   56   34
      Gene78   148  124  148  130  124  204  104  198  140  106   85   91  184  107
      Gene79   668  746  767  724  792  697  817  919  835  722  618  632  831  553
      Gene80    40   46   33   50  102   63   43   69   68   68   53   56   95   42
      Gene81     9    3    1    8   18    1   20    4   21    8   16    6   18    5
      Gene82     .    2    .    6    4    4    2    3    4    .    .    .    1    1
      Gene83    63  135   73   92  111   67  152   72  148  124  159  150  150   83
      Gene84    21   25   38   35   42   48   39   41   62   22   13   41   50   46
      Gene85   764  669  588  885  983  621  659 1265  637  539  549  688 1009  733
      Gene86     .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene87    31   25   51   12   25   57   38   42   35   24   58   30   54   31
      Gene88   130  134  163  136  140  182  130  164  129   91  106   92  156   80
      Gene89    29   23   35   20   13   18   25   24   28   20   25   20   31   20
      Gene90   126  138  126  242  120  129  176  278  154  155  177  113  235  151
      Gene91    34   95   57   57   36   66   64   49   62   58   51   44   65   32
      Gene92    13   19    6   22   12   17   14   17   19    6   18    6   15   13
      Gene93    19   36   55   18   15   38   18   31   15   17   42   50   35   24
      Gene94    30   46   35   51   54   55   61   42   58   35   42   33   61   17
      Gene95     8   14    5   12    3   23   10    4   13   10   19   10   21    1
      Gene96     1    .    .    .    2    1    3    1    .    .    .    2    .    .
      Gene97    13    1    5    6    3    7   12    6    6   13    4    4   10    8
      Gene98     6    1    1    1    5    4    3    3    .   14    4    2    5    8
      Gene99     6   10    7    1    5    5    1    3    6    2    .   12    8    4
      Gene100  124  156  118   97  158  123  155  181  141  100  162   89  140  119
      Gene101   10   11   13   11   20    7   17   16   22    2   13    8    2   12
      Gene102   75   67   64   54   54   64   68   98   76   44   94   93   76   56
      Gene103   25   27   27   34   20   26   33   34   33   22   37   31   64   22
      Gene104    .    .    .    .    2    .    1    .    .    1    1    .    .    .
      Gene105   12   12    5   11    8    5   15    7   16   15    9   12   11   18
      Gene106   51   27   39   69   34   36   57   63   31   24   34   33   32   53
      Gene107 2369 3961 1961 2897 5011 2700 2885 5784 4008 3414 3153 3438 3593 1874
      Gene108    .    .    4    .   11    .    3    1    4    .    7    1    1    .
      Gene109  169  141  120  148  160   84  130  227  189  122  142  131  183  117
      Gene110  119  131   65  126  102  103   74  115  146   73  115   73   75  129
      Gene111  420  329  412  390  475  336  405  389  487  355  351  309  398  337
      Gene112    8    2   13    2    3    2    5    2    3    6    1    6   11    5
      Gene113   26   28   22   39   36   11   55   48   20   35   35   38   43   16
      Gene114   12    7   10   20   23   18    3   21    6   12   19   10   14    8
      Gene115   38   27   39   13   16   63   27   33   32   23   13   19   45   51
      Gene116   40   41   35   46   27   40   46   63   50   24   24   34   43   21
      Gene117  497 1000  687  586  826  671  704 1073  681  633  587  853 1084  529
      Gene118    9   12   21    4   11   11   16   11   19    9   13   10   13   10
      Gene119   11    4    5    4    3   19    9    2    6   12    3    1    9    9
      Gene120   71    3   50    9    5   39   33   18   11   22   13   25   27   34
      Gene121    9    7    6    8   25    2    3   10    4   11    4   11   10   12
      Gene122   56   23   57   56   29   81   21   37   20   26   47   19   50   73
      Gene123 1645 1925 1419 1942 2342 1753 1844 2597 1705 1640 1637 1761 2013 1468
      Gene124   42   34   38   52   49   32   39   33   64   52   38   20   35   32
      Gene125  626 1551  653 2598 3098  555 2562 2555 1744 1657 1636 2064 2528  593
      Gene126   43   47   38   20   74   48   46   71   44   32   63   29   54   27
      Gene127  150  183  121  151  147  186  161  139  159   78  201  133  197   93
      Gene128    3    6    9    2   14   17   21   20   15    2   11    8    9    4
      Gene129  115  136  120  115  148  135   82  231  114  115  152  111  154   83
      Gene130   37   31   48   28   78   36   51   58   54   58   38   34   53   63
      Gene131   13   35   20   22   42   17   29   46   25   26   13   21   16   18
      Gene132   12    9   19   20   19   28   33   17   23   24   14    9   19   18
      Gene133    5    7    1    4    7    9    2    6    4    2   11   10    7    7
      Gene134   10   13    3   22   16    3   34   19   30   24   20   14   37    7
      Gene135    7    9   10   15   18   14    5   10    8   10   16    6   12    4
      Gene136  136  130   81  133  124  119  108  160  127  137  149  128  103  109
      Gene137    6    3   21    3   16    5    8   14    7   11    7    1    4   10
      Gene138   23   18   19   29   34   29   20   35   24   35   31   30   40   22
      Gene139   28   10   38   15   31   35   15   44   14   15   22   16   32   31
      Gene140   22    6   25   11   17   17   10   14   18    8    9    6   26   13
      Gene141   15    3   16   17   30   13   26   12   23   14    7   12   24   14
      Gene142  161   93  142   92  311  165  100  204  130  117   85   52  143  133
      Gene143    1    5    1    4    9    3    3    1    4    1    3    2    4    4
      Gene144   10    4    6   11   11   10    4   15   10    8    9   11    9    5
      Gene145   55   19   55   36   34   40   31   65   67   70   46   50   32   31
      Gene146   86  329   74  321  125   90  228  168  355  268  294  301  264   66
      Gene147   39   85   52   52   67   54   44   83   87   66   40   60  117   55
      Gene148  173  180  151  214  162  198  130  160  161   99  127  279  267  142
      Gene149    .    .    .    .    .    .    1    .    .    .    .    .    .    .
      Gene150   13   15   12   16    6    5   13    3    2    5    8    3   11    5
      Gene151   68  120   95  127  174   64  122  211   44  108  142   84  151   58
      Gene152   18    .    5    2    3    8    8    5   12    3   13    3   11    8
      Gene153   10    .    6   10    7   16    3    6    3    5    1    .    4   12
      Gene154    .    .    1    .    .    1    6    .    .    .    .    2    .    .
      Gene155   43   38   20   52   11   42   16   49   40   12   24   37   57   17
      Gene156   62   56   54   48   94   77   54   77   75  109   77   67   67   37
      Gene157    1    5    2    .    2    .    2    5    2    2    .    1    .    2
      Gene158   74   85   57   54  136   71   75   81   95   72  115   71   92   80
      Gene159   14   40   20   25   37   17   19   43   18   11   37   19   35   24
      Gene160    6    7    6   11    2    5    6   21   13    8   11    8   10   18
      Gene161   25   52   12   30   66   31   54   38   43   21   32   29   34   23
      Gene162    .    .    .    .    .    .    .    .    .    1    .    .    1    3
      Gene163   25   24   10   22   42   17   21   11   22    6   35   16   31   10
      Gene164   12    7    5    8    5    4    8    4    4    8    1   13    2    1
      Gene165   54   72   59   71  206   54   99   86  167   66   69   73  163   60
      Gene166   74   76   79   83  106   70  105   79   58   51   40   66   66   49
      Gene167    4    8    9   21   16    8   24    7    5   33   20    8   19    8
      Gene168    1    5    3    1    1    .    1    1    3    .    1    .    .    .
      Gene169    1    5    4    1    3    3    2    1    3    2    .    .    3    2
      Gene170    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene171  135  114  153  134  166  162  181  225  137  125  101  147  158   66
      Gene172    2    6    4    6    7    .    1    5    3    2    6    3   15    1
      Gene173   72   62   57   25   27   80   42   33   32   34   28   46   64   36
      Gene174   29   13   14    4   12   21   22   34   34   14   14   19   26   30
      Gene175   10    9    8    2    6    6   12    8   11    2    7    2   10    4
      Gene176   11   12    3   13    8   14   16   15    7   14   16   12   21    3
      Gene177 1573 1986 1283 1378 2173 1762 1895 2386 2160 2185 1550 1169 2406 1361
      Gene178    1    .    .    .    1    .    1    .    1    .    .    1    .    2
      Gene179   69   69   55  129   70   66   74   92   85   67   80   68  126   45
      Gene180   41   22   30   28   32   31   29   41   52   39   10   31   17   24
      Gene181    2    .    .    2    .    .    .    1    .    .    .    1    .    .
      Gene182  116  115  100   61   84   84  181  123   98  116   60   85   60   92
      Gene183   18   37   27   62   63   18   54   58   39   28   42   30   70   20
      Gene184   61   81   47  108   96   44   50  102  111   61   70   86   80   82
      Gene185   23   16   17   18   21   11   20   25   15    8   19   14   19   12
      Gene186    3   12    4    4    3    6   28    3   11    7   10   13   18    5
      Gene187   65   50   63   55   72   51   63   94   52   46   68   23   74   54
      Gene188    8    2    4    1   15    3    2    2    3    4    1    .    1   12
      Gene189  123   88   79  108  119   98   75  106  124  101   98   84  119   53
      Gene190  777  954  747 1006 1255  897 1197 1324 1142 1054 1168  954 1400  622
      Gene191   13   22   27   19   16   22   19   18   15   23   23    7   18   16
      Gene192    3   12    1   10   14    7    3   11    4   19    3    6    8    2
      Gene193    3    9    3    5   19    9   14   11   11   12   11   10    4    1
      Gene194   32   11   15   24   28    7   39   15   15   17   25   22   23    9
      Gene195    6    1    4   10   18    1    7   16   13    3    5    4   11    4
      Gene196  250  115  229  230  295  305  251  142  261  153  239  179  166  312
      Gene197   34   27   29   36   38   29   22   27   13   13   31   28   33   12
      Gene198   84  163   49  119  120   72   67  107   65   59   86   94  139   86
      Gene199   19   31   28   19   30   47   28   31   30   40   27   38   38   24
      Gene200   18   26   23   31   23   12   23   26   16    2   18   18   23   11
      Gene201   22    3    3   10   18   14   11   21    4   21   15    4    7   11
      Gene202 1027  895  934  771 1110  864 1116  955  846  956  891  779  883 1032
      Gene203   10   18    9   16   10   14   14   10   24    7   14    9   15   26
      Gene204    .    .    .    2    .    .    .    .    1    1    1    .    1    .
      Gene205   47   53   33   73   73   42   39   55   71   56   74   50   42   40
      Gene206   77  104  117   93   66   71  117   51   48   38   87   79  130   78
      Gene207    5   10   11    5   12   10   10   12    4    .   20    3   13    9
      Gene208    8    1    4    2    5    3    4    8    1    1    .    .    2    2
      Gene209  219  166  188  142  305  293  243  269  227  223  225  170  373  161
      Gene210   79   50   39   72   69   30   45  112   61   55   86   44   88   65
      Gene211    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene212    6   11   11   22   17   12   14    9    9    8    8   27   14   17
      Gene213   11   14   14    6   12   11   13    8   16   10   11   12   11    8
      Gene214   34   26   35   18   48   13   23   46   35   28   37   31   23   26
      Gene215    4    4    2    5    2    2    2    2    .    .    6    1    .    7
      Gene216   46   22   19   15   29   40   35   42   42   50   29   43   40    8
      Gene217   39   54   26   60   55   50   82   56   57   34   41   51   49   67
      Gene218   64   43   70   63   22   37   69   40   39   37   59   64   71   39
      Gene219    .   11    .    6    3    4    .    .    8    7   11    2    4    3
      Gene220   90   69  105   74   88  113  116  122   62   46   65   72   77  133
      Gene221   33   21    8   18   18   26   14   21   16    7   17   21   30   19
      Gene222   28   20   18   13   16   19   20   16   18   20   17   18   26   26
      Gene223  128  161  143  127  163  120  112  160  123  103   95   81  145  116
      Gene224   27   19    6   21   40   11   21   33   12   14   30   32   30   25
      Gene225    4    2   11    4    9   16   11    7    4    6    6    9   11   11
      Gene226   16   25    6   27   15   35   29   25   15   16    9    6   25   17
      Gene227   28   19   13   20   26   27   23   23   12   29   22   25   23    7
      Gene228   62   40   51   37   50   64   64   53   50   51   48   38   36   37
      Gene229   41   63   44   69   63   59  106   65  100   54   87   47   93   66
      Gene230    .    5    9    2    6    5    2    3    8    3    1    9    2    2
      Gene231   15   11    4    3    5   11    2   11    1    3    7    .    6    1
      Gene232   91   90   90  106  120  119  119  147  157  127   81  116  120   79
      Gene233   13    4    4    6   24   13   11   25   17   15   10    4   23    6
      Gene234    .    1    2    7    3    3    3    7    7    3    4   10   16    1
      Gene235   36   43   29   56   65   38   45   48   19   41   28   36   43   42
      Gene236    4   27   34   27   29   20   12   17   21   20   17    9   23   28
      Gene237  144  105  274   93   78  270  104  152   69   58  105   98  103  158
      Gene238   84   97  120  116  143  129  109  111  104  104  131   81  102  117
      Gene239   19   39   25   34   24   24   22   42   40   22   27   31   15   35
      Gene240   10   10    8   18    3   12   19   15   14   14   10   12   12    5
      Gene241   70   33   54   40   55   73   50   41   72   18   49   35   83   42
      Gene242    1    1    2    2    1    .    3    1    1    .    2    .    1    2
      Gene243  188  114  169  109  231  162  150  323  178  155  123   96  212  134
      Gene244    1    4    1    3    4    7    4    4    5    1    .    .    .    2
      Gene245  109   85   51   79  122  128   92  113  110   55  104   93   97  107
      Gene246   15   10   17   10   29   16    9   25   15   18   11   12   20    4
      Gene247    7   26   13   22   33    9   15   31   17   10   14   18   31   15
      Gene248   18   15   11   10    6   17   17   12   16   12   16   19   17    8
      Gene249    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene250    4    1    1    1    1    2    .    .    1    .    3    .    3    2
      Gene251   11   33   18   25   18   18   40   33   44   31   38   46   24   12
      Gene252   38   37   48   22   28   34   21   24   22   15   19   22   33   45
      Gene253  115  189   81  151  231  108  153  203  224  100  138  144  177   85
      Gene254   83   62   74   49   56   51   88   91   81   60   61   51   81   58
      Gene255   63   83   78  114   96   68   66   61  135   84  102   68  124   84
      Gene256   56  105   67   67  186   64  162  194  155   84  113   53  134   80
      Gene257   24   23   18   12   21   25   43   20   14   13   30   18   36   16
      Gene258   16   10    .    8    6    4   15   10    7    5   18    5   15    9
      Gene259    .    .    .    .    .    .    .    .    1    2    4    .    .    .
      Gene260   68   41   42   62   62   65   73   79   52   69   93   68   37   37
      Gene261    8   25    8   18   27   15   17   21   25   21   16   23   31   15
      Gene262    7    9    4    6    6    4    4    2    9    4    6    .    7    .
      Gene263    4   12   10   13   10    1   23   20   21   17   17   18   16   11
      Gene264   36   40   46   27   50   55   33   34   59   37   45   36   33   20
      Gene265   20   13   17   13   14   11   13   17   23   12   20   33   23   17
      Gene266    2    .    .    2    4    1    1    2    .    2    1    1    1    2
      Gene267   60   47   60   58   81   87   56  110   54   60   53   49   83   32
      Gene268    7    4    5    5   10    .    2   10    9    2   18   10    5    7
      Gene269    6    4    6    9   10   11   10    4   15   12    6    8    6    2
      Gene270  137  114  162  190  183  184  175  220  167  134  142  147  205   82
      Gene271 1254  898 1300 1096  963 1167 1136 1283  870  929  882  726 1209  569
      Gene272  105  123   36   60   94  117  107  129  124   84   87   54  126   56
      Gene273    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene274    .    5    .    .    .    .    .    .    .    .    .    .    2    .
      Gene275    6    1    4    1    3    1    1   13    6    6    2    .    4    1
      Gene276   12    1   13   21   12    5   10   18    8   16   21   13   16   12
      Gene277   20   41   24   39   19   24   40   25   35   39   23   24   32   28
      Gene278  161   72  111   61   74  105   69   71   49   24   63   65   60   70
      Gene279   16   42   29   58   36   23   57   35   48   49   58   40   40   17
      Gene280   36   16   13   33   25   28   29   26   42   28   38   18   19   29
      Gene281    2   44    8   24   23    5   42   34   46   37   38   40   45    8
      Gene282   10    9   14   11    7   22    6    8    1   11   16    8   13    7
      Gene283  248  250  304  207  408  279  249  467  363  299  309  235  274  185
      Gene284    9   10   11    7   10   15    5    4    3    8   10    4   10    8
      Gene285  265  198  238  198  275  292  238  273  203  127  168  139  257  228
      Gene286   84  119   99   95   96   83   80  143   89   67   98   77  107  122
      Gene287   27   45   51   28   41   39   29   53   41   31   38   21   37   36
      Gene288   16   12   18    7   11    8   16   17    9    4   10   16    7    9
      Gene289   57   85   41   99  148   98  106  106  107   69  114  112  100   66
      Gene290   35   30   30   52   77   52   27   62   41   35   28   43   45   32
      Gene291    9    3    5   11    2    4    9   10    6    .    2    6   10    6
      Gene292 1096 1075  860  940 1240 1023  996 1072 1038 1047  909  814  984  743
      Gene293    9   21    6   14    8   21   15   25   28   15   15   16   24   10
      Gene294 1801 2172 1607 1480 2522 1344 1683 2365 1687 1529 1619 1696 2175 1232
      Gene295   26   23   26   51   61   31   52   68   38   39   40   47   57   15
      Gene296    7    .    3   10    5    1    4    2    1    1   14    9    4    1
      Gene297   29   23   22   15   55   29   43   71   11   18   37   25   20   29
      Gene298    .    .    1    4    .    2    1    5    .    1    .    .    3    2
      Gene299   35   39   46   81   65   46   58   37   47   50   40   26   68   45
      Gene300    5    3    3    4   10    7    6   18    7    6    5    9    9    8
      Gene301 4229 2635 3304 2432 3498 3903 2808 3629 3299 2207 2926 2146 3329 2436
      Gene302    1    .    1    1    2    .    1    2    .    .    .    .    3    .
      Gene303   30   34   20    8   24    9   21   17   18   19   45   25   36   14
      Gene304    1    .    .    .    .    2    .    .    .    1    1    .    .    1
      Gene305   33   53   27   41   65   65   68   95   52   30   27   50   49   52
      Gene306  125  140  137  181  131  127  117  187  124  150  276   88  186  135
      Gene307   35   48   33   52   76   18   29   19   37   19   12   56   23   26
      Gene308   14   12   16   12   13   12   16   17   16    7   16   12   20   11
      Gene309  489  480  463  410  577  404  550  530  369  483  387  433  623  466
      Gene310   72   60   37   34   50   89   28   72   57   36   68   39   47   54
      Gene311    6    6    6    9   30   15    3   18   10    .    3    2   13    6
      Gene312   10   40   20   10   21   27   21   18   22   21   27   15   29   16
      Gene313   98  123   98  135  139   92   96  157  102  108  134   93  111   72
      Gene314    2    4    8    3    8    9    2    9    2    4    4    7    5    6
      Gene315    .    .    .    .    1    .    8    1    1    8    4    1    7    1
      Gene316   13    6    3   13   10   10    8   12   18   16    8   24   15   14
      Gene317    2    8    2    4   14    2    .    4    .    6    1    5    6    6
      Gene318   18    8   30   26   10   11   33   24   29   30    5   16   16   14
      Gene319   15   10   21   19   16   10   20   19   12    6    3    5    7    8
      Gene320   21   27   28   54   22   41   36   58   47   19   68   69   28   35
      Gene321   58   55   38   55   51   53   39   75   50   46   43   36   53   39
      Gene322    3    .    2    .    2    1    .    3    4    8    3    1    1    .
      Gene323   98  121  109  143  142   91   99  107  103   92  143  109  131  112
      Gene324    .    1    .    .    1    .    .    .    2    .    1    .    1    .
      Gene325  223  291  349  333  359  347  393  434  292  276  392  360  375  212
      Gene326    1    1    5    6    1    3    6    3    1    .    3    1    8    2
      Gene327  344  263  315  218  411  327  251  413  325  267  273  141  361  209
      Gene328   85  311   52  205  522   50  247  322  282  200  267  179  256   92
      Gene329  188   84  177  106  110  157   85   89   95   62   88  115  136  183
      Gene330  255  183  236  171  269  199  232  374  312  276  271  277  395  203
      Gene331   10   20   12   13   11    1   10    9   15   12    9   12   28   19
      Gene332   29   17   16   32   19   14   14   19   16   10    7    7   42   21
      Gene333   16   20   34   33   39   17   25   37   13   44   45   20   36   20
      Gene334    .    4    1    1    2    6    5    .    .    1    4    3    1    .
      Gene335   14   12    7    4   18   14   18   32   20    7   18   12   31   10
      Gene336   93  157   77  127  132   99  156  153  205  147  117  102  132  149
      Gene337   16   14   26   34   13   12   40   29   23   24   40   23   58    7
      Gene338    .    7    3    7    1    2    3    6    9    7    6    .    9    4
      Gene339   72   72   66   84   65   62   88   93   48   46   62   51   62   56
      Gene340  101   41   85   30  112   52   46   42   38   22   60   14   67   67
      Gene341    6    5    8   11    7   17    4    9    8    7    3    8   15    8
      Gene342   73   53   43   88   78   60   81   72   84   51   64   64   68   48
      Gene343    1    .    2    5    3    .    .    1    1    .    5    3    1    1
      Gene344   38   26   53   20   23   51   31   23   32   37   30   16   19   23
      Gene345   54   35   35   39   59   60   44   73   43   58   39   30   48   30
      Gene346    .    1    .    .    2    .    1    .    .    .    1    .    3    .
      Gene347   25   23   38   13   25   24   34   24   44   14   18   23   27   15
      Gene348   10   13    5   10    6    5    8   14   10    6    3   12   32    2
      Gene349  127   87  112  112  135   89  118  146   87  122  102   87  104   72
      Gene350   19   10    5    5    2    3    4    5    8   18    8    7   12    6
      Gene351   35   33   36   36   25   51   33   49   43   23   17   21   32   21
      Gene352   11   10    3    7    8    1    6    4    3    4    4   10   10    5
      Gene353    1    2    1    1    2    6    2    3    2    7    2    1    1    .
      Gene354  192  175  227  239  199  173  190  275  239  185  136  161  292  173
      Gene355   10   29   12   12   31   12   15   17   30   20   13   15   34   14
      Gene356   44   37   57   56   98   76   56   89   61   31   54   45   45   77
      Gene357   13   11    7   17   18    8   19   34   17    9   16   13   28   10
      Gene358   11   18   23   11   16   15   12   17    9   38   13    7   28    7
      Gene359    1    .    1    1    3    1    4    5    1    1    .    .    4    .
      Gene360    .    3    2    8    3    1    4    9    4   11   13   13    5    5
      Gene361   10   13   10   11    6    .   24    6    5    4    6    3    8    8
      Gene362   17   30   30    7   13   29   15   21   13   10   27    5   15   14
      Gene363   16   29    9   20   43    8   23   40   24   10   20   29   16    2
      Gene364   22   33   23   36   62   28   38   49   29   16   44   51   42   21
      Gene365   59   41   42   34   73   43   64  110   66   40   43   56   58   24
      Gene366  114  234  150  253  279  164  144  376  169  105  173  133  251  206
      Gene367   31   49   34   59   63   74   61   73   70   56   55   58   73   51
      Gene368    5    5    1   10   15    2    6   11   10    1    1    2   13    4
      Gene369    4   15    5    6   10    7   10   20    8   11   17   11   23    2
      Gene370  136  177  163  170  193  173  206  192  148  130  222  135  196  116
      Gene371   33    9   26   15    5   16    6    3   21   16   20    7   12   30
      Gene372   92  131  104  124  156  144  113  125  161   88  141   79  144  102
      Gene373   23   36   29   14   35   10   24   19   11   19   14   11   21   18
      Gene374   86   76   70   74   76   32   80   74   55   55   58   43   75   49
      Gene375   28   25   20   26   16   41   28   18   28   19   47   12   25   38
      Gene376   22   35   19   17   23   13   36   32   12   12   15   15   20   18
      Gene377   88   50   63   42   46   64   52   53   48   49   40   38   22   72
      Gene378   91   50   42   49   38   46   34   49   27   45   34   22   35   49
      Gene379 1048 1110 1074 1018 1418 1032 1098 1353 1527  962 1138 1116 1650  798
      Gene380    8    5    3    5    3    .    3    1    3    2    6    .    5    6
      Gene381   15   24   21   16   17   23   12   22   15   10    9    9   12   32
      Gene382    2    .    1    .    1    .    2    1    7    6    .    1    1    2
      Gene383    1    2    4    .    1    .    .    3    1    .    1    1    3    .
      Gene384   32   26   15   28   35   37   36   59   33   30   20   32   44   26
      Gene385   34   37   23   46   69   45   26   43   28   29   42   49   54   39
      Gene386   26   41   41   45   58   29   26   46   51   36   35   17   41   31
      Gene387  121   90  169  127   80  163  150  188  130  127  159  101  188  125
      Gene388    .    .    .    1    .    .    .    .    .    .    .    .    1    .
      Gene389   12   20   19    2    5   13    1   11   10   23   11    3   14   25
      Gene390   84   87   87   66  109   91   75  140  156   83  115   92  100   71
      Gene391    6    8    2    8   19    7   12    8    7   10    8    3    8   14
      Gene392    9    1   10    2    9    9    7    8    4    4    1    4   26    4
      Gene393   40   56   56   98   64  106  119   73   60  151   58  101  118   41
      Gene394   11   32   22   13   12   23   10   16   10   13   11   15   19   16
      Gene395    7    8    7   13   16   14    7    7    8    5    7    7   13    8
      Gene396   10    2    6    2    5    3   13    2    5    6    2    2    2    3
      Gene397   10   13   12   18   24   20   16   13   17   10    8   10   12   12
      Gene398   53   78   68   32   61   47   40   54   69   52   31   40   36   22
      Gene399   25   49   30   43   60   63   45   69   54   45   69   43   42   29
      Gene400   12   39   17   43   35   22   12   30   22   30   16   14   47   12
      Gene401    4    1    2    5    8    2    3    7    4   14    4    3    4    1
      Gene402   55   77   65   50   65   91   49   84   60   55   56   59   89   56
      Gene403   11   15    1   14   16    7   12   37   16    9   15    5   15    1
      Gene404   85   90   97   63  149  114   73   82   77   78   81   55   85  118
      Gene405    8   16   11   15   20    9    9   22   11    7   21   18   19   10
      Gene406   21   24   12    6   10   33   16   28   13   20   22   12   27   12
      Gene407    1    1    .    .    .    1    .    4    .    .    .    .    2    .
      Gene408    9   28   21   10   58   30   20   78   24   11   42   20   26   24
      Gene409   32    4   11    6    8    6    9    3   10    4   14    8   18   10
      Gene410  110  153  150  159  214  173  163  259  112  126  113  116  123   72
      Gene411    6   16    5    9   20   12    9   16    5   10    3   12    5    5
      Gene412   53   86   55   46   66   64   50   85   64   62   55   81   88   28
      Gene413    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene414  104  141  131  131  195  146  188  247  116  123  147   97  113   96
      Gene415   17   18   15   25   29    8   13   32   19   13   15    4   29   12
      Gene416   33   39   43   62   35   26   74   49   58   32   54   32   23   29
      Gene417   18   21    7   21   22    5   17   22    8   12    8   22   31   10
      Gene418   57   80   53   43  124   46   66  132   55   38   68   47   98   33
      Gene419    3    1    1    .    .    .    2    .    6    2    5    .    3    8
      Gene420   18   29   21   18   25   18   37   36   28   42   30   22   38   18
      Gene421  129   99  120   81  188  100  106  112   68   83  124   67  138  120
      Gene422   38   23   45   31   46   32   25   22   15    9   23    7   23   36
      Gene423    1    .    .    1    1    .    1    1    3    1    .    3    2    3
      Gene424   21    8   23   14    9   17   26   18   14    6   16   10   18    7
      Gene425   56   66   51   48   63   35   46   37   72   35   40   37   65   37
      Gene426    4    4    .   13    6    8    4    3    2    5   11    4   11    4
      Gene427    .    .    .    .    .    .    .    1    .    .    .    .    .    .
      Gene428    1    6    8    3    7    4    1    7    5    5   13    3    4    1
      Gene429    .    4    5    5    .    .    .    2    5    2    2    1    3    .
      Gene430   60   89   54   83   79   86   42   96   80   64  113   56   67   44
      Gene431    4    .    2    5    2    3    .    3    5    .    4    1    2    2
      Gene432   19   35   25   18   37   26   14   34   15   26   12   18   34    8
      Gene433  635  645  637  612  786  645  624  816  595  429  656  497  696  554
      Gene434   15   12    8    4    .   10    5    8    1    5    .    1   11    5
      Gene435   11    .    .    4   10    3    1    3    3    5    6    3    2    3
      Gene436  119   80   78   72   89  130   67   94  117   42   58   54   46   91
      Gene437   38   71   47   63   51   45   81   82  103   55   50   36  113   47
      Gene438   43   23   18   34   41   26   22   33   34   38   43   23   39   17
      Gene439   51   31   34   44   47   27   36   53   60   37   39   42   51   30
      Gene440   23   28   18   14   19   22   24   22   35   26   26   11   26   12
      Gene441   65   79   87   96   73  101   85   85  101   71  108   75   75   53
      Gene442  262  215  130  199  283  269  226  185  226  182  204  105  246  180
      Gene443    1    1    4    .    .    3    .    .    .    3    6    .   11    6
      Gene444   53   73   67   43   66   56   68   70   81   41   45   55   44   65
      Gene445   22   36   39   47   36   22   21   58   34   53   37   25   42   12
      Gene446   13    1    4   22   21    9   17   12   12   15    7    1   17    8
      Gene447    6    4    8    5    3    4    3    3    8   13   19    6    6    .
      Gene448   11   20   23    6   98   30   22   96   26   21   17   23   31   28
      Gene449  982 2011  968 2088 1331 1212 2270 1307 2231 1485 1626 1723 2295  924
      Gene450   10    5    5    2    5    8    2    9    4    2    5    6    4    3
      Gene451   23   47   32   23   38   28   55   47   35   28   32   40   31   14
      Gene452 1072  784 1117 1029  707  728  876  632 1026  826  855  839 1210  697
      Gene453   36   28   50   67   57   28   37   78   30   32   33   54   60   42
      Gene454   37   22   34   19   18   49   15   42   20   31   12   15   20   28
      Gene455   12   24   23   13   21   18   27   42   10   12    7   12   22    7
      Gene456   17   22   16   12    5    9   24   12   17   10   15   13   22    9
      Gene457 4877 3757 4772 3388 4049 4291 3499 4478 3249 2823 3047 2645 4618 3586
      Gene458   48   52   33   85   69   50   43   69   63   53   71   71   47   35
      Gene459  845  759 1104  785 1047  933 1110 1373 1331  758  946  797 1044  792
      Gene460   15   16   14   19   11    6   28   23    7   26    7    6   12   11
      Gene461    6   29   10   16   21    9   34   26   26   31   17   17   13    3
      Gene462    3    6    2    4   18    6    7    7   13    .    6    7    8    5
      Gene463   43   58   46   58   85   28   70   81   53   39   50   27   85   36
      Gene464   73  104   87   98  101  106   66  149   59   91   55   57   97   82
      Gene465   21   21    4   11   33   14   20   16   19   11   22   35   28   15
      Gene466   39   41   52   43   39   34   47   33   46   28   44   40   43   35
      Gene467   25   26   23   24   45   27   23   26   30   19   31   30   21   40
      Gene468    2    9    5   16    8    4    6    1    2    5    4    2    .   13
      Gene469    .    .    1    .    .    1    .    7    1    .    1    1    5    3
      Gene470    .    3    2    2    .    2    .    .    1    2    .    2    2    1
      Gene471   36   23   43   14   52   46   28   36   42   53   39   23   38   39
      Gene472  116  102  110   92  152   92  115   95  167   66  119  105  154   81
      Gene473   75   26   40   61   65   82   61   76   48   69   37   69   99   49
      Gene474   48   40   30   25   23   33   37   47   59   22   20   42   49   44
      Gene475   13   42   26   18   52   24   31   33   34   18   28   30   43   20
      Gene476  223  286  319  312  336  272  208  428  200  193  291  232  323  233
      Gene477   23   17   24   17   25   19   20   27   28   22   26   15   22   12
      Gene478    9   14   12    9    9   14    3    8    9    2    6    3   17    3
      Gene479    .    2    9    .    3    7    4    3   10    8    .    .    1    1
      Gene480    9   20   19   10   16   18    7   10    4   21   13    5   19   12
      Gene481    1    2    .    .    3    1    1    3    5    .    1    1    3    1
      Gene482   39   39   37   27   50   45   28   58   40   19   18   29   32   41
      Gene483    .    .    .    .    .    .    .    .    1    .    .    .    1    .
      Gene484    .    5    1    2    3    3    4    5    9    3    1    2    4    1
      Gene485    8    7    5   15   11   14    9   11    8    9    8    5    6    3
      Gene486   52   69   44   30  105   74   62  117   47   54   60   49   51   47
      Gene487   99   94   99   93  128  128   69   90   77  101  121   54  166   59
      Gene488   15   14   33   10   33   22   26   13    9    5   25    5    9   23
      Gene489  639  418  554  522  592  682  665  611  409  326  512  422  512  573
      Gene490  260  295  365  235  453  244  294  373  343  250  281  269  300  212
      Gene491    8    7   16   19   25   12   10   12    7   11   12    8   15   14
      Gene492  111   86   99  104  129   72   80   93   76  105  122   52  113   79
      Gene493   33   13   16   16    8   20   18   30   23   23   22   18   12   23
      Gene494   38   26   35   34   59   22   32   35   42   23   27   46   40   27
      Gene495  999  910  890  950 1167 1028 1052 1287 1071  807  901  885 1203 1056
      Gene496   55   62   54   76  137   57   73  112   80   44  133   81   89   63
      Gene497   46   59   41   36   38   39   48   76   63   31   39   24   50   55
      Gene498   24   29   23   26   60   18   35   17   28   28   41   26   35   22
      Gene499    8    4    5    2    5    8    5    .    7    4    9    3   12   14
      Gene500    .    .    .    1    .    .    1    .    .    1    2    2    2    .
                                           
      Gene1     73   48   60   44   53   42
      Gene2     47   31   16   45   15   33
      Gene3   1276  447  740  795  779  579
      Gene4    106   94   75   69   90   87
      Gene5     13    3    1    3    5    2
      Gene6     98   51   69   65  111   85
      Gene7     91   60  112   86   78  111
      Gene8    135   84   88  124  136  108
      Gene9    140   45   61   81   72   47
      Gene10    11    5    8   11   12   14
      Gene11    33   10    3   32   20   22
      Gene12    37   32   26   13   42   49
      Gene13    96   56   75   66   87   83
      Gene14    10    5   11   25   20   13
      Gene15   342  173  220  294  246  128
      Gene16    36    6   13   12   25   17
      Gene17    66   16   30   19   34   42
      Gene18    36   18   33   22   34   24
      Gene19    39   35   39   29   54   33
      Gene20     .    .    .    1    .    .
      Gene21     7    3    1    8    .    .
      Gene22   198  140  129  140  231  128
      Gene23  3846 1988 2996 2505 2890 2430
      Gene24    12   21    7    8   22   15
      Gene25    19   22   45   23   21   13
      Gene26    51   29   25   39   54   24
      Gene27     .    .    .    .    .    .
      Gene28    27    8   27   34   47   22
      Gene29    58   38   62   76  108   71
      Gene30   342  138  177  284  196  157
      Gene31  3058  745 1151 2245 3816 1072
      Gene32    98   42   47   87   62   37
      Gene33     8    5   17   11    8   20
      Gene34    89   29   42   49   58   16
      Gene35   914  487  618  630  650  597
      Gene36     5    .    1    2    2   12
      Gene37    38   12    8   45    9   12
      Gene38    21    2   10   18   15   16
      Gene39   650  408  677  514  415  473
      Gene40     2    7   10    .    .    7
      Gene41    46   18   43   32   53   52
      Gene42    11    2    5   16    8    3
      Gene43    29    8   17    8   34   16
      Gene44    28   15    9   26   25   18
      Gene45   174   69  104  146  150   78
      Gene46  3534 2383 2800 2763 3221 2080
      Gene47    24    2    5    3    3    5
      Gene48    65   51   58   51   78   80
      Gene49    38   35   37   44   35   31
      Gene50     .    .    3    .    .    .
      Gene51    28   17   36   21   35   18
      Gene52     1    .    3    2    1    .
      Gene53    75   45   37   51   49   40
      Gene54    48   40   41   49   69   53
      Gene55     1    .    5    3    3    2
      Gene56     1   11    6    3   11    4
      Gene57   104   45   78   70   68   73
      Gene58    62   33   35   48   31   25
      Gene59    20   16   39   24   27   40
      Gene60     .    .    4    1    1    1
      Gene61     .    .    .    .    2    .
      Gene62    70   34   58   49   54   60
      Gene63   522   94  213  446  278  147
      Gene64   258  164  279  216  323  234
      Gene65    48   21   15   45   65    6
      Gene66    97   71   29   97  101   50
      Gene67   435  287  322  483  615  437
      Gene68     6    .    .    6    4    8
      Gene69    14    8    4   13    5    2
      Gene70   202   53  117  192   86  105
      Gene71    54   22   46   80   75   39
      Gene72    26   10   13   10   25    6
      Gene73     6    1    4    6    .    1
      Gene74  2317 1696 1320 1724 1909 1493
      Gene75    52   32   21   78   23   15
      Gene76    39   19   46   58   57   23
      Gene77    55   40   60   49   80   32
      Gene78   251   81  113  211  171  148
      Gene79   845  529  938 1102 1076  710
      Gene80    69   74   61   52   75   65
      Gene81    18    9   19    6    9   21
      Gene82     5    .    1    1    .    .
      Gene83   116   72   55   76  210   81
      Gene84    35   47   36   34   42   44
      Gene85   947  613  611 1055 1023  740
      Gene86     .    .    .    .    .    .
      Gene87    55   22   51   47   54   21
      Gene88   287   82  109  154   96  156
      Gene89    46   14   37   30   33   30
      Gene90   246  125  195  179  277  147
      Gene91    87   30   77   56   76   36
      Gene92    24   11    8    9   33   13
      Gene93    79   25   25   63   37   47
      Gene94    87   16   35   44   43   48
      Gene95    23    3   14   17   14    5
      Gene96     .    .    .    3    .    2
      Gene97     8   10    9   11   10    6
      Gene98     6    5    .    4   11    9
      Gene99     3    .    2    7    .    7
      Gene100  161  106  135  148  185  107
      Gene101    8    9    9   29   25   11
      Gene102   77   46   92   82   94   73
      Gene103   35   26   20   39   42   33
      Gene104    1    .    .    2    1    .
      Gene105   16    4    4   18   27    6
      Gene106   88   30   37   51   41   75
      Gene107 2878 3243 5327 3401 3572 5171
      Gene108    1    4    2    .    .    2
      Gene109  157  104  175  164  145  148
      Gene110  207   82  120  178  116  127
      Gene111  557  322  463  470  463  438
      Gene112   14    2    5    6    9    3
      Gene113   36   28   28   30   37   31
      Gene114    8   12   17   16    8   20
      Gene115   87   15   21  101   32   30
      Gene116   62   32   45   36   58   37
      Gene117  906  592  650  762  927  734
      Gene118   22    8    9   17   51    3
      Gene119   17    8    6   13    5    2
      Gene120   56   22   12   93   21   21
      Gene121    3    6   17   18    6    9
      Gene122  125   29   27   82   32   28
      Gene123 3216 1454 1987 2065 2832 1848
      Gene124   54   36   61   39   58   47
      Gene125  952 1732 2301  913 3272 1783
      Gene126   67   33   67   35   82   38
      Gene127  210  102   94  150  171  215
      Gene128   17    3   11   11    8    4
      Gene129  182   93  133  221  141  137
      Gene130   98   39   45   71   83   57
      Gene131   16   36   19   15   29   21
      Gene132   12   16   13   22   17   23
      Gene133    7    3    5    2   11    3
      Gene134    7    8   19    3   23   27
      Gene135   16    8    6   11   14    8
      Gene136  164  135  200  173  171  106
      Gene137   22    4    7   11    1    4
      Gene138   31   22   32   58   54   59
      Gene139   33   21   28   35   27   17
      Gene140   52    6   10   41   20   20
      Gene141   35   20   21   33   24   16
      Gene142  247  120  165  215  226  231
      Gene143    7    1    2    1    9    7
      Gene144   31   12    8   14   11    4
      Gene145   64   30   61   44   61   48
      Gene146   94  116  134   89  338   79
      Gene147   98   43   47   99   65   76
      Gene148  205   82  159  212  209  152
      Gene149    .    .    .    .    .    .
      Gene150   19    8    4   10   11    5
      Gene151  146  109  139   91  140  143
      Gene152   12    3    5   17    .    9
      Gene153    5    1    2    6    5    3
      Gene154    2    1    2    2    .    .
      Gene155   55   12   14   57   51   12
      Gene156   79   58   52   84   89   94
      Gene157    3    1    7    3    1    .
      Gene158  100   67   56   97   98   96
      Gene159   33    6   33   35   51   22
      Gene160   10    8    9    9   12   17
      Gene161   49   21   51   38   44   51
      Gene162    .    .    1    .    .    .
      Gene163   29   11   32    4    6   18
      Gene164    8    .    3    6   10    3
      Gene165  126  133  139  104  118  112
      Gene166  103   59   51   61   70   94
      Gene167   20   14   15   18   17   24
      Gene168    2    3    3    2   11    5
      Gene169    6    2    2    9    2    2
      Gene170    .    .    .    1    .    1
      Gene171  214  135  226  150  203  177
      Gene172    6    3    7   24    3   10
      Gene173  121   30   28   58   61   23
      Gene174   42   13   20   24   32   16
      Gene175    6    9    7    7    4   13
      Gene176   16    4   13   25   12    4
      Gene177 2665 1680 1807 2138 2940 2014
      Gene178    2    .    .    .    1    2
      Gene179  130   51   81   90   87   69
      Gene180   64   30   27   50   28   26
      Gene181    1    .    .    .    .    .
      Gene182  148   61  100  139  155  148
      Gene183   54   42   29   50   67   31
      Gene184  100   78   57   59  121   70
      Gene185   24   22   26   15   41   10
      Gene186    4   11    9    1   18    4
      Gene187  106   62   64   67   75   85
      Gene188    7    6    1    6    7   10
      Gene189  123   85  133  114  127  128
      Gene190 1461 1093 1483 1083 1525 1084
      Gene191   23    8   19   29   32   21
      Gene192    2    2   11    9    8   16
      Gene193   14   10   10   12   19   19
      Gene194   16   24   23   33   12   18
      Gene195   18    9   21    9    3    4
      Gene196  440  113  259  518  164  256
      Gene197   42    6   26   43   36   28
      Gene198   85   92   99  102  117   79
      Gene199   42   17   32   41   25   13
      Gene200   40   17   17   23   27   17
      Gene201    5   14    5   14   15   11
      Gene202 1782  831 1002 1404 1443 1138
      Gene203   21    8    4   23    8    7
      Gene204    .    .    .    .    1    .
      Gene205   81   41   63   69   83   84
      Gene206  174   38   43  118  104   44
      Gene207   29    8    2   12   11    7
      Gene208   18    .    6   10    2    5
      Gene209  354  171  202  219  287  311
      Gene210   98   25   53   81   79   59
      Gene211    .    .    .    .    .    .
      Gene212   18   14   25   17   27   15
      Gene213   22   14    1    4   12   11
      Gene214   31   11   44   33   36   27
      Gene215    1    2    5    6    3    2
      Gene216   30   26   19   40   25   27
      Gene217   87   52   68   73  103   49
      Gene218   82   29   49   65   76   28
      Gene219    9    1    5    1    4   10
      Gene220  184   85   86  196   92   62
      Gene221   24    7   21   39   24   26
      Gene222   30    8   18   25   31   42
      Gene223  174  111  183  141  159  184
      Gene224   41    9   30   30   37   26
      Gene225   27   11    5   21    1    7
      Gene226   46    5   23   37   29   20
      Gene227   23    9   26   25   24   30
      Gene228   86   50   50   56   99   45
      Gene229   83   60   99   61   78   56
      Gene230   11    .    2    1   10    8
      Gene231    3    1   14    9    3    5
      Gene232  146   87  142  139  187  126
      Gene233    7    5   21   11   14   15
      Gene234   11    6   31    7    1    9
      Gene235   76   39   47   57   54   46
      Gene236   19   16   37    3   41   29
      Gene237  238   89  135  306   70   79
      Gene238  159  107  106  182  143  135
      Gene239   32   12   36   45   27   49
      Gene240   18   10    5   14   19   12
      Gene241   64   53   46  100   62   28
      Gene242    6    1    .    1    7    .
      Gene243  314  175  249  124  202  228
      Gene244    4    3    3    .   12    7
      Gene245  171   66  115  142  150   88
      Gene246   27   36   14   26   23   24
      Gene247   12    6   28    3   14   20
      Gene248   14   15    9   15   15   17
      Gene249    .    2    .    .    .    .
      Gene250    2    2    .    8    6    8
      Gene251   20   23   38   29   67   40
      Gene252   74   20   21   57   53   26
      Gene253  215  101  127  133  262  237
      Gene254   86   62   67   77   61   90
      Gene255  101   75  114  122  113   81
      Gene256  159   81  120   84  165  190
      Gene257   16   10   17   19   38   15
      Gene258   26   10    6   23    6   20
      Gene259    .    .    1    .    .    .
      Gene260  136   46   44  119   58   96
      Gene261   33    7   25   10   32   24
      Gene262    9    5   11   12   13    8
      Gene263   14    3   32   12   22   14
      Gene264   60   37   46   43   59   33
      Gene265   36   28   39   20   30   17
      Gene266    4    2    1    2    1    4
      Gene267  116   35   63   59   83   51
      Gene268   13    3    .   12   11    9
      Gene269   14    8    7   10    5    7
      Gene270  263  191  158  201  188  116
      Gene271 1455  831  953 1599 1354  978
      Gene272  183   78  116   97  125  106
      Gene273    .    .    .    .    .    .
      Gene274   11    1    9    .    2    .
      Gene275    3    6    2    1    4    3
      Gene276   20    1    5   21   19    5
      Gene277   45   28   18   40   61   39
      Gene278  226   41   73   94   63   90
      Gene279   29   34   32   23   50   44
      Gene280   58   19   21   22   48   47
      Gene281   18   24   22    9   37   18
      Gene282   19    3   13    9   14    6
      Gene283  352  340  505  397  556  309
      Gene284   13    4    8   11    7    3
      Gene285  451  184  192  283  174  184
      Gene286  128  106  106  141  131  151
      Gene287   49   29   34   37   54   31
      Gene288   15   23   11   15   26   12
      Gene289  152   91  122  101   86  109
      Gene290   61   50   56   69   62   63
      Gene291   18    3   10   11    3    6
      Gene292 1740  886 1055 1275 1273  983
      Gene293   29   12   17   24   50   18
      Gene294 2585 1680 2102 2228 2426 1799
      Gene295   24   46   45   32   69   50
      Gene296   10    2    3   10    1    4
      Gene297   38   37   78   39   46   75
      Gene298    .    1    .    1    1    2
      Gene299   69   42   20   55   59   39
      Gene300    6    1    2    2    5    2
      Gene301 5611 2108 3035 5716 3794 2694
      Gene302    2    .    .    3    2    .
      Gene303   31   17   13   17   31   10
      Gene304    .    .    4    2    3    .
      Gene305  101   41   46   42   45   99
      Gene306  168  121  123  244  206  228
      Gene307   66   39   41   60   64   52
      Gene308   29    5    5   39   30   14
      Gene309  812  348  446  577  698  456
      Gene310  112   40   40   92   52   49
      Gene311   10   11   17   12   20   18
      Gene312   37   14   13    8   37   14
      Gene313  205   74  112  120  122  123
      Gene314    7   11    7    9    9    1
      Gene315    1    4    3    1    3    6
      Gene316   17   12    7   19   26    8
      Gene317    3    2   11    5    6    3
      Gene318   29   19   20   31   31   27
      Gene319   14    9   16   11   11   19
      Gene320   75   27   22   40   61   31
      Gene321   87   42   56   67   46   67
      Gene322    .    .    2    5    4    2
      Gene323  205   76   91  155  154  162
      Gene324    1    .    .    .    .    .
      Gene325  673  225  439  371  511  323
      Gene326   10    6    7    9    2    1
      Gene327  505  340  325  327  477  298
      Gene328  116  337  462   85  252  401
      Gene329  269   78  109  225  142  139
      Gene330  424  222  421  332  334  282
      Gene331    9    7    7   14   13   14
      Gene332   43   23   11   29   28   36
      Gene333   54   27   37   65   38   13
      Gene334    1    .    .    1    1    1
      Gene335   34    9   32   21   18   16
      Gene336  186   78  153  180  152  128
      Gene337   22   14   15   29   57   27
      Gene338    6    4    5    4    7    .
      Gene339  112   46   92   99  105   83
      Gene340   78   36   71  104   54   52
      Gene341    8    7    7    5   10    6
      Gene342   93   55   51   72   74   69
      Gene343    1    1    2    6    5    .
      Gene344  101   13   43   40   24   13
      Gene345   52   21   41   30   61   28
      Gene346    1    .    .    2    1    1
      Gene347   44   14   33   29   36   34
      Gene348    5    4   14   18    7   11
      Gene349  164  100   89  131  136  113
      Gene350   13    1    9    5   16    2
      Gene351   29   26   16   73   41   29
      Gene352    5    2    2    6   13    8
      Gene353    .    1    1    1    3    .
      Gene354  247  199  286  248  267  179
      Gene355   36   11    9   26    7   22
      Gene356  103   52   67   94   38   51
      Gene357   32    9   22   26    8   28
      Gene358   31   23   12   29   29   12
      Gene359    1    1    4    3    2    5
      Gene360    8    1    4    1    9    .
      Gene361    5    3    3   19    5   14
      Gene362   43   14   19   51   35   27
      Gene363   14   11   34   19   19   32
      Gene364   30   42   33   45   61   39
      Gene365   79   42   47   75   44   57
      Gene366  333  137  151  277  311  234
      Gene367   95   28   56   51   96   64
      Gene368    2    4    3    2    6   18
      Gene369    9   12    4    4   12   19
      Gene370  207  147  225  251  249  172
      Gene371   45   10    3   20   21   11
      Gene372  189  120  129  173  169  145
      Gene373   26   13   13   37   18   24
      Gene374   68   48   78   69   85   69
      Gene375   33    6   14   20   37   12
      Gene376   24   33   32   19   29   30
      Gene377  117   33   70  108   70   80
      Gene378   68   31   47   72   43   40
      Gene379 1623  920 1480 1323 1429 1416
      Gene380   16    7    3    7    7    7
      Gene381   22    9   14   11   24   10
      Gene382    2    3    1    2    2    2
      Gene383    3    .    1    2    2    2
      Gene384   78   21   37   31   62   43
      Gene385   84   25   45   48   58   37
      Gene386   50   41   54   61   81   55
      Gene387  230   53  117  186  229  163
      Gene388    .    .    .    .    .    .
      Gene389   43    4    6   28    6   10
      Gene390  156   56  103   93  134  119
      Gene391   17   14   13   18   19   10
      Gene392   32    5   11    4    4    9
      Gene393   69   92  121   90  163  122
      Gene394   22   16    7   26   12   23
      Gene395   17    7   13   15   12    6
      Gene396   14    4    3   10    3    6
      Gene397   26    7   21   18   14   11
      Gene398   49   37   83   69   86   65
      Gene399   41   44   59   44   71   46
      Gene400   22   24   36   27   27   23
      Gene401    4    4    8    9   18    3
      Gene402  118   42   66   79   99   79
      Gene403   11   16   11    9    9   21
      Gene404  276   78   60  140   62   74
      Gene405   18   15   28   16   12   32
      Gene406   19   17   10   39   21   26
      Gene407    5    .    1    5    1    2
      Gene408   13   58   75   33   50   48
      Gene409   17    6   10    4   25    8
      Gene410  244  176  205  167  148  222
      Gene411   13    4    7    3   22   12
      Gene412  107   61   40   61   92   52
      Gene413    .    .    .    2    .    .
      Gene414  111  168  182  163  165  143
      Gene415   20   11   26   17   17   24
      Gene416   84   30   30   47   45   50
      Gene417   10    7    5   31   23   21
      Gene418   76   77  157   45   86   91
      Gene419    8    4    .    3    9    2
      Gene420   22   26   21   61   41   30
      Gene421  169   50   93  162  196  111
      Gene422   43   13   23   31   35   47
      Gene423    .    .    1    .    3    .
      Gene424   21    9    8   10   25    8
      Gene425   95   44   52   55   70   51
      Gene426    3    6    4    6    7   14
      Gene427    .    .    .    .    .    .
      Gene428    7   15    6    6    4    8
      Gene429    6    3    2    3    7    5
      Gene430   85   53   65   62   54   59
      Gene431    5    2    2    1    .    1
      Gene432   20   23   30   34   33   15
      Gene433 1000  580  642  913  883  837
      Gene434    8    1    3    .    4    5
      Gene435    5    .    1   19   11    2
      Gene436  165   75   66  205  147   63
      Gene437   56   47   54   69   67   49
      Gene438   37   32   29   39   23   27
      Gene439   58   33   54   44   48   43
      Gene440   44   14   20   13   16   19
      Gene441  101   56   72   66  161   59
      Gene442  254  184  190  273  219  299
      Gene443    3    .    .    1    2    .
      Gene444  102   29   68   65   44   84
      Gene445   56   44   21   33   39   52
      Gene446   10   22   11   21   14   20
      Gene447    8    3    5   10   13    1
      Gene448   45   26   70   50   30   63
      Gene449 1517 1060 1135 1553 2570 1390
      Gene450    8    5    8    5    5    4
      Gene451   47   20   33   12   42   16
      Gene452 1465  500  694 1274 1231  615
      Gene453   67   25   36   64   99   41
      Gene454   60   20   52   29   11   23
      Gene455   31   19   28   12   24   19
      Gene456   26   12    8   23   14    8
      Gene457 6757 2731 3120 6846 5072 3781
      Gene458  132   72   73   81  121   85
      Gene459 1961  952 1054 1599 1392  962
      Gene460   14   26   12   18   20   35
      Gene461   30   13   31    3   17   24
      Gene462   13    3    7   18   11    4
      Gene463   63   42   77   89   52   40
      Gene464  158   91   73  132   74  106
      Gene465   40   11   19   10   13   34
      Gene466   42   18   20   42   55   26
      Gene467   25   18   28   42   32   30
      Gene468    6    7    5    4    3    3
      Gene469    .    .    3    2    .    1
      Gene470    6    3    5    2    9    1
      Gene471   71   14   23   62   59   51
      Gene472  187  105  131  153  184  111
      Gene473   93   67   69   69   55   54
      Gene474   75   36   44   79   73   39
      Gene475   21   24   45   28   39   28
      Gene476  498  352  339  394  328  306
      Gene477   22   10   27   25   31   26
      Gene478   23   11   10   21    6   11
      Gene479    6    2    3    3    4    1
      Gene480   19    5   15   28   13    7
      Gene481    1    9    1    5    1    2
      Gene482   78   39   48   53   41   58
      Gene483    .    .    .    .    1    .
      Gene484    .    2    4    .    7    1
      Gene485   12    5   12    9    9    4
      Gene486  101   77   67   72   75   58
      Gene487  171   99   97  106  136   73
      Gene488   30   10    5   18   27   13
      Gene489 1139  403  499  574  687  512
      Gene490  457  271  398  385  432  325
      Gene491   13   15   18    6   10   12
      Gene492  122   92   89  147  128   99
      Gene493   30   28   20    7   11   10
      Gene494   57   32   33   32   35   32
      Gene495 1824  880 1023 1328 1570  940
      Gene496  136   73  125  109   81   98
      Gene497   99   48   56   63   76   38
      Gene498   72   23   31   31   48   51
      Gene499    3    1    6    3    7    1
      Gene500    4    .    2    .    7    .
      
      Slot "nUMI":
          ct3_plat1_TCAACACTTAAGGGTCCCCA     ct1_plat1_TCAAGACTTAAGGGTCCCCA 
                                   70112                              51618 
          ct2_plat1_TCAATACTTAAGGGTCCCCA     ct2_plat1_TCAAAACTTCAGGGTCCCCA 
                                   72235                              63514 
          ct1_plat1_TCAACACTTCAGGGTCCCCA     ct1_plat1_TCAAGACTTCAGGGTCCCCA 
                                   44215                              68232 
          ct1_plat1_TCAATACTTCAGGGTCCCCA     ct3_plat1_TCAAAACTTGAGGGTCCCCA 
                                   49537                              61860 
          ct2_plat1_TCAACACTTGAGGGTCCCCA ct1_plat1_TCAACAACTTAAAGGGTTCCCCAA 
                                   53111                              45021 
      ct1_plat1_TCAACCACTTAAAGGGTTCCCCAA ct3_plat1_TCAACGACTTAAAGGGTTCCCCAA 
                                   55633                              61010 
      ct2_plat1_TCAACTACTTAAAGGGTTCCCCAA ct3_plat1_TCAACAACTTACAGGGTTCCCCAA 
                                   62477                              78750 
      ct2_plat1_TCAACCACTTACAGGGTTCCCCAA ct2_plat1_TCAACGACTTACAGGGTTCCCCAA 
                                   61353                              95652 
      ct2_plat1_TCAACTACTTACAGGGTTCCCCAA ct2_plat1_TCAACAACTTAGAGGGTTCCCCAA 
                                   55392                              69270 
      ct3_plat1_TCAACCACTTAGAGGGTTCCCCAA ct1_plat1_TCAAGAACTTAAAGGGTTCCCCAA 
                                   44005                              53625 
      ct1_plat1_TCAAGCACTTAAAGGGTTCCCCAA ct2_plat1_TCAAGGACTTAAAGGGTTCCCCAA 
                                   64710                              58835 
      ct1_plat1_TCAAGTACTTAAAGGGTTCCCCAA ct3_plat1_TCAAGAACTTACAGGGTTCCCCAA 
                                   49929                              49342 
      ct1_plat1_TCAAGCACTTACAGGGTTCCCCAA ct1_plat1_TCAAGGACTTACAGGGTTCCCCAA 
                                   46182                              81626 
      ct1_plat1_TCAAGTACTTACAGGGTTCCCCAA ct2_plat1_TCAAGAACTTAGAGGGTTCCCCAA 
                                   86747                              61410 
      ct3_plat1_TCAAGCACTTAGAGGGTTCCCCAA ct1_plat1_TCAATAACTTAAAGGGTTCCCCAA 
                                   61880                              60999 
      ct2_plat1_TCAATCACTTAAAGGGTTCCCCAA ct3_plat1_TCAATGACTTAAAGGGTTCCCCAA 
                                   84739                              62808 
      ct2_plat1_TCAATTACTTAAAGGGTTCCCCAA ct2_plat1_TCAATAACTTACAGGGTTCCCCAA 
                                   48887                              65914 
      ct2_plat1_TCAATCACTTACAGGGTTCCCCAA ct3_plat1_TCAATGACTTACAGGGTTCCCCAA 
                                   44555                              51800 
      ct2_plat1_TCAATTACTTACAGGGTTCCCCAA ct2_plat1_TCAATAACTTAGAGGGTTCCCCAA 
                                   59146                              46620 
      ct3_plat1_TCAATCACTTAGAGGGTTCCCCAA ct3_plat1_TCAAAAACTTCAAGGGTTCCCCAA 
                                   41413                              56321 
      ct1_plat1_TCAAACACTTCAAGGGTTCCCCAA ct2_plat1_TCAAAGACTTCAAGGGTTCCCCAA 
                                   61013                              90234 
      ct1_plat1_TCAAATACTTCAAGGGTTCCCCAA ct2_plat1_TCAAAAACTTCCAGGGTTCCCCAA 
                                   49247                              45190 
      ct1_plat1_TCAAACACTTCCAGGGTTCCCCAA ct1_plat1_TCAAAGACTTCCAGGGTTCCCCAA 
                                   72031                              74049 
      ct1_plat1_TCAAATACTTCCAGGGTTCCCCAA ct2_plat1_TCAAAAACTTCGAGGGTTCCCCAA 
                                   61448                              46410 
      ct1_plat1_TCAAACACTTCGAGGGTTCCCCAA ct2_plat1_TCAACAACTTCAAGGGTTCCCCAA 
                                   67167                              37839 
      ct2_plat1_TCAACCACTTCAAGGGTTCCCCAA ct2_plat1_TCAACGACTTCAAGGGTTCCCCAA 
                                   66271                              56491 
      ct2_plat1_TCAACTACTTCAAGGGTTCCCCAA ct1_plat1_TCAACAACTTCCAGGGTTCCCCAA 
                                   66606                              82433 
      ct1_plat1_TCAACCACTTCCAGGGTTCCCCAA ct2_plat1_TCAACGACTTCCAGGGTTCCCCAA 
                                   65814                              51503 
      ct3_plat1_TCAACTACTTCCAGGGTTCCCCAA ct1_plat1_TCAACAACTTCGAGGGTTCCCCAA 
                                   70992                              39870 
      ct2_plat1_TCAACCACTTCGAGGGTTCCCCAA ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA 
                                   45233                              66101 
      ct1_plat1_TCAAGCACTTCAAGGGTTCCCCAA ct2_plat1_TCAAGGACTTCAAGGGTTCCCCAA 
                                   90144                              53614 
      ct2_plat1_TCAAGTACTTCAAGGGTTCCCCAA ct3_plat1_TCAAGAACTTCCAGGGTTCCCCAA 
                                   58401                              63888 
      ct2_plat1_TCAAGCACTTCCAGGGTTCCCCAA ct3_plat1_TCAAGGACTTCCAGGGTTCCCCAA 
                                   60442                              57832 
      ct2_plat1_TCAAGTACTTCCAGGGTTCCCCAA ct3_plat1_TCAAGAACTTCGAGGGTTCCCCAA 
                                   66969                              59715 
      ct3_plat1_TCAAGCACTTCGAGGGTTCCCCAA ct2_plat1_TCAATAACTTCAAGGGTTCCCCAA 
                                   59094                              66205 
      ct3_plat1_TCAATCACTTCAAGGGTTCCCCAA ct1_plat1_TCAATGACTTCAAGGGTTCCCCAA 
                                   57912                              61217 
      ct3_plat1_TCAATTACTTCAAGGGTTCCCCAA ct1_plat1_TCAATAACTTCCAGGGTTCCCCAA 
                                   55380                              57214 
      ct2_plat1_TCAATCACTTCCAGGGTTCCCCAA ct3_plat1_TCAATGACTTCCAGGGTTCCCCAA 
                                   72436                              57275 
      ct1_plat1_TCAATTACTTCCAGGGTTCCCCAA ct2_plat1_TCAATAACTTCGAGGGTTCCCCAA 
                                   62128                              76466 
      ct1_plat1_TCAATCACTTCGAGGGTTCCCCAA ct1_plat1_TCAAAAACTTGAAGGGTTCCCCAA 
                                   63832                              52825 
      ct1_plat1_TCAAACACTTGAAGGGTTCCCCAA ct1_plat1_TCAAAGACTTGAAGGGTTCCCCAA 
                                   58019                              52140 
      ct1_plat1_TCAAATACTTGAAGGGTTCCCCAA ct3_plat1_TCAAAAACTTGCAGGGTTCCCCAA 
                                   72724                              48132 
      ct3_plat1_TCAAACACTTGCAGGGTTCCCCAA ct2_plat1_TCAAAGACTTGCAGGGTTCCCCAA 
                                   92789                              50990 
      ct2_plat1_TCAAATACTTGCAGGGTTCCCCAA ct3_plat1_TCAAAAACTTGGAGGGTTCCCCAA 
                                   66405                              78478 
      ct1_plat1_TCAAACACTTGGAGGGTTCCCCAA ct2_plat1_TCAACAACTTGAAGGGTTCCCCAA 
                                   84313                              63890 
      
      
      Slot "reference":
      An object of class "Reference"
      Slot "cell_types":
      ct1_plat1_TCAATGACTTCAAGGGTTCCCCAA ct1_plat1_TCAAAAACTTCAAGGGTTCCCCAA 
                                     ct1                                ct1 
      ct1_plat1_TCAACTACTTAAAGGGTTCCCCAA ct1_plat1_TCAAAAACTTGCAGGGTTCCCCAA 
                                     ct1                                ct1 
      ct1_plat1_TCAAACACTTGAAGGGTTCCCCAA ct2_plat1_TCAATTACTTAAAGGGTTCCCCAA 
                                     ct1                                ct2 
      ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA ct2_plat1_TCAAATACTTGCAGGGTTCCCCAA 
                                     ct2                                ct2 
      ct2_plat1_TCAAGGACTTAAAGGGTTCCCCAA     ct2_plat1_TCAACACTTGAGGGTCCCCA 
                                     ct2                                ct2 
      ct3_plat1_TCAACGACTTACAGGGTTCCCCAA     ct3_plat1_TCAAGACTTCAGGGTCCCCA 
                                     ct3                                ct3 
      ct3_plat1_TCAATCACTTCGAGGGTTCCCCAA ct3_plat1_TCAACCACTTCAAGGGTTCCCCAA 
                                     ct3                                ct3 
      ct3_plat1_TCAACAACTTACAGGGTTCCCCAA 
                                     ct3 
      Levels: ct1 ct2 ct3
      
      Slot "counts":
      500 x 15 sparse Matrix of class "dgCMatrix"
    Message
        [[ suppressing 15 column names 'ct1_plat1_TCAATGACTTCAAGGGTTCCCCAA', 'ct1_plat1_TCAAAAACTTCAAGGGTTCCCCAA', 'ct1_plat1_TCAACTACTTAAAGGGTTCCCCAA' ... ]]
    Output
                                                                                   
      Gene1     29  106   88   49   54   95   89   85   82   68   69  115   36   32
      Gene2     16   56   55   48   24   24   29   10   43   41   32   50   25   24
      Gene3      7    8   16    9    4   14   15    5   17    7   20    4    7    7
      Gene4    135  409  413  432  247  283  400  317  221  244  261  326  243  290
      Gene5      .    .    1    3    1    6    2    .    1    1    4    1    1    5
      Gene6     85  119   96   75   47   83   67   44   36   63   70  107   49   63
      Gene7    363  531  533  498  427  368  307  330  408  476  245  352  142  202
      Gene8      4    9    4    6    3    6    9    4    7    4    6    1    2    3
      Gene9      5   24   21   13   12   15   24   13   20   13    7   23   10   10
      Gene10     .    6    1    .    2    .    .    1    .    .    4    2    .    2
      Gene11    21   42   20   24   41   59   24   21   27   15   18   39   14   24
      Gene12    46  145   81  129  134  266  320  190  190  208  198  232  176  143
      Gene13     5    9   12    8    1   10   11    5    8    4    .    7    7    5
      Gene14     3   27   21    7    7    7    8    5    6   11    6    7    5    8
      Gene15    14   36   19   33   16    9   10   15    5   14   20   25   13   11
      Gene16    79   90   75   31   59   55  105  102   60   35   90  188  107  169
      Gene17     9   38   13   14   16   14   16    4   29   12   20    4    9   10
      Gene18     1    4    3    4    1    2    1    6    2    .    .    .    .    2
      Gene19     5    4    1    3    .    5    6    5    5    4    2    1    4    2
      Gene20   161  306  229  177  161  150  196  155  125  135  188  341  186  272
      Gene21    49  101   62   63   80   76   74   41   53   31   57   84   45  101
      Gene22  1618 2967 2295 2356 1897 2197 2215 1584 1886 1811 1908 2568 1297 1798
      Gene23    23   28   28   24   53   33   37   15   29   44   44   24   18   39
      Gene24     8    9   11   10   11    8   11    4    9   11    5    4    3    3
      Gene25     2    3    5    5    .    5    4    7    3    .    6    .    4    8
      Gene26  2055 3531 3121 2597 2218 2237 2757 2432 1910 2108 2205 2570 1379 2122
      Gene27     9   21   20   24   16   12    9    6   19   21   17   16   18   12
      Gene28    70   53   71   91   46   78  116   97   61   60   57  110   43   69
      Gene29    11   24   17   13   23   16   41   12    7   25   12   19   12   26
      Gene30    38   50   37   21   32   28   27   25   43   15   42   32   14   26
      Gene31    28   61   51   58   41   49   20   42   27   18   48   55   20   55
      Gene32    16   37   17   27   22   20   27    3   20    9   16    9   47   17
      Gene33  1008 2306 1812 1475 1533 1590 2082 1076 1017 1154 1348 1269  842 1089
      Gene34     4   18   16    9    5    9   10   12   14   17   10   33   23   18
      Gene35    28   75   62   88   37   47   62   38   65   62   62   81   56   40
      Gene36    42   93  102   59   54   64   62   59   30   38   64   78   37   29
      Gene37    13   39   36   26   19   45   28   22   28   38   19   17   22   23
      Gene38     2   20   13   16    6   17    5    3    9   12    4    5    .   13
      Gene39    13   34   22   17   24    9   18   25   18   12   13   20    9   12
      Gene40    54   91   70   89   75   70   81   82   61   57  105  132   90  109
      Gene41   141  196  181  119  148  105   90   73   53   70   84   85   50   68
      Gene42     4   13   21   28   17    9   14   12    4    9   12   16    2   15
      Gene43     8   17   12    4   19   25   14   22   17    9   26   10   11   10
      Gene44     7    .    .    2    .    .    1    .    .    2    1    .    .    .
      Gene45  2997 6098 5144 4263 3834 2323 2719 2397 1726 2168 3308 4104 2635 3602
      Gene46    18   50   59   37   41   46   24   39   22   47   27   43   32   32
      Gene47    12   20    9   31    8   12   11    4    6   13   11    7   25   18
      Gene48    45  107  148  150   59  120  182   89   95   95   96   51   85   93
      Gene49    19   45   22   31   21   24   24   15   13   33   17   25   10   27
      Gene50   729 1436 1574 1224 1484 1221 1286 1001 1172  967 1160 1605  777 1162
      Gene51    27   27   46   35   26   20   20   24   22   28   52   46   29   54
      Gene52    22   21   30   21   44   20   31   27   16   20   25   11    8   11
      Gene53     9   20   14    6   10   16    9   16    4   20    2   20   14   31
      Gene54     .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene55    32   68   44   55   43   38   38   36   29   23   21   35   28   49
      Gene56     9    8    4    8   14   11   14    6    6    5    6    8    2    3
      Gene57    39   65   37   66   28   44   36   30   41   26   45   60   28   41
      Gene58    24  123   58   81   57   72   79   47   22   49   35   86   32   52
      Gene59    17   16   18   39   39   14   26   24   23   22   58   29   31   39
      Gene60   616 1247  974  828  858  914 1113  600  676  811 1013 1098  669  918
      Gene61    11   22   23   16   27   16   25   19   17   18   14   33   13   17
      Gene62    22   59   62   49   38   17   46   61   24   42   30   47   28   51
      Gene63    15   20   11   17    9    8   26    6    8    4   10   17   20   17
      Gene64  1364 2770 2238 2160 1758 2201 1988 1416 1453 1512 1716 2164  933 1380
      Gene65    17   41   39   36   20   16   23    6   16   26   17   34    8   19
      Gene66    17   34   40   33   29   28   20    6   18   29   26   32    8   20
      Gene67     5    8    4    3    7   18    2    5    1    4    8    1    3    6
      Gene68    83  119  101   98  112   40   38   44   14   38  109  107   49  116
      Gene69     1    8    5    5    2    4    4    4    1   13   14    4   11   15
      Gene70    73  161  148  122   76  130   73   78   66   83   71   95   56   71
      Gene71    69  101   88   89   93   80  140   45  101   88   60  109   59   92
      Gene72    99  123  113  110   83   85  102   71  114   85   55   72   50   72
      Gene73   666 1395  983  730  665  731  926  917  728  894  913  869  486  693
      Gene74     4    4    3    3    1    2    1    .    5    4    .    2    1    1
      Gene75     1    7    2    2    1    1    1    .    1    1    .    .    .    .
      Gene76    26   25   35   15   29   12   25    6   11    5   19   21    7    4
      Gene77    24   29   17   42   22   23   13   27   22   25   22   13   13   19
      Gene78    47   51   36   33   21   38   54   20   50   23   23   38   25   31
      Gene79   210  232  212  276  233  104  109  101   59   83   73   51   46   68
      Gene80    10   22   38   35   21    4    5    4   10    4   17   13   13   11
      Gene81  1435 2060 1918 1742 1735 2124 1961 1357 1735 1285 1893 2187 1331 1344
      Gene82    62   71   49   58   38   55   38   20   42   54   23   28   46   42
      Gene83    15   34   32   33   39   24   31   42   22   23   36   49   44   27
      Gene84     .    .    1    2    3    .    2    1    4    1    5    5    .    3
      Gene85    30   58   28   19   42   35   28   41   21   54    9   16   11   17
      Gene86    11   12   11   20   10    2   12   11    8    3   19    7   11   11
      Gene87     1    4    1    6    .    6    5    .    3    1    .    4    .    1
      Gene88    12   16   13   15   33   20   28   18   14   17   25   10    4    9
      Gene89    10   14   12   10   14    7   19   20   12   27   10   36   10   14
      Gene90    64   71   61   63   56   85   86   69   77   59   55   71   33   41
      Gene91    14   18   32   11   23   22   11   30   12   12   12   17   14   22
      Gene92   105  130  176  151   75   97  186  140   86   92  133  119   57  109
      Gene93    12   17   15    9   14   11   35   19   30   15   11    8   10    8
      Gene94  1675 2792 2453 1938 1844 1264 1619 1626 1507 1636 1384 1793 1157 1291
      Gene95    12   12   26   14   10    9   13    7   13    6   10    4    1   10
      Gene96    12    9   29    9   11    9   13    5    6    2    8   28    6   11
      Gene97    44   69   79   43   59   47   55   23   49   25   24   37   20   23
      Gene98    59  130  116   72   70   99  128   88   63  104   59   99   64   74
      Gene99     .    .    .    .    2    1    2    .    .    .    .    1    .    .
      Gene100    4    4    5    4    4    3    5    1    2    5    4    2    1    3
      Gene101   13   22   18   12   11    7    7   11    9    8   10   13   12    7
      Gene102   41   62   42   55   24  101   92   52   79   90   22   59   29   48
      Gene103   14   19   22   20   22   11    2   25    2    4    8   10    9   22
      Gene104    5   16   11   11    4   11   17   13    6    7   17   13   13    3
      Gene105   45   83   60   42   42   53   56   48   47   73   87   89   59   45
      Gene106    .    .    2    .    .    .    .    .    .    4    1    .    .    .
      Gene107    5    1    .    7   11   11   13    6    2    5   13    7   10    2
      Gene108 1409 2176 1827 1000 1476 1408 2055 1328 1428  914 1204 1560 1134 1332
      Gene109    1    5    .    2    .    .    2    3    2    7    5    .    .    2
      Gene110   57   42   34   27   37   22   34   33    7   31   35   25   40   11
      Gene111  146  294  183  178  161  125  157  128  121   96   88  157   90  184
      Gene112   31   24   11   22    9    7   29   23   15   13   13   17    4    9
      Gene113   10    7    6   11   11   13    .    5    6    3    9    6    7   12
      Gene114    .    7    2    4   13    7    3    7    3    4    3    3    6    2
      Gene115  702 1540 1194 1076  834 1089 1242  976  776  754  656 1046  531  906
      Gene116  120  209  175  151  130  161  101  140   86  109   56   98   66   66
      Gene117    2    2    2    .    1    1    2    .    1    .    1    1    1    .
      Gene118    3    4    7    6    9    2    8    4    3    5    6    1    6    6
      Gene119  125  265  176  157  164  161  255  165  175  127  138  152  142  184
      Gene120    .    .    1    .    .    .    1    .    .    .    .    .    .    .
      Gene121   73   85   68   69   51   68   86   89   51   59   50   96   71   96
      Gene122   37   53   40   40   50   31   31   55   30   49   43   75   37   78
      Gene123   13   31   30   21   19   15   25   18    3   13   17   25   22   14
      Gene124   74  128  175  126  152   53   56   53   42   50   48   81   46   72
      Gene125   10    1    5    5    5    2    5    2    4    1    5    2    6    4
      Gene126   33   24   17   11   24   15   24   29   22   18   18   33   14    9
      Gene127   10   36   40   23   26    9   24    6   15   16    9   11   10    4
      Gene128   15   55   33   18   15   12   21   28   25   26   15   34   13   31
      Gene129   42   69   45   66   48   40   80   55   24   33   31   21   21   38
      Gene130   38   90   72   82   75   60   64   53   52   61   64   71   39   61
      Gene131    3   24   13    6    7    6   17    4    5    7    7    6    6    8
      Gene132    1    4    1    2    1    .    .    .    .    .    .    .    .    .
      Gene133    2    2    3    .    2    2    2    2    2    4    2    3    .    .
      Gene134   31   64   49   42   44   34   53   29   33   26   46   68   33   47
      Gene135    .    .    .    1    .    .    .    .    .    .    .    .    .    .
      Gene136  103  132  107  124   96   94  152   95   88   80   64   49   61   37
      Gene137    4   10    4    9    9   13   16   15    4    7    2   10    6    7
      Gene138   18   76   28   30   28   23   38   25   25   30   24   27   13   26
      Gene139    4   18   19   21   13    9   10    6    1    6    9    3    4   11
      Gene140   22   32   31   46   21   12   14   12   13   14   41   15   22   26
      Gene141   36   43   26   41   54   46   85   31   52   30   48   51   33   42
      Gene142   28   82   66   54   50   72   59   52   53   49   33   63   47   35
      Gene143    6   10   10   19   14    1   12   13    5    4   15   11    2    .
      Gene144   20   28   21   12   10   23   41    9   21   17   12   30   14   10
      Gene145   50   88   77   75  101   63   69   60   64   79   65  120   46   64
      Gene146   29   63   65   56   43   71   57   47   28   52   53   54   29   47
      Gene147  158  292  222  139  171  108  217  141  115  123  174  212  150  255
      Gene148  109  216  194  180  164  100   69   72   60   69   31   91   41   68
      Gene149  184  345  347  249  182  215  276  211  313  250  229  305  137  252
      Gene150   40   51   71   52   31   45   54   35   47   53   45   51   36   30
      Gene151   20   39   67   40   40   16   26   24   20   20   45   28   20   34
      Gene152   34   39   47   26   18   29   37   17   27   24   23   36   25   18
      Gene153  150  224  198  162  178  121  235  112   90  142  119  201  192  201
      Gene154   81  181  133  158   93   24   36   26   42   29   98  151   69   85
      Gene155    .    .    .    3    3    3    .    .    .    2    1    .    .    1
      Gene156   30   45   56   37   57   15   41   43   35   23   32   35   13   60
      Gene157   65  133  107  167   71  142  124   89   88   70   76  140   56   58
      Gene158   18   32   42   31   28   11   29   17    9   15   21   24   16   23
      Gene159    2    5   10    4    7    3   11    1    4    3    1    8    3    3
      Gene160   19   34   60   48    6   24   29   15    9   24   31   14   11   13
      Gene161   71   94  110   70   82   69   89   51   72   60  104  100   43   69
      Gene162  108  132  118  134   74   89  175   84   99  112   62   96   43   80
      Gene163    3    .    2    .    .    2    .    .    .    2    .    .    1    3
      Gene164   21   28   30   32   15   36   58   26   48   18   15   50   17   25
      Gene165   55   97  114   88   82   68  101   49   71   77   53   46   55   33
      Gene166   96  216  218  216  129   50   78   45   90   41   61   23   24   39
      Gene167    .    6    1    1    .    4    .    4    1    .    1    2    .    1
      Gene168   28   14   16   16    3   24    6   10   16   20    5   14    9    7
      Gene169   10   26   13   30   11    7   12    4    2   12   13    6    4   10
      Gene170  116  140  165  124  120  148  155   84  123   73  123  127   96  123
      Gene171  116  151  201  183  145  171  167  152  139  118  192  183  131   88
      Gene172   21   38   40   42   25   24   27   21   21   24   12   46   38   44
      Gene173   49   49   81   48   32   32   43   43   27   35   36   58   31   36
      Gene174   10   37   43   41   28   18   38   35   21   26   26   30   34   49
      Gene175   27   25   33   19   10   41   37   19   14   15   17   18   14   18
      Gene176    4   24   14    5   11    8    6    4    5    8    7   20    1    8
      Gene177   53  120   93   76   51   76   53   69   53   43   54   87   26   44
      Gene178   82  153   99  126  113  119  113   84   73   91   48  129   78   77
      Gene179  971 1467 1660 1602 1410 1545 2019 1340 1346 1284  563  968  570  631
      Gene180   44  137  128   88  112   61   93   83  122   76   43   75   47   77
      Gene181   62  112  124   96   69  145  124   88   42  126   75  101   47   59
      Gene182    1    2    .    .    .    .    .    .    .    1    .    .    .    1
      Gene183   34  109   96   98   49   28   56   18   20   27   41   30   11   17
      Gene184  111  170  143  125  126  134  140   82  136  122  166  127   78   96
      Gene185  112  228  139  115  101  139  100  107   75  100  115  114   89  108
      Gene186   30   83   48   51   27   46   67   27   26   24   52   31   25   34
      Gene187    .    .    4    .    1    .    1    .    .    .    .    1    .    .
      Gene188   73  145  124   84   62   98  130  100  109   78   83  138   43   76
      Gene189   61  135  108   90   79   47  160   69   39   74   46   60   29   17
      Gene190    3    8    7    8    2    1    9    2    .    1    .    .    3    .
      Gene191   13   34   15   12   16    7   16    7   17   13   15   12   19   13
      Gene192   15   57   36   12   36   14   32   16   26   14   29   25   23   14
      Gene193    .    3    4    .    1    8    2    1    5    4    .    1    .    1
      Gene194    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene195  424  776  796  294  532  474  357  505  429  318  558  638  340  340
      Gene196    .    8    5    8    .    2    1    1    1    3    1    .    .    3
      Gene197  135  322  256  264  245  178  255  247  264  197  168  234  187  189
      Gene198    1    .    2    2    9    .    .    .    .    3    .    1    1    .
      Gene199    5    2    6    2    3    7    2    3    4    4    1    3    1    5
      Gene200    7    6    7    7   11    4   26   13   13   23    .    7    5   12
      Gene201   15   30   37   25   24   16   30   20   27   18   14   16   22   20
      Gene202   34  126  124   75  131   72   97   50   89   86   86   51   76   83
      Gene203   20   31   20    6   17   12   22   14   12   13    9    4    3    6
      Gene204  135  179  188  150  122  171  181   88  160   68  127  102   61  110
      Gene205    1    7    7    5   14   17   14    8   15    4   14    8    2    2
      Gene206   79  158  127  117  103  140  129  110  103   60   92  141   73   98
      Gene207  116  266  130  197  146  203  146  175  117  160   97  180  129  149
      Gene208    7   11   16    1   13   14    8    8   11    7    2    4    5    1
      Gene209    .    2    .    2    .    4    3    3    .    .    2    3    1    2
      Gene210    .    4    1    6    2    .    1    2    3    .    1    .    .    .
      Gene211    1    2    3    6    2    5    2    1    1    .    3    3    .    1
      Gene212    6   13    6    6    5    6   12    5    2    8    1    8    3    4
      Gene213   23   32   51   23   41   34   29   13   41   24   80   56   43   67
      Gene214  100  197  118  116  107  107  171   99   94   80  118  106  130   50
      Gene215   89  119  104  133   49   79  103   82   87   75   48  102   52   92
      Gene216    3    1    2    1    2    6    2    1    1    2    2    .    1    4
      Gene217    1   10    7    1    4    6   20   17    6    .    7    7    .    7
      Gene218   35   48   41   39   23   30   65   26   33   24   62   92   69   61
      Gene219    .    4    1    1    .    .    .    .    2    2    .    4    2    5
      Gene220   22   44   20   39   16   16   26   26   14   11   38   18   14   31
      Gene221   35  106   66   39   57   66   64   50   44   67   52   71   27   39
      Gene222  113  134  141   86  113  126  145   91   81  113   56  142   75   69
      Gene223  134  262  163  226   86   89  121  103   62  106  105   81   51   78
      Gene224  251  496  610  457  452  382  355  330  298  250  256  472  204  224
      Gene225   57  137  119   79   86   89  107   70  101   94  110   60   65  113
      Gene226   19   48   29   48   46   20   47   17   33   38   15   26    8   19
      Gene227   24  102   85   44   52   44   64   49   59   40   39   47   32   33
      Gene228    .    7    1    .    1    .    .   10    2    2    1    1    .    .
      Gene229    .    .    .    .    .    1    6    1    .    .    .    .    .    .
      Gene230    6   25   14   15    3   30   14   16    8    8   14   11    8   19
      Gene231 2142 2959 3056 2549 2409 2012 2902 1792 2427 2216 3048 3556 2260 2313
      Gene232    .    .    1    .    .    .    .    .    .    .    .    .    .    .
      Gene233   29   31   18   14   21   38   29   29    7   18   12   16   11   13
      Gene234    1    3    3    3    .    2    .    .    1    .    1    2    3    1
      Gene235   21   35   24   19   32   52   24   23   24   23   26   29   13   29
      Gene236   43  126  122   58  126   63   74  105   91   33   23   32   32   16
      Gene237  135  187  132  128   98   51   67   75   55   49   35   75   54   49
      Gene238   18   18   22   30   22   33   63   25   23   33   10   29   12   27
      Gene239    3    .    3    .   11    7   12    2    .    5    5    4    .    .
      Gene240   21   45   22   40   60   73   53   38   47   28   59   55   28   34
      Gene241   13   16   32   36   26   35   39   34   14   17   29   45   12   11
      Gene242   16   10   18   17    9   21    5    5    4    6    8   10    8    9
      Gene243   42   70  104   92   87   74   82   78   94   60   60   33   47   66
      Gene244   53   80   58   49   42   35   85   40   35   55   47   38   36   30
      Gene245   10   23   24   17   23   36   62   47   39   50   30   27   19   15
      Gene246    .    2    2    1    1    2    .    1    .    7    .    5    2    1
      Gene247   25   22   42   36   17   19   45   26   18   11   31   20   20   19
      Gene248   13   19   15   26   10   14   11   10    8    5   18   27   10   21
      Gene249   29   65   47   83   51   45   50   84   54   45   63   88   49   89
      Gene250   29  132  109   62  105   83   76   65   68   67   99  101   43   56
      Gene251   38   42   20   32   27   19   37   49   27   32   18   28   16   20
      Gene252   69  136  157  128   83   92  104   69   86  114   53   61   65   67
      Gene253   14    6   11   11   10   21    4   11    8    9   24   12   11    7
      Gene254    .    2    1    .    .    .    5    1    3    .    1    .    .    1
      Gene255  235  375  404  334  335  260  445  259  269  268  271  280  167  312
      Gene256   21   37   13   16   11   10    7   14   13   15   32   47   16   12
      Gene257   18   39   48   29   26   28   33   20   28   19    7   26   22   21
      Gene258    .    2    2    1    1    .    .    .    2    3    .    .    .    1
      Gene259    5   18   16   15   10   20   34    9    6   20   23   39   17   18
      Gene260   20   20   37   39   24   38   56   56   46   42   28   21   19   30
      Gene261   18   27   16   16   15   16   19   17    2    9   16   11    5   11
      Gene262    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene263    7   13   11    2   11   14   20    3    6    4    4    6    4    7
      Gene264    9   37   27   37   35   31   27   28   24   33   27   22   20   22
      Gene265  108  173  130   91   89  154  148  187  135  138  125  144   64   91
      Gene266   38    8   38   24   15   18   18   28   15   24   30   32   11   18
      Gene267    6   10    5    6    8    8   15    7    8    6    2    7    1    3
      Gene268   25   69   35   46   46   20   53   31   43   22   21   49   22   19
      Gene269   42   62   68   44   38   45   44   36   31   31   37   76   29   58
      Gene270    3    .    .    5    .    .    3    1    .    .    .    3    4    .
      Gene271   24   35   26   33   31   38   59   22   28   22   18   29   13   32
      Gene272  419  757  410  671  409  326  618  459  500  389  346  461  388  462
      Gene273   11   26   16   23   19    9   24   11    4    9   18   22    9    1
      Gene274   34   75   57   53   55   72   69   64   41   30   51   53   43   76
      Gene275    4    5    4    6    5   10    3    1    .    .    5    5    3    5
      Gene276    3    1    9    3    4    4    4    2    1    4    2    .    5    .
      Gene277    2    1    2    2    1    2    .    .    .    .    1    9    .    2
      Gene278   17   30   57   23   34   13   31    8    8   17   13   24    3   11
      Gene279    5    2    .    3    4    .    2    1    1    2    6    2    3    .
      Gene280  105  153  192  158   94  145  220  113   98  128  118  175  101  156
      Gene281   54  133   74   28   56   48   70   57   40   53  102  130   64   59
      Gene282   13   26    2   14   10   17   10   15   14    9   15   14    7   18
      Gene283    1    4    4    .    2    1    5    .    .    3    8    2    1    1
      Gene284   23   30   24   14   22   25   30   34   40   35   12   24   19   17
      Gene285   18   40   34    8   18   37   41   31   13   35   72   44   20   40
      Gene286    1    2    7    3    2    1    6    2    4    2    8    4    1    2
      Gene287  298  387  287  331  298  379  411  310  372  330  315  445  235  391
      Gene288   22   38   63   46   21   31   79   43   24   40   32   16   37   42
      Gene289   94  114  149  146  111   58   79   46   45   35  107  214   47  126
      Gene290   32   42   36   46   27   16   20   12   31   38   22   13    9   14
      Gene291  117   95  142   73  160   69  121  102   41   76  272  203  113  128
      Gene292    3   22    5    8   10   12   25    9   20    7   21   14   10    4
      Gene293    .    .    1    .    1    1    2    .    .    1    .    .    .    .
      Gene294  206  365  378  369  262  391  570  316  288  239  311  356  212  314
      Gene295   26   50   36   26   36   66   60   76   69   35   32   37   21   33
      Gene296    2   10    .    .    1    .    3    3    2    .    1    .    1    2
      Gene297    .    .    .    1    .    .    .    .    .    2    .    .    .    .
      Gene298    7   26   19   13   20    8   48   18   21   18   27   19   15   38
      Gene299    4    2    3    4    .    .    8    3    5    2    5    5    .    2
      Gene300   12   18   11   14    7   11   19   17    9    4    3   14    4    4
      Gene301   80   77   58   94   75   55   81   56  102   22   75   82   41   73
      Gene302    9   10   17    5    3    3    7    2    7    8    9    3    9   11
      Gene303   65  112   98   87   87   64  118   96   42   88   51   62   77   64
      Gene304   36   68   39   38   26   23   35   23   40   32   29   33   27   36
      Gene305    9   29   16   14    8   10   16   16   37    8   18   12   11   24
      Gene306   19   33   34   16   22   10   26   20   10    7   16   19   15   35
      Gene307  145  215  171  174  164   52  125   68   41   57   64   80   43   69
      Gene308    2    .    2    .    .    4    1    .    .    .    .    2    .    .
      Gene309   21   47   31   24   28   29   44   15   30   23    5   11   16   19
      Gene310    .    1    .    1    .    1    .    1    .    .    .    .    .    2
      Gene311   79  114  123   86   60  173  150  143  201  165  101   56   54   51
      Gene312   10   14   11    5   17    2    7    7    5    2    3    2    3   12
      Gene313   40   74   48   62   37   53   55   53   48   65   46   69   47   88
      Gene314   48   24   30   23   26   36   31   22   17   14   24   29   22   21
      Gene315    .    2    .    .    .    .    3    2    .    .    .    .    .    .
      Gene316   93  152  169  141  119  116  170  110   93  162  111  139  119  147
      Gene317    2   13    1   10    3    9    8    3    4   13   10    9    9    3
      Gene318    3    5    1   10    1    2    5    4    .    .    .    9    1    2
      Gene319   27   44   70   41   52   64   51   41   40   42   35   51   20   51
      Gene320    3    5    4    4    1    6    2    3    1    1    .    7    .    6
      Gene321   20   37   39   25   35    7   34   18   20   11   20   32    8   23
      Gene322 1020 2168 1578 1135 1448 1255 1359  894  797 1046 1304 1395  669 1220
      Gene323    1    4    2    .    3    .    2    1    .    1    .    .    2    2
      Gene324   40   73   78   53   52  133  160  151  147  212   23   80   45   30
      Gene325   96  145  118   82  142   86   83   73   67   86   52   98   46   57
      Gene326   54   93   86  111  105   51   87   49   36   55   55   84   81  101
      Gene327   32   41   20   71   21   28   29   20   28   20   30   25   24   47
      Gene328   15   19   40   20   10    8   17   30    9   10    8   35   10   18
      Gene329    2    2    2    9    4    6    3    3   10    4    2    2    1    6
      Gene330   16   42   49   28   53   47   53   23   41   26   85   35   23   24
      Gene331   35   98   33   40   39   10    6   23    5   12   51   60   51   44
      Gene332    .    .    .    .    5    .    1    1    1    1    1    .    .    .
      Gene333    6    5    4    3   10    7    3    5    5    5    3   12    4    7
      Gene334   38   48   20   23   34   49   48   19   26   28   15   26   17   14
      Gene335    6    8   15    8   12   14    9    5    7    1    3   16    3    9
      Gene336  132  277  177  192  283  228  206  122  164  172  182  186  109  140
      Gene337    6   10    4    2    1    4    8    4    3    3    4    5    1    .
      Gene338   12   13   13   11    8   11   16   22    6    8    9   12   13    5
      Gene339    4    3    5    5    .    5   11    2    .    .    8    4    4    .
      Gene340   86   83   93   91   55  116  127   89   86  138  103   76   66   63
      Gene341    1    .    1    2    2    2    3    1    1    1    2    .    .    1
      Gene342   48   51   47   42   31   51   53   34   26   27   53   92   84   67
      Gene343   13   21   19   30    8    6   24    7    9   21   13   12   11   13
      Gene344  254  433  450  363  251  243  348  282  208  380  171  172  116  102
      Gene345    2    .    .    2    .    2    4    .    .    6    4    2    4    3
      Gene346  103  209  186  172  130   51   38   25   23   34   26   39   35   43
      Gene347   40   97   53   68   50   57   63   49   69   60   63   82   28   57
      Gene348   34   92   82  110   64  128  137  117   96   86   69   71   69   43
      Gene349   52  106  103   74   67   77   57   39   71   23   43   45   37   20
      Gene350    .    .    2    .    3    2    4    .    2    .    3    .    1    1
      Gene351  681 1283 1217 1247  953  922 1137  763  824  717  724 1173  675  885
      Gene352   24   53   46   47   55   56   81   49   36   63   48   81   27   35
      Gene353   33   78   54   38   42   40   32   56   68   45   79  139   99  111
      Gene354    .    .    2    1    .    .    1    .    1    2    .    .    .    .
      Gene355    .    .    1    .    .    .    .    .    .    .    .    .    .    .
      Gene356   34   25   20   28   17   45   20   12   34   12   18   30   15   40
      Gene357    2    2    6    .    8    8    3   11    1    6    2    6    3    4
      Gene358    2   19   17   12   11    3   10    9   17   13    5   18    5   15
      Gene359   15   28   36   31   11   24   24   26   35   27   31   40   27   25
      Gene360   71  120   83  102   83   70  105   66   96   55   81  140   78  122
      Gene361   12    2   13    9   10    8    4    6    5   10    8   15    5    6
      Gene362   37   64   46   54   51   44   61   32   29   43   83   62   43   63
      Gene363    6    5    2    .    .    2    1    .    .    .    .    .    .    4
      Gene364    .    4    2    .    2    .    2    .    2    .    .    1    .    .
      Gene365    9    4    8    7    3    2    5    .    3   12    5    4    .    4
      Gene366   18   35   34   25   21   28   34   31   16   18   31   28   19   32
      Gene367    7   27    6   13   19   45   35   26   32   53   29    4    7   16
      Gene368   77  171  206  140  114  119  134  127   97  100  274  254  143  208
      Gene369    7    7   13    7    2    4   10    2    .    3   14   10    4    9
      Gene370   11    8   11   24    6   15    5   16    6    6    9   15    7    5
      Gene371    7   11   17   22   10   18   16    8    7   19   10   14    7   31
      Gene372 1202 2620 2137 1489 1814 3674 5050 3611 2473 3060 1263 1630  755 1359
      Gene373   48   36   77   65   64   41   46   22   29   25   47   49   28   42
      Gene374   43   89   48   50   47   63   66   21   32   63   23   47   14   22
      Gene375   34   36   21   43   26   29   41   22   18   11   62   65   25   75
      Gene376   15   44   39   46   41   20   21   23   20   14   20   56   53   31
      Gene377    3   10   12   13   13    5    2   11   10    4    .   18    3    4
      Gene378  908 1476  914 1149  804 1078 1033  707  619  904 1174 1882 1041 1704
      Gene379   36   29   51   49   12   36   65   29   30   25   37   36   23   36
      Gene380   22   36   17   17   16    5    2    7   18    8    8   10   10   11
      Gene381  650 1017  691  842 1017  896  817  607  551  672  616  870  442  566
      Gene382  218  387  356  305  224  528  466  441  217  326  149  334  212  237
      Gene383    3   22   14   22    8    8    5   14    6    6    2   15    3    2
      Gene384    .    .    .    .    .    .    2    .    .    .    .    .    1    .
      Gene385   27   56   59   44   28   74   96   87   56   88   77  114   72   45
      Gene386    .    .    .    4    .    1    1    1    .    6    .    6    2    1
      Gene387   20    5    5   13    3    3    6    3    3    2   14   12   11   15
      Gene388   22   51   36   28   22   20   42   32   50   29   17   37   11   20
      Gene389    3    8    7    3   14    3    7    3    7   11    4    2    4    8
      Gene390    4    7   15   10    7    9    6    8   19    6   15    2    5    6
      Gene391    5    4    5    5    2   10    2    4    2    2    2    3    .    2
      Gene392    5    8    6    3    6    6    2    2    9    3   12    2    7    4
      Gene393   78  157  150   67   57  129   94   61   66  122   88  172   65  113
      Gene394    6    8   20    1    3    3    1    3   10    8    6    4    3    4
      Gene395    1    7    6    2    1    .    1    2    .    2    1    6    4   12
      Gene396    2    .    1    3    .    1    .    1    2    .    1    1    .    1
      Gene397   57   86   88   46   72   72   60   53   34   45   39   42   65   70
      Gene398  116  142  178  180  176  117  170  128  171  126   90  167   76  138
      Gene399    1    4    1    3    2    .    1    .    2    .    1    6    .    .
      Gene400   52  125   78   86   52   59   88   73   53   76   69  105   51   67
      Gene401   15   26   39   11    9   17   16   16   16   13   11   12    7   13
      Gene402    3    .    .    .    1    .    1    .    .    .    .    1    .    1
      Gene403    8   28   13   12   14   13   10   15   11   11   13    9   10    7
      Gene404    1   17    1    2   14    4    5    5    .    8    2    1    5    2
      Gene405   15   47   24   16   18   44   58   53   40   71   50   49   21   42
      Gene406    7   16    1   10    .   10    1   20    8    3    8    2    5    3
      Gene407    4    7   11   16   16    3    9    3    4    3   11    2    1    9
      Gene408   77  121   96   92   81   85  132  105   65   89   91   87   53   77
      Gene409   14   25   18   17   14   15   24    8   14   11    7   21   13   14
      Gene410    3    1    2    4    1    3    7    4   11    3    1    2    .    .
      Gene411   21   55   37   34   20   24   47   42   45   26   29   19   12   27
      Gene412   44  125  137  120   84   64  103  112   90   57   86   74   55   87
      Gene413   55  151  161  112  124   97  110  116   86   92   84  105   87  104
      Gene414   73  144   96   56  117  137  125   89  112   75  124  126  110  121
      Gene415   98  155  136  120   80   94  123   80   77   71  152  144  101  100
      Gene416   15   49   44   52   27   29   39   27   28   24   28   36   12   37
      Gene417   11   54   31   22   11   29   14   14   23   27   11   46   20   14
      Gene418   10   25   32   22   19   38   27   18   12   13   12    9   11    7
      Gene419   28   36   21   20    8   27   20   19   12    8   37   37   42   13
      Gene420   15   11   17   13   15    8   33   21    6    9   10   12   18   12
      Gene421   16   45   52   32   36   42   42   26   33   28   39   59   40   38
      Gene422 1149 1768 2544 1744 1418 1150 1551  984 1179 1139 1030 1262  801 1141
      Gene423   11   23   10   20   10   20   16   12   10   20   38   34   26   35
      Gene424   30   63   54   44   39  101   99   89   58   59   72   50   39   69
      Gene425    3   18   14   22   14    5   23   16   10   12    5   11    9    5
      Gene426  104  173  226   98  124  145  158  104  133   80  159  225   77   91
      Gene427   54   79   86   54   55   42   94   42   22   69   69   66   43   70
      Gene428    4    3    .    2    1    6    5    .    4    1    .    1    .    1
      Gene429   55   59   44   79   43   46   53   27   45   38   60   75   67   77
      Gene430    .    1    .    2    7    .    2    .    .    3    .   12    1    .
      Gene431    .    .    .    .    .    .    .    .    .    .    .    .    1    .
      Gene432   63   90  103   85   60   79   96   53   50   52   52   88   51   79
      Gene433    3    6    7    1    .    1    4    .    3    2    3    1    3    5
      Gene434   27   65   67   43   44   60   51   47   64   58   55   82   45   51
      Gene435   71  126   61  109   66   66  133   93   61   82   66  118   50   78
      Gene436   12   22   28    7   15   13   23   14   10   30    5   27   22   12
      Gene437    9   27   14   11   12   14   16   12    7   11    9   15   20   18
      Gene438  500  810  830  852  860  770  849  666  607  670  742  962  591  851
      Gene439   17   22    7   12   25   11    8   15    9    9   21    9   10   14
      Gene440    .   13   11    2   10    6    4    1    2    .    2   11    3    1
      Gene441   12   31   45   19   44   20   44   12   25   20   14   29   15   33
      Gene442    1    1    5    1    1    2    1    .    1    .    .    5    .    1
      Gene443   43   45   36   46   40   54   40   50   33   64   34   47   10   37
      Gene444    9   14    5   13   17    4   16    .    8    6    9    7    .    8
      Gene445    6    .    .    .    1   10    1    6    .    2    2    4    .    1
      Gene446   17   34   30   14   13   15   32   13    4   16   33   31   28   23
      Gene447 2209 3596 3050 3205 2635 2388 3443 2603 2417 2126 2235 2820 1988 2489
      Gene448   44   98   70   79   42   94  125   76   45   38   59   57   33   67
      Gene449  201  346  347  233  211  216  282  235  160  123  286  220  190  156
      Gene450  106  158  137  126  168  148  189  125  123   87   82  108  109  169
      Gene451   25   51   13   23   13   49   35   34   20   34   25   42    8   14
      Gene452    .    1    2    7    1    5    3    5    1    .    1    8    4    .
      Gene453  112  245  234  162  190  169  190   99  148  136  117  148  130  205
      Gene454   17   47   16   41   45   20   51   17   45   18   40   25   14   20
      Gene455    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene456   14    9    9   13    8    6    6    4   14   17   14   10    4   12
      Gene457   10   10   23   10    9   15   18    9   14   10    4    4    3    1
      Gene458    6   18   23   22   20   15   25   15   10   13   14   40   14   21
      Gene459   16   44   77   30   35   38   47   24   50   22   48   51   25   31
      Gene460   28   95   59   58   56   26   55   53   29   42   35   38   55   57
      Gene461   57  119   90  102   74   41  120   54   48   52   78  139   49  121
      Gene462    7   20   22   17   12   21   14   11    2    3   25    9    9   11
      Gene463   26   38   32   46   27   46   42   26   31   17   22   35   18   24
      Gene464    6    8   20   14    6    9   22    9    4   15    5    5    5   11
      Gene465    9   20   10   25    5    7   14   14    4    3    6   12    2    5
      Gene466    2    .    1    .    1    5    1    4    3    4    6    .    .    3
      Gene467  212  372  350  271  254  244  385  256  259  250  342  331  222  190
      Gene468 2866 5886 3634 3789 2678 2817 3359 2460 2547 2381 2753 2957 1978 2953
      Gene469 1114 1914 1899 1684 1312 1616 2014 1410 1191 1395 1578 1666  820 1414
      Gene470   19   20   35   28   29   19   24   20   14   26   21   22   11   20
      Gene471   20   36   19   21   24   33   11   24   15    8    1   10    5   11
      Gene472   15   24   25   18   26   15   32   11    9   11    4   12   23   11
      Gene473    7   13   12    3   15    4    3    2    3    6    2   11    7    2
      Gene474  113  218  254  178  155  211  224  119  157  149  163  211   94  139
      Gene475    5    2    2    6    .    6    3    9    3    4    5    6    1    2
      Gene476   96  176  105   55  104   49  167   75  101   83   89  116   45   95
      Gene477   21   35   20   10   13    7   11    6    9    8   14   22   10   12
      Gene478  122  262  190  201  159  171  304  144  220   96  139  164  128  176
      Gene479   14   52   32   18   18   25   38   26   21   34   24   26   14   26
      Gene480    1    4    7   15    9    2   15    4    3    4    7    4    2    1
      Gene481    4    8    4   10    4    5    7    3    2    .    4    1    .    5
      Gene482    3    2    3    3    .    1    1    2    .    .    1    1    2    1
      Gene483  121  191  167  145  126  168  172  142   96  103  136  115   78  138
      Gene484    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene485   16   37   35   48   18   24   23   25   19   16   40   26    9   25
      Gene486   66  118   93   75   73   64   69   92   62   45   58   96   51   40
      Gene487   32   77   53   50   46   31   55   44   30   23   29   40   24   43
      Gene488    9   30   37   23   21   31   34   23   41   33   15   20   11   19
      Gene489    .    4    .    2    .    .    .    .    1    1    3    2    .    1
      Gene490   52   43   61   84   54   33   60   53   39   39   38   41   23   36
      Gene491   43  103   57  108   58   60  104   78   62   40   52   54   60   64
      Gene492    .   10    8   11   12    8   20    8    1    .    4    6    1    2
      Gene493   20   35   22   21   40    5   31   10   16   17   29   13   17   27
      Gene494   62  180  180  162  173   99  185  106   91  120  133  183   63  110
      Gene495  147  287  286  189  192  226  237  219  186  180  229  217  150  200
      Gene496    1    6    3    6    2    9   13    6    6   12   13   11    5    5
      Gene497   84   81  113  116  103  117  139  106   70   84   71  126   44   69
      Gene498  106  224  290  131  154  171  176  161  130  184  144  260  103  160
      Gene499   19   53   41   27   30   25   35   21    8   32   25   30   14   25
      Gene500    3    6    3    2    .    8    6    2    .    2    1    1    .    4
                  
      Gene1     50
      Gene2     23
      Gene3      7
      Gene4    246
      Gene5      1
      Gene6     47
      Gene7    244
      Gene8      3
      Gene9      4
      Gene10    11
      Gene11    16
      Gene12   232
      Gene13     4
      Gene14     7
      Gene15    21
      Gene16    68
      Gene17    10
      Gene18     .
      Gene19     5
      Gene20   146
      Gene21    29
      Gene22  1414
      Gene23    22
      Gene24     1
      Gene25     5
      Gene26  2392
      Gene27    16
      Gene28    53
      Gene29    31
      Gene30    19
      Gene31    58
      Gene32     8
      Gene33  1167
      Gene34    11
      Gene35    53
      Gene36    17
      Gene37    13
      Gene38     1
      Gene39    18
      Gene40    62
      Gene41    72
      Gene42     5
      Gene43    12
      Gene44     .
      Gene45  2348
      Gene46    38
      Gene47    12
      Gene48    59
      Gene49    26
      Gene50   792
      Gene51    32
      Gene52    19
      Gene53    10
      Gene54     .
      Gene55    14
      Gene56     3
      Gene57    27
      Gene58    38
      Gene59    16
      Gene60   862
      Gene61     8
      Gene62    41
      Gene63    15
      Gene64  1211
      Gene65     9
      Gene66     8
      Gene67     2
      Gene68    93
      Gene69     9
      Gene70    48
      Gene71    56
      Gene72    32
      Gene73   731
      Gene74     2
      Gene75     .
      Gene76     8
      Gene77    14
      Gene78    21
      Gene79    44
      Gene80    16
      Gene81  1562
      Gene82    18
      Gene83    24
      Gene84     .
      Gene85    18
      Gene86     6
      Gene87     .
      Gene88     9
      Gene89    26
      Gene90    60
      Gene91     7
      Gene92   106
      Gene93    39
      Gene94   927
      Gene95     3
      Gene96    13
      Gene97    24
      Gene98    74
      Gene99     .
      Gene100    2
      Gene101   12
      Gene102   45
      Gene103    8
      Gene104    7
      Gene105   61
      Gene106    .
      Gene107    8
      Gene108 1320
      Gene109    .
      Gene110   17
      Gene111  123
      Gene112   12
      Gene113    5
      Gene114    3
      Gene115  516
      Gene116   72
      Gene117    .
      Gene118   18
      Gene119  171
      Gene120    .
      Gene121   73
      Gene122   64
      Gene123   13
      Gene124   33
      Gene125    1
      Gene126    2
      Gene127   20
      Gene128   27
      Gene129   40
      Gene130   42
      Gene131    8
      Gene132    .
      Gene133    1
      Gene134   33
      Gene135    .
      Gene136   40
      Gene137    .
      Gene138   22
      Gene139    9
      Gene140   14
      Gene141   44
      Gene142   23
      Gene143    9
      Gene144   11
      Gene145   27
      Gene146   32
      Gene147  102
      Gene148   34
      Gene149  131
      Gene150   28
      Gene151   35
      Gene152   18
      Gene153  185
      Gene154   99
      Gene155    .
      Gene156   28
      Gene157   76
      Gene158   13
      Gene159    6
      Gene160   21
      Gene161   74
      Gene162   88
      Gene163    .
      Gene164   27
      Gene165   34
      Gene166   38
      Gene167    .
      Gene168    7
      Gene169    7
      Gene170  124
      Gene171   73
      Gene172   26
      Gene173   17
      Gene174   22
      Gene175   27
      Gene176    5
      Gene177   50
      Gene178   48
      Gene179  550
      Gene180   52
      Gene181   52
      Gene182    .
      Gene183   17
      Gene184   82
      Gene185   92
      Gene186   38
      Gene187    .
      Gene188   57
      Gene189   33
      Gene190    .
      Gene191   11
      Gene192   10
      Gene193    2
      Gene194    .
      Gene195  260
      Gene196    1
      Gene197  184
      Gene198    .
      Gene199    .
      Gene200    .
      Gene201   18
      Gene202   57
      Gene203    1
      Gene204   88
      Gene205    6
      Gene206   80
      Gene207   99
      Gene208    3
      Gene209    3
      Gene210    .
      Gene211    4
      Gene212    3
      Gene213  126
      Gene214   45
      Gene215   51
      Gene216    1
      Gene217    2
      Gene218   86
      Gene219    .
      Gene220   10
      Gene221   34
      Gene222   65
      Gene223   52
      Gene224  259
      Gene225   47
      Gene226    5
      Gene227   45
      Gene228    .
      Gene229    1
      Gene230    7
      Gene231 2735
      Gene232    .
      Gene233    4
      Gene234    1
      Gene235   37
      Gene236   30
      Gene237   49
      Gene238   17
      Gene239    1
      Gene240   51
      Gene241    9
      Gene242    5
      Gene243   52
      Gene244   33
      Gene245   15
      Gene246    1
      Gene247   29
      Gene248   15
      Gene249   35
      Gene250   44
      Gene251   21
      Gene252   68
      Gene253    7
      Gene254    .
      Gene255  232
      Gene256   17
      Gene257   42
      Gene258    .
      Gene259   13
      Gene260   27
      Gene261    9
      Gene262    .
      Gene263    6
      Gene264   25
      Gene265   90
      Gene266   11
      Gene267    7
      Gene268   33
      Gene269   51
      Gene270    2
      Gene271   27
      Gene272  363
      Gene273   26
      Gene274   44
      Gene275    .
      Gene276    .
      Gene277    1
      Gene278   14
      Gene279    .
      Gene280  114
      Gene281   34
      Gene282   17
      Gene283    5
      Gene284   18
      Gene285   35
      Gene286    2
      Gene287  351
      Gene288   23
      Gene289   69
      Gene290    9
      Gene291  217
      Gene292   15
      Gene293    .
      Gene294  244
      Gene295   30
      Gene296    2
      Gene297    .
      Gene298   36
      Gene299    3
      Gene300    5
      Gene301   31
      Gene302    9
      Gene303   77
      Gene304   19
      Gene305   11
      Gene306   16
      Gene307   62
      Gene308    2
      Gene309   13
      Gene310    1
      Gene311   70
      Gene312    1
      Gene313   33
      Gene314   25
      Gene315    1
      Gene316   74
      Gene317    3
      Gene318    .
      Gene319   31
      Gene320    1
      Gene321   20
      Gene322 1064
      Gene323    2
      Gene324   37
      Gene325   62
      Gene326   51
      Gene327   28
      Gene328   16
      Gene329    4
      Gene330   28
      Gene331   67
      Gene332    .
      Gene333    4
      Gene334   19
      Gene335    6
      Gene336  106
      Gene337    3
      Gene338   11
      Gene339    5
      Gene340   77
      Gene341    .
      Gene342   42
      Gene343    5
      Gene344  134
      Gene345   13
      Gene346   29
      Gene347   49
      Gene348   47
      Gene349   36
      Gene350    1
      Gene351  634
      Gene352   49
      Gene353   67
      Gene354    .
      Gene355    .
      Gene356    5
      Gene357    .
      Gene358    7
      Gene359   35
      Gene360   92
      Gene361    1
      Gene362   37
      Gene363    .
      Gene364    1
      Gene365    1
      Gene366   14
      Gene367   11
      Gene368  173
      Gene369    6
      Gene370    4
      Gene371   11
      Gene372  855
      Gene373   27
      Gene374   29
      Gene375   41
      Gene376   28
      Gene377    6
      Gene378 1143
      Gene379   32
      Gene380   14
      Gene381  685
      Gene382  152
      Gene383    1
      Gene384    .
      Gene385   72
      Gene386    .
      Gene387    .
      Gene388   24
      Gene389    3
      Gene390    4
      Gene391    2
      Gene392    6
      Gene393   67
      Gene394    5
      Gene395    1
      Gene396    2
      Gene397   42
      Gene398   82
      Gene399    1
      Gene400   68
      Gene401    5
      Gene402    .
      Gene403    4
      Gene404    2
      Gene405   42
      Gene406    1
      Gene407    5
      Gene408   89
      Gene409   11
      Gene410    3
      Gene411   18
      Gene412   89
      Gene413  102
      Gene414   61
      Gene415   88
      Gene416   17
      Gene417   18
      Gene418   15
      Gene419   27
      Gene420   21
      Gene421   44
      Gene422 1071
      Gene423   17
      Gene424   28
      Gene425   12
      Gene426  139
      Gene427   65
      Gene428    2
      Gene429   47
      Gene430    1
      Gene431    .
      Gene432   52
      Gene433    3
      Gene434   33
      Gene435   71
      Gene436    6
      Gene437   22
      Gene438  677
      Gene439    5
      Gene440    1
      Gene441   20
      Gene442    .
      Gene443   32
      Gene444    5
      Gene445    .
      Gene446   29
      Gene447 2011
      Gene448   37
      Gene449  202
      Gene450   81
      Gene451   13
      Gene452    5
      Gene453  101
      Gene454   41
      Gene455    .
      Gene456    4
      Gene457    5
      Gene458   13
      Gene459   67
      Gene460   20
      Gene461   61
      Gene462    5
      Gene463   27
      Gene464    8
      Gene465   11
      Gene466    .
      Gene467  192
      Gene468 2399
      Gene469 1180
      Gene470   15
      Gene471   18
      Gene472    8
      Gene473   14
      Gene474  128
      Gene475    .
      Gene476   45
      Gene477   15
      Gene478  194
      Gene479   18
      Gene480    7
      Gene481    4
      Gene482    .
      Gene483   89
      Gene484    .
      Gene485   23
      Gene486  126
      Gene487   27
      Gene488    7
      Gene489    .
      Gene490   30
      Gene491   55
      Gene492    1
      Gene493    8
      Gene494  121
      Gene495  176
      Gene496    8
      Gene497   66
      Gene498  139
      Gene499   44
      Gene500    4
      
      Slot "nUMI":
      ct1_plat1_TCAATGACTTCAAGGGTTCCCCAA ct1_plat1_TCAAAAACTTCAAGGGTTCCCCAA 
                                   49244                              88380 
      ct1_plat1_TCAACTACTTAAAGGGTTCCCCAA ct1_plat1_TCAAAAACTTGCAGGGTTCCCCAA 
                                   76448                              67023 
      ct1_plat1_TCAAACACTTGAAGGGTTCCCCAA ct2_plat1_TCAATTACTTAAAGGGTTCCCCAA 
                                   60379                              61185 
      ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA ct2_plat1_TCAAATACTTGCAGGGTTCCCCAA 
                                   74120                              54476 
      ct2_plat1_TCAAGGACTTAAAGGGTTCCCCAA     ct2_plat1_TCAACACTTGAGGGTCCCCA 
                                   51912                              52523 
      ct3_plat1_TCAACGACTTACAGGGTTCCCCAA     ct3_plat1_TCAAGACTTCAGGGTCCCCA 
                                   55584                              68549 
      ct3_plat1_TCAATCACTTCGAGGGTTCCCCAA ct3_plat1_TCAACCACTTCAAGGGTTCCCCAA 
                                   40946                              54877 
      ct3_plat1_TCAACAACTTACAGGGTTCCCCAA 
                                   46661 
      
      
      Slot "config":
      $gene_cutoff
      [1] 0.000125
      
      $fc_cutoff
      [1] 0.5
      
      $gene_cutoff_reg
      [1] 2e-04
      
      $fc_cutoff_reg
      [1] 0.75
      
      $UMI_min
      [1] 100
      
      $UMI_min_sigma
      [1] 300
      
      $max_cores
      [1] 1
      
      $N_epoch
      [1] 8
      
      $N_X
      [1] 50000
      
      $K_val
      [1] 100
      
      $N_fit
      [1] 1000
      
      $N_epoch_bulk
      [1] 30
      
      $MIN_CHANGE_BULK
      [1] 1e-04
      
      $MIN_CHANGE_REG
      [1] 0.001
      
      $UMI_max
      [1] 2e+07
      
      $counts_MIN
      [1] 10
      
      $MIN_OBS
      [1] 3
      
      $MAX_MULTI_TYPES
      [1] 4
      
      $CONFIDENCE_THRESHOLD
      [1] 5
      
      $DOUBLET_THRESHOLD
      [1] 20
      
      
      Slot "cell_type_info":
      $info
      $info[[1]]
                       ct1          ct2          ct3
      Gene1   1.142622e-03 1.708289e-03 1.146536e-03
      Gene2   6.215061e-04 5.567799e-04 6.579786e-04
      Gene3   1.363465e-04 1.594264e-04 1.931168e-04
      Gene4   4.427726e-03 4.500321e-03 4.852678e-03
      Gene5   3.121447e-05 2.354999e-05 2.948032e-05
      Gene6   1.229566e-03 1.124549e-03 1.349484e-03
      Gene7   6.941231e-03 6.498246e-03 4.554168e-03
      Gene8   6.767649e-05 4.991461e-05 6.701322e-05
      Gene9   2.388125e-04 2.894943e-04 2.149046e-04
      Gene10  2.112470e-05 2.220394e-05 4.152914e-05
      Gene11  4.709875e-04 4.887305e-04 3.717524e-04
      Gene12  1.574202e-03 3.348858e-03 3.462904e-03
      Gene13  1.087233e-04 1.121542e-04 9.818790e-05
      Gene14  1.711106e-04 1.713316e-04 1.945431e-04
      Gene15  3.495348e-04 3.056621e-04 3.212371e-04
      Gene16  1.030873e-03 1.082246e-03 2.372289e-03
      Gene17  2.430756e-04 2.452445e-04 2.458867e-04
      Gene18  2.849756e-05 2.904646e-05 1.097732e-05
      Gene19  4.567425e-05 4.729812e-05 4.053085e-05
      Gene20  2.980208e-03 3.012296e-03 4.383193e-03
      Gene21  1.147261e-03 8.090638e-04 1.069491e-03
      Gene22  3.434773e-02 3.344030e-02 3.313978e-02
      Gene23  5.283106e-04 4.700214e-04 5.092742e-04
      Gene24  1.596493e-04 1.185989e-04 8.835712e-05
      Gene25  5.248807e-05 5.287764e-05 6.394887e-05
      Gene26  3.726122e-02 3.866472e-02 4.005957e-02
      Gene27  2.889192e-04 2.628717e-04 3.118429e-04
      Gene28  1.126575e-03 1.322651e-03 1.305098e-03
      Gene29  2.724550e-04 2.598583e-04 2.910078e-04
      Gene30  5.669931e-04 5.865673e-04 4.759177e-04
      Gene31  7.320083e-04 5.946786e-04 8.847151e-04
      Gene32  3.896600e-04 3.021314e-04 3.541537e-04
      Gene33  2.235756e-02 2.298258e-02 2.290723e-02
      Gene34  1.885642e-04 2.289567e-04 2.973942e-04
      Gene35  8.274374e-04 9.549644e-04 1.108297e-03
      Gene36  8.263632e-04 8.055215e-04 8.409961e-04
      Gene37  4.379507e-04 5.225389e-04 3.780087e-04
      Gene38  1.532530e-04 1.272563e-04 9.964519e-05
      Gene39  2.948645e-04 2.720533e-04 3.160666e-04
      Gene40  1.083384e-03 1.259353e-03 1.737217e-03
      Gene41  2.515318e-03 1.266535e-03 1.324961e-03
      Gene42  2.069425e-04 1.202757e-04 1.681638e-04
      Gene43  1.651720e-04 4.006731e-04 3.160241e-04
      Gene44  1.466548e-05 1.260735e-05 1.550601e-05
      Gene45  6.244760e-02 3.682398e-02 6.126217e-02
      Gene46  5.258052e-04 6.074188e-04 6.010125e-04
      Gene47  2.469589e-04 2.105028e-04 2.261787e-04
      Gene48  1.470636e-03 1.864672e-03 1.371559e-03
      Gene49  3.097396e-04 3.279203e-04 3.144925e-04
      Gene50  2.073750e-02 1.789860e-02 2.036923e-02
      Gene51  4.836312e-04 3.688361e-04 8.293002e-04
      Gene52  4.147924e-04 4.263519e-04 3.877400e-04
      Gene53  1.958468e-04 2.308949e-04 2.233282e-04
      Gene54  0.000000e+00 0.000000e+00 0.000000e+00
      Gene55  7.686006e-04 6.941053e-04 7.552003e-04
      Gene56  1.800735e-04 1.668083e-04 1.097877e-04
      Gene57  7.477573e-04 6.811131e-04 6.958313e-04
      Gene58  9.632063e-04 9.143537e-04 1.005134e-03
      Gene59  3.763480e-04 4.285108e-04 5.734593e-04
      Gene60  1.298229e-02 1.271625e-02 1.653432e-02
      Gene61  3.718354e-04 3.566938e-04 2.495516e-04
      Gene62  6.788482e-04 6.954679e-04 7.404561e-04
      Gene63  2.145839e-04 2.177501e-04 3.440540e-04
      Gene64  3.036176e-02 3.202838e-02 2.560287e-02
      Gene65  4.607116e-04 3.415674e-04 3.140855e-04
      Gene66  3.926459e-04 3.944652e-04 4.064500e-04
      Gene67  9.513605e-05 9.815864e-05 1.118710e-04
      Gene68  1.628502e-03 5.253349e-04 1.837483e-03
      Gene69  7.130118e-05 7.419538e-05 1.951289e-04
      Gene70  1.798670e-03 1.834498e-03 1.343311e-03
      Gene71  1.437589e-03 1.474795e-03 1.578820e-03
      Gene72  1.639213e-03 1.603063e-03 1.006031e-03
      Gene73  1.328131e-02 1.598570e-02 1.423897e-02
      Gene74  4.118983e-05 2.858509e-05 3.745117e-05
      Gene75  2.128324e-05 2.146805e-05 1.996527e-05
      Gene76  3.551243e-04 1.815636e-04 1.956492e-04
      Gene77  4.066544e-04 3.804319e-04 3.114581e-04
      Gene78  5.692505e-04 5.558914e-04 5.485741e-04
      Gene79  3.525779e-03 1.935046e-03 1.225522e-03
      Gene80  3.857529e-04 1.785590e-04 4.156723e-04
      Gene81  2.796779e-02 2.814631e-02 3.361112e-02
      Gene82  8.507117e-04 7.464072e-04 4.811454e-04
      Gene83  4.735225e-04 5.548791e-04 7.780998e-04
      Gene84  3.285404e-05 2.977767e-05 2.763857e-05
      Gene85  5.443157e-04 5.777111e-04 2.542250e-04
      Gene86  1.966579e-04 8.417072e-05 1.796213e-04
      Gene87  2.957088e-05 2.629515e-05 3.242586e-05
      Gene88  2.981917e-04 3.699178e-04 2.930723e-04
      Gene89  1.978386e-04 2.375863e-04 3.552167e-04
      Gene90  1.035796e-03 1.182556e-03 9.736121e-04
      Gene91  3.219117e-04 2.837480e-04 2.727160e-04
      Gene92  1.990898e-03 2.040281e-03 1.983648e-03
      Gene93  2.611517e-04 3.477299e-04 2.795531e-04
      Gene94  2.889538e-02 2.524047e-02 2.323734e-02
      Gene95  1.573520e-04 1.463866e-04 1.110076e-04
      Gene96  2.225736e-04 1.192879e-04 2.106020e-04
      Gene97  7.047312e-04 6.812563e-04 4.719419e-04
      Gene98  1.359487e-03 1.445464e-03 1.380892e-03
      Gene99  1.876525e-05 1.351457e-05 4.861084e-06
      Gene100 5.166627e-05 5.795514e-05 3.783893e-05
      Gene101 2.499349e-04 1.162996e-04 1.970991e-04
      Gene102 6.763326e-04 1.405766e-03 6.539251e-04
      Gene103 2.210503e-04 1.864733e-04 2.341106e-04
      Gene104 1.835550e-04 1.615247e-04 1.926656e-04
      Gene105 9.528467e-04 9.790024e-04 1.215157e-03
      Gene106 7.428644e-06 1.024870e-05 8.962833e-06
      Gene107 1.048207e-04 1.301924e-04 1.089417e-04
      Gene108 2.348455e-02 2.289541e-02 2.360852e-02
      Gene109 2.556822e-05 2.329860e-05 1.756777e-05
      Gene110 5.801571e-04 4.852576e-04 5.475738e-04
      Gene111 3.086321e-03 2.298617e-03 2.372789e-03
      Gene112 2.981370e-04 2.936215e-04 2.666470e-04
      Gene113 1.485793e-04 9.928992e-05 1.178591e-04
      Gene114 6.156815e-05 6.640420e-05 8.954254e-05
      Gene115 1.552180e-02 1.596446e-02 1.351424e-02
      Gene116 2.134352e-03 2.164626e-03 1.480128e-03
      Gene117 1.535481e-05 2.183979e-05 1.365453e-05
      Gene118 8.397804e-05 1.034079e-04 1.291082e-04
      Gene119 3.131057e-03 2.994184e-03 3.214521e-03
      Gene120 5.231102e-06 1.409790e-06 5.876670e-07
      Gene121 1.154298e-03 1.128730e-03 1.267208e-03
      Gene122 6.214606e-04 6.272837e-04 1.127049e-03
      Gene123 2.903177e-04 3.317577e-04 3.168349e-04
      Gene124 2.226619e-03 8.697804e-04 9.266082e-04
      Gene125 1.014682e-04 8.235497e-05 8.853371e-05
      Gene126 3.252365e-04 3.407372e-04 3.285878e-04
      Gene127 2.948467e-04 2.993088e-04 2.989999e-04
      Gene128 3.866229e-04 3.687721e-04 3.648394e-04
      Gene129 7.421924e-04 6.768324e-04 6.836392e-04
      Gene130 1.132489e-03 1.072966e-03 1.106040e-03
      Gene131 1.474864e-04 1.459620e-04 1.451614e-04
      Gene132 1.121817e-05 2.585442e-06 7.451947e-06
      Gene133 2.687957e-05 3.769206e-05 3.228143e-05
      Gene134 7.833053e-04 6.008971e-04 7.841298e-04
      Gene135 3.567360e-06 1.973889e-06 4.468978e-07
      Gene136 1.514160e-03 1.628020e-03 1.023272e-03
      Gene137 1.484013e-04 1.520368e-04 1.555824e-04
      Gene138 4.331578e-04 4.213127e-04 4.708653e-04
      Gene139 1.818619e-04 5.886683e-05 1.517972e-04
      Gene140 4.607241e-04 2.236947e-04 4.131580e-04
      Gene141 7.118659e-04 7.358433e-04 7.877375e-04
      Gene142 8.465583e-04 8.609936e-04 7.753259e-04
      Gene143 1.584643e-04 1.648948e-04 1.685325e-04
      Gene144 2.865453e-04 3.316216e-04 3.421333e-04
      Gene145 1.200366e-03 1.307251e-03 1.237636e-03
      Gene146 7.069307e-04 8.129319e-04 7.169267e-04
      Gene147 2.817177e-03 2.371328e-03 3.497131e-03
      Gene148 2.198590e-03 1.223283e-03 9.297605e-04
      Gene149 4.003035e-03 4.135183e-03 4.086087e-03
      Gene150 8.434169e-04 8.407535e-04 8.745033e-04
      Gene151 5.726337e-04 5.680100e-04 6.492841e-04
      Gene152 4.696186e-04 5.303916e-04 5.069151e-04
      Gene153 2.735992e-03 2.690692e-03 3.005526e-03
      Gene154 1.877688e-03 6.838358e-04 1.833607e-03
      Gene155 8.254149e-06 2.815383e-06 8.031433e-06
      Gene156 5.915376e-04 6.087998e-04 5.572107e-04
      Gene157 1.503868e-03 1.687494e-03 1.595357e-03
      Gene158 4.087922e-04 3.103085e-04 3.546000e-04
      Gene159 8.290040e-05 8.608122e-05 1.108826e-04
      Gene160 4.211927e-04 3.643309e-04 3.813771e-04
      Gene161 1.151743e-03 1.095375e-03 1.271079e-03
      Gene162 1.756524e-03 1.854643e-03 1.464916e-03
      Gene163 9.776347e-06 1.766420e-05 1.662800e-05
      Gene164 3.447461e-04 7.051485e-04 4.092586e-04
      Gene165 1.158628e-03 1.043137e-03 8.685183e-04
      Gene166 2.126045e-03 1.025950e-03 5.981027e-04
      Gene167 1.569253e-05 1.963657e-05 2.042495e-05
      Gene168 1.785673e-04 1.879906e-04 2.019249e-04
      Gene169 1.697217e-04 1.266610e-04 1.314674e-04
      Gene170 1.856505e-03 1.819097e-03 2.025906e-03
      Gene171 2.404402e-03 2.492281e-03 2.449409e-03
      Gene172 5.401494e-04 5.731207e-04 6.172470e-04
      Gene173 7.227736e-04 7.074078e-04 8.375539e-04
      Gene174 4.918230e-04 5.609926e-04 5.299840e-04
      Gene175 3.458179e-04 3.367098e-04 3.993211e-04
      Gene176 1.426631e-04 1.644756e-04 1.619010e-04
      Gene177 9.971194e-04 9.114947e-04 1.077599e-03
      Gene178 1.679034e-03 1.609185e-03 1.617377e-03
      Gene179 2.255434e-02 2.430524e-02 1.286223e-02
      Gene180 1.516632e-03 1.410691e-03 1.372143e-03
      Gene181 1.430566e-03 1.453304e-03 1.500959e-03
      Gene182 8.373190e-06 1.514922e-05 3.051086e-06
      Gene183 1.325847e-03 5.181946e-04 5.128024e-04
      Gene184 2.090672e-03 2.121168e-03 2.052361e-03
      Gene185 1.906301e-03 2.040075e-03 1.899924e-03
      Gene186 6.367795e-04 6.111604e-04 6.705262e-04
      Gene187 4.020568e-06 1.351576e-06 1.854442e-06
      Gene188 1.657828e-03 1.688615e-03 1.629554e-03
      Gene189 1.273742e-03 1.306540e-03 6.270499e-04
      Gene190 5.172300e-05 3.696417e-05 2.671179e-05
      Gene191 2.424717e-04 2.493113e-04 2.787065e-04
      Gene192 3.451506e-04 3.861470e-04 3.648513e-04
      Gene193 2.852784e-05 5.881736e-05 3.111533e-05
      Gene194 0.000000e+00 0.000000e+00 0.000000e+00
      Gene195 8.225333e-03 7.754143e-03 7.517268e-03
      Gene196 4.021478e-05 3.410033e-05 1.961978e-05
      Gene197 3.330208e-03 3.360402e-03 3.694686e-03
      Gene198 2.134019e-05 1.408514e-05 1.235029e-05
      Gene199 8.150440e-05 6.464343e-05 4.909388e-05
      Gene200 1.073775e-04 2.085231e-04 1.093469e-04
      Gene201 3.620165e-04 3.685398e-04 3.442039e-04
      Gene202 1.208332e-03 1.290623e-03 1.242766e-03
      Gene203 3.828490e-04 2.640285e-04 1.525290e-04
      Gene204 2.447527e-03 2.242511e-03 2.180544e-03
      Gene205 1.147075e-04 1.182024e-04 9.483590e-05
      Gene206 1.735182e-03 1.808439e-03 1.980532e-03
      Gene207 2.826113e-03 2.490325e-03 2.165220e-03
      Gene208 1.404443e-04 1.417398e-04 8.288986e-05
      Gene209 1.983707e-05 1.929433e-05 2.265142e-05
      Gene210 5.183051e-05 2.212131e-05 1.610120e-05
      Gene211 3.338548e-05 3.741111e-05 5.226705e-05
      Gene212 1.027472e-04 1.449016e-04 1.072739e-04
      Gene213 5.064688e-04 4.995941e-04 1.261531e-03
      Gene214 1.769473e-03 1.683507e-03 1.738657e-03
      Gene215 1.271977e-03 1.346466e-03 1.331927e-03
      Gene216 2.297408e-05 2.624697e-05 2.794565e-05
      Gene217 1.130572e-04 1.524925e-04 1.220366e-04
      Gene218 5.372337e-04 6.115981e-04 1.015250e-03
      Gene219 1.832135e-05 1.722480e-05 1.814639e-05
      Gene220 3.884224e-04 3.242554e-04 4.589347e-04
      Gene221 9.346740e-04 9.950043e-04 9.108824e-04
      Gene222 1.733901e-03 1.736703e-03 1.619765e-03
      Gene223 2.534886e-03 1.539229e-03 1.538331e-03
      Gene224 6.971467e-03 4.922739e-03 4.761257e-03
      Gene225 1.603120e-03 1.615754e-03 1.616195e-03
      Gene226 5.650259e-04 4.880962e-04 2.561504e-04
      Gene227 8.456973e-04 9.316448e-04 9.100803e-04
      Gene228 2.593262e-05 2.237320e-05 1.980962e-05
      Gene229 8.481153e-06 1.027121e-05 5.344513e-06
      Gene230 2.181374e-04 2.428374e-04 2.470021e-04
      Gene231 3.646691e-02 3.537148e-02 5.274554e-02
      Gene232 5.031072e-07 3.066454e-07 5.051168e-07
      Gene233 3.345627e-04 3.463453e-04 2.065943e-04
      Gene234 4.084368e-05 1.928352e-05 4.239142e-05
      Gene235 4.150628e-04 4.174445e-04 4.940422e-04
      Gene236 1.295777e-03 1.170394e-03 5.750994e-04
      Gene237 1.770758e-03 9.048554e-04 8.631411e-04
      Gene238 2.851521e-04 6.686865e-04 3.363536e-04
      Gene239 4.884900e-05 9.865461e-05 4.139077e-05
      Gene240 6.417531e-04 6.170847e-04 6.353654e-04
      Gene241 4.107701e-04 3.825381e-04 4.199199e-04
      Gene242 2.241490e-04 9.729413e-05 2.051669e-04
      Gene243 1.340472e-03 1.218764e-03 1.134233e-03
      Gene244 9.145912e-04 9.278042e-04 9.705728e-04
      Gene245 3.483973e-04 6.799190e-04 3.858566e-04
      Gene246 2.890955e-05 2.306083e-05 2.248622e-05
      Gene247 4.533756e-04 4.599871e-04 4.268974e-04
      Gene248 1.868113e-04 2.031913e-04 2.681772e-04
      Gene249 9.267062e-04 9.663027e-04 1.053221e-03
      Gene250 1.264789e-03 1.325722e-03 1.186380e-03
      Gene251 4.405054e-04 4.548287e-04 3.204549e-04
      Gene252 1.720074e-03 1.768248e-03 1.345452e-03
      Gene253 1.419406e-04 1.704829e-04 2.436478e-04
      Gene254 2.208843e-05 3.287021e-05 1.413951e-05
      Gene255 5.282331e-03 4.885480e-03 5.100176e-03
      Gene256 3.185127e-04 2.161887e-04 4.333262e-04
      Gene257 4.847900e-04 4.603031e-04 4.090009e-04
      Gene258 1.589539e-05 2.170498e-05 1.322309e-05
      Gene259 2.576126e-04 2.616489e-04 3.693897e-04
      Gene260 4.412542e-04 7.909024e-04 4.627195e-04
      Gene261 2.543875e-04 2.447782e-04 2.884437e-04
      Gene262 0.000000e+00 0.000000e+00 0.000000e+00
      Gene263 1.501231e-04 1.566077e-04 1.232878e-04
      Gene264 4.327662e-04 4.796446e-04 4.986712e-04
      Gene265 1.827231e-03 2.374813e-03 1.831131e-03
      Gene266 3.798529e-04 3.854554e-04 3.618957e-04
      Gene267 1.066501e-04 9.298921e-05 9.126519e-05
      Gene268 6.364982e-04 6.337435e-04 6.107856e-04
      Gene269 7.268320e-04 6.971221e-04 8.318275e-04
      Gene270 4.029981e-05 2.950892e-05 3.134321e-05
      Gene271 4.313175e-04 4.895189e-04 4.441650e-04
      Gene272 7.324214e-03 7.283325e-03 7.264569e-03
      Gene273 3.624443e-04 2.585528e-04 2.991380e-04
      Gene274 8.094118e-04 8.617765e-04 9.670541e-04
      Gene275 7.435826e-05 7.638285e-05 8.348911e-05
      Gene276 5.207795e-05 4.960327e-05 8.293159e-05
      Gene277 4.715029e-05 1.754883e-05 4.525554e-05
      Gene278 3.506145e-04 3.052977e-04 2.479162e-04
      Gene279 4.602722e-05 5.014413e-05 5.655838e-05
      Gene280 2.318834e-03 2.383567e-03 2.451303e-03
      Gene281 1.141435e-03 1.205053e-03 1.274697e-03
      Gene282 2.081554e-04 1.733360e-04 2.091221e-04
      Gene283 2.724979e-05 2.612941e-05 3.302541e-05
      Gene284 3.902241e-04 4.320964e-04 3.967193e-04
      Gene285 4.533289e-04 4.778948e-04 8.303194e-04
      Gene286 4.406942e-05 4.644313e-05 4.877198e-05
      Gene287 4.588541e-03 6.196896e-03 6.435351e-03
      Gene288 6.283319e-04 6.891637e-04 6.935647e-04
      Gene289 1.959079e-03 8.290902e-04 1.847425e-03
      Gene290 3.864473e-04 3.574153e-04 2.057321e-04
      Gene291 1.556569e-03 1.376609e-03 3.446199e-03
      Gene292 1.947252e-04 2.064701e-04 2.075006e-04
      Gene293 9.314063e-06 1.273110e-05 1.928857e-05
      Gene294 4.641483e-03 5.137133e-03 5.333344e-03
      Gene295 5.549420e-04 1.120611e-03 4.951108e-04
      Gene296 2.823104e-05 3.156679e-05 2.910388e-05
      Gene297 1.141794e-05 6.786442e-06 5.534685e-06
      Gene298 3.141440e-04 3.545946e-04 5.328949e-04
      Gene299 4.536518e-05 6.144221e-05 5.002178e-05
      Gene300 1.915897e-04 1.464491e-04 1.514436e-04
      Gene301 1.115559e-03 1.027028e-03 1.088445e-03
      Gene302 1.347412e-04 1.383892e-04 1.686030e-04
      Gene303 1.275564e-03 1.154783e-03 1.290266e-03
      Gene304 5.549629e-04 5.725744e-04 5.625378e-04
      Gene305 2.239413e-04 2.515744e-04 2.813259e-04
      Gene306 3.323571e-04 3.244792e-04 3.434691e-04
      Gene307 2.290869e-03 1.045842e-03 1.262268e-03
      Gene308 9.697812e-06 2.535190e-05 1.556585e-05
      Gene309 4.698006e-04 4.676071e-04 3.177204e-04
      Gene310 5.305834e-06 7.588623e-06 4.554775e-06
      Gene311 1.431572e-03 2.685908e-03 1.441149e-03
      Gene312 9.888847e-05 9.511836e-05 8.898045e-05
      Gene313 8.712431e-04 8.545124e-04 1.009376e-03
      Gene314 4.027097e-04 4.435581e-04 4.111503e-04
      Gene315 8.703675e-07 3.578000e-06 7.653991e-07
      Gene316 2.123447e-03 1.962025e-03 2.109039e-03
      Gene317 7.906611e-05 1.219060e-04 1.095408e-04
      Gene318 5.034681e-05 5.722990e-05 4.199614e-05
      Gene319 7.290241e-04 7.452619e-04 7.555532e-04
      Gene320 5.723944e-05 4.158523e-05 6.020339e-05
      Gene321 4.658084e-04 2.855434e-04 3.712503e-04
      Gene322 2.127664e-02 1.991403e-02 2.100129e-02
      Gene323 1.937750e-05 1.138910e-05 1.839926e-05
      Gene324 7.745865e-04 2.801366e-03 8.395749e-04
      Gene325 1.560228e-03 1.409183e-03 1.229499e-03
      Gene326 1.437099e-03 9.935493e-04 1.228747e-03
      Gene327 6.673026e-04 5.264957e-04 5.679634e-04
      Gene328 3.719523e-04 2.242646e-04 3.081159e-04
      Gene329 9.872065e-05 8.058608e-05 8.158958e-05
      Gene330 6.108977e-04 6.356830e-04 6.806080e-04
      Gene331 8.212304e-04 2.824313e-04 8.732534e-04
      Gene332 1.011547e-05 1.106201e-05 1.278144e-05
      Gene333 1.260033e-04 1.293840e-04 1.124182e-04
      Gene334 4.257863e-04 5.010241e-04 4.080161e-04
      Gene335 1.703030e-04 1.168960e-04 1.571696e-04
      Gene336 3.189676e-03 3.045974e-03 2.703537e-03
      Gene337 5.423741e-05 4.246829e-05 3.995763e-05
      Gene338 1.940127e-04 2.068888e-04 2.064093e-04
      Gene339 7.501275e-05 5.760849e-05 7.352907e-05
      Gene340 1.167151e-03 1.595188e-03 1.282819e-03
      Gene341 2.603421e-05 2.385086e-05 1.568058e-05
      Gene342 7.155730e-04 6.717434e-04 1.301123e-03
      Gene343 2.574927e-04 2.419140e-04 2.462799e-04
      Gene344 5.162880e-03 5.046752e-03 2.886839e-03
      Gene345 3.894944e-05 4.339861e-05 6.887441e-05
      Gene346 2.218611e-03 8.116111e-04 6.280096e-04
      Gene347 9.626346e-04 8.988575e-04 1.061212e-03
      Gene348 1.146044e-03 1.962834e-03 1.228604e-03
      Gene349 1.087302e-03 1.027262e-03 7.362620e-04
      Gene350 2.880681e-05 2.393821e-05 1.559928e-05
      Gene351 1.609336e-02 1.572549e-02 1.574844e-02
      Gene352 5.640696e-04 7.651498e-04 8.374863e-04
      Gene353 8.213385e-04 8.296185e-04 1.862807e-03
      Gene354 5.115584e-06 3.656637e-06 1.197377e-05
      Gene355 7.862155e-06 4.297557e-06 2.334819e-06
      Gene356 5.373597e-04 3.818279e-04 5.008994e-04
      Gene357 4.600399e-05 7.099987e-05 4.914822e-05
      Gene358 2.110906e-04 2.117673e-04 2.172740e-04
      Gene359 4.764771e-04 5.103585e-04 5.243735e-04
      Gene360 1.391089e-03 1.316758e-03 2.143842e-03
      Gene361 1.312042e-04 1.326271e-04 1.392107e-04
      Gene362 7.873483e-04 8.232429e-04 1.339906e-03
      Gene363 2.526771e-05 2.634078e-05 8.447275e-06
      Gene364 8.718680e-06 4.077565e-06 1.475465e-05
      Gene365 1.285063e-04 8.925601e-05 9.762448e-05
      Gene366 4.595683e-04 4.344954e-04 4.209064e-04
      Gene367 2.220889e-04 6.136963e-04 2.924284e-04
      Gene368 2.145391e-03 1.986998e-03 3.614837e-03
      Gene369 1.078365e-04 7.202295e-05 1.563181e-04
      Gene370 1.486823e-04 1.502264e-04 1.613047e-04
      Gene371 2.212929e-04 2.166711e-04 2.198679e-04
      Gene372 2.598745e-02 6.551310e-02 2.250934e-02
      Gene373 7.476671e-04 5.602685e-04 7.025380e-04
      Gene374 8.398437e-04 8.172598e-04 6.162005e-04
      Gene375 4.547395e-04 5.244019e-04 8.600782e-04
      Gene376 4.311575e-04 3.632659e-04 6.309210e-04
      Gene377 1.225255e-04 1.464695e-04 1.053203e-04
      Gene378 1.585849e-02 1.543284e-02 2.239581e-02
      Gene379 5.727567e-04 7.355804e-04 5.994491e-04
      Gene380 2.323047e-04 1.551361e-04 2.160580e-04
      Gene381 1.246854e-02 1.203633e-02 1.174071e-02
      Gene382 3.910616e-03 6.276995e-03 3.923569e-03
      Gene383 1.860529e-04 1.628876e-04 9.862986e-05
      Gene384 1.880863e-06 6.513161e-06 3.571863e-06
      Gene385 6.054601e-04 1.327000e-03 1.333467e-03
      Gene386 2.574182e-05 2.935497e-05 2.587782e-05
      Gene387 9.274422e-05 1.078943e-04 1.065102e-04
      Gene388 5.023167e-04 5.270583e-04 4.292952e-04
      Gene389 1.214964e-04 8.751949e-05 1.147317e-04
      Gene390 1.021814e-04 1.454050e-04 1.068143e-04
      Gene391 3.508875e-05 3.615783e-05 2.769168e-05
      Gene392 8.789053e-05 1.199620e-04 9.508041e-05
      Gene393 1.593406e-03 1.645514e-03 1.619473e-03
      Gene394 8.842397e-05 5.612989e-05 8.657236e-05
      Gene395 3.900672e-05 3.542017e-05 4.214760e-05
      Gene396 2.832476e-05 2.952245e-05 2.283254e-05
      Gene397 1.034020e-03 9.536112e-04 1.041649e-03
      Gene398 2.467220e-03 2.374498e-03 2.522584e-03
      Gene399 2.099698e-05 1.524521e-05 1.525979e-05
      Gene400 1.310874e-03 1.296561e-03 1.359369e-03
      Gene401 2.326268e-04 2.709677e-04 2.271345e-04
      Gene402 7.131744e-06 1.329137e-05 9.592453e-06
      Gene403 2.071582e-04 2.083265e-04 1.749791e-04
      Gene404 8.378005e-05 5.587914e-05 2.920369e-05
      Gene405 4.518806e-04 8.461655e-04 9.601758e-04
      Gene406 8.525819e-05 1.078017e-04 7.434242e-05
      Gene407 1.548238e-04 1.026431e-04 1.064184e-04
      Gene408 1.632110e-03 1.646546e-03 1.485137e-03
      Gene409 2.586837e-04 2.511799e-04 2.346771e-04
      Gene410 4.023190e-05 5.591876e-05 2.537288e-05
      Gene411 4.636679e-04 5.620935e-04 4.965255e-04
      Gene412 1.507343e-03 1.504850e-03 1.452638e-03
      Gene413 1.783612e-03 1.777588e-03 1.723497e-03
      Gene414 1.483146e-03 1.596147e-03 2.024728e-03
      Gene415 1.559478e-03 1.477651e-03 1.902922e-03
      Gene416 4.915887e-04 4.720185e-04 5.357805e-04
      Gene417 3.044110e-04 3.467758e-04 3.501490e-04
      Gene418 3.001783e-04 2.907555e-04 1.745714e-04
      Gene419 4.094749e-04 4.118555e-04 5.942040e-04
      Gene420 2.536664e-04 2.360499e-04 2.533999e-04
      Gene421 4.882811e-04 6.364252e-04 6.341269e-04
      Gene422 2.277727e-02 2.247860e-02 2.150099e-02
      Gene423 2.777575e-04 3.065484e-04 5.654705e-04
      Gene424 6.968850e-04 1.417797e-03 8.385243e-04
      Gene425 1.722634e-04 2.043970e-04 2.075592e-04
      Gene426 2.415923e-03 2.403893e-03 2.313165e-03
      Gene427 1.060711e-03 1.013258e-03 1.063610e-03
      Gene428 4.080670e-05 3.324029e-05 2.893392e-05
      Gene429 8.046290e-04 7.154161e-04 1.184499e-03
      Gene430 2.488976e-05 1.483307e-05 2.183397e-05
      Gene431 1.061961e-06 0.000000e+00 8.722289e-07
      Gene432 1.161937e-03 9.470361e-04 1.228025e-03
      Gene433 5.409217e-05 3.762530e-05 5.266177e-05
      Gene434 8.476866e-04 9.013099e-04 9.234317e-04
      Gene435 1.375889e-03 1.431001e-03 1.366057e-03
      Gene436 2.599593e-04 3.365491e-04 2.887685e-04
      Gene437 2.692092e-04 2.422160e-04 2.709059e-04
      Gene438 1.246387e-02 1.225934e-02 1.288146e-02
      Gene439 2.518841e-04 2.701909e-04 2.294866e-04
      Gene440 9.901919e-05 5.939377e-05 6.806003e-05
      Gene441 4.116865e-04 3.751754e-04 3.834891e-04
      Gene442 1.860768e-05 1.022810e-05 1.576506e-05
      Gene443 6.742860e-04 7.480864e-04 6.090109e-04
      Gene444 1.754898e-04 9.880063e-05 1.261249e-04
      Gene445 3.531707e-05 3.719302e-05 2.865127e-05
      Gene446 3.829935e-04 3.004750e-04 5.500047e-04
      Gene447 4.505162e-02 4.485196e-02 4.525151e-02
      Gene448 1.057817e-03 1.165992e-03 1.057453e-03
      Gene449 3.760669e-03 3.602162e-03 3.858572e-03
      Gene450 2.013000e-03 2.066321e-03 2.159958e-03
      Gene451 3.442605e-04 6.421893e-04 3.621755e-04
      Gene452 2.783144e-05 3.623371e-05 3.323343e-05
      Gene453 2.564704e-03 2.568899e-03 2.428024e-03
      Gene454 4.771222e-04 5.004992e-04 5.383347e-04
      Gene455 0.000000e+00 3.970012e-07 6.824690e-07
      Gene456 1.602495e-04 1.182736e-04 1.639881e-04
      Gene457 2.003966e-04 1.951685e-04 1.100448e-04
      Gene458 2.605843e-04 2.557063e-04 3.000829e-04
      Gene459 5.077172e-04 5.892215e-04 6.598646e-04
      Gene460 8.397104e-04 8.721549e-04 7.783699e-04
      Gene461 1.182075e-03 1.192884e-03 1.706315e-03
      Gene462 2.010147e-04 1.861750e-04 2.562119e-04
      Gene463 5.702024e-04 5.560484e-04 5.484052e-04
      Gene464 1.786100e-04 1.812965e-04 1.254159e-04
      Gene465 1.665015e-04 1.524835e-04 1.468307e-04
      Gene466 1.321388e-05 4.659937e-05 2.723158e-05
      Gene467 4.615504e-03 4.567671e-03 4.628302e-03
      Gene468 5.161471e-02 4.895275e-02 4.982191e-02
      Gene469 2.482159e-02 2.397193e-02 2.468373e-02
      Gene470 3.232752e-04 3.347220e-04 3.025347e-04
      Gene471 3.332667e-04 3.559579e-04 1.792919e-04
      Gene472 2.588350e-04 2.183466e-04 2.017988e-04
      Gene473 1.153231e-04 1.013736e-04 1.051422e-04
      Gene474 2.806221e-03 2.697229e-03 2.643319e-03
      Gene475 5.756670e-05 5.631495e-05 7.897222e-05
      Gene476 1.543669e-03 1.467585e-03 1.463271e-03
      Gene477 3.139504e-04 1.726310e-04 2.836890e-04
      Gene478 2.731733e-03 2.733909e-03 2.969834e-03
      Gene479 4.113520e-04 3.947864e-04 3.703320e-04
      Gene480 1.295171e-04 1.594924e-04 1.468933e-04
      Gene481 9.170338e-05 8.622580e-05 9.416717e-05
      Gene482 1.847529e-05 3.612912e-05 4.024846e-05
      Gene483 2.083637e-03 2.083963e-03 1.977340e-03
      Gene484 0.000000e+00 1.562826e-06 7.742095e-07
      Gene485 4.745494e-04 3.974233e-04 5.486424e-04
      Gene486 1.036669e-03 1.067384e-03 1.226580e-03
      Gene487 6.500313e-04 6.546306e-04 6.211120e-04
      Gene488 3.799393e-04 4.297884e-04 2.324428e-04
      Gene489 3.126185e-05 1.710626e-05 2.217626e-05
      Gene490 7.868221e-04 7.332645e-04 7.696099e-04
      Gene491 1.046538e-03 1.032267e-03 1.146467e-03
      Gene492 1.438690e-04 1.635253e-04 6.288902e-05
      Gene493 3.497024e-04 3.601811e-04 3.551710e-04
      Gene494 2.384601e-03 1.773575e-03 2.441566e-03
      Gene495 3.612914e-03 3.838527e-03 3.656622e-03
      Gene496 1.045240e-04 2.214288e-04 1.168174e-04
      Gene497 1.515801e-03 1.686955e-03 1.575583e-03
      Gene498 3.014419e-03 3.111277e-03 2.892661e-03
      Gene499 5.646501e-04 5.172890e-04 5.851213e-04
      Gene500 3.315329e-05 4.151766e-05 2.033553e-05
      
      $info[[2]]
      [1] "ct1" "ct2" "ct3"
      
      $info[[3]]
      [1] 3
      
      
      $renorm
      NULL
      
      
      Slot "internal_vars":
      $gene_list_reg
       [1] "Gene79"  "Gene124" "Gene166" "Gene183" "Gene346" "Gene238" "Gene295"
       [8] "Gene324" "Gene367" "Gene372" "Gene16"  "Gene213" "Gene291" "Gene353"
      
      $gene_list_bulk
       [1] "Gene41"  "Gene76"  "Gene79"  "Gene124" "Gene139" "Gene148" "Gene166"
       [8] "Gene183" "Gene203" "Gene237" "Gene307" "Gene346" "Gene43"  "Gene102"
      [15] "Gene164" "Gene200" "Gene238" "Gene245" "Gene260" "Gene295" "Gene311"
      [22] "Gene324" "Gene348" "Gene367" "Gene372" "Gene424" "Gene451" "Gene496"
      [29] "Gene16"  "Gene51"  "Gene68"  "Gene69"  "Gene122" "Gene213" "Gene218"
      [36] "Gene285" "Gene291" "Gene342" "Gene353" "Gene362" "Gene368" "Gene369"
      [43] "Gene375" "Gene423"
      
      $proportions
      NULL
      
      $class_df
          class
      ct1   ct1
      ct2   ct2
      ct3   ct3
      
      $cell_types_assigned
      [1] FALSE
      
      
      Slot "results":
      list()
      
      Slot "de_results":
      list()
      
      Slot "internal_vars_de":
      list()
      

