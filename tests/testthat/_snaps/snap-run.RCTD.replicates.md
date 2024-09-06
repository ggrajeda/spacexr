# run.RCTD.replicates

    Code
      for (i in raw_result@RCTD.reps) {
        result <- rctd_result_list(i)
        print_rctd_results(result)
      }
    Output
       [1] 4.1804e-03 9.2597e-04 4.9551e-03 5.4996e-04 2.2961e-03 5.5620e-04
       [7] 6.2477e-03 8.4291e-04 2.0315e-04 1.4200e-03 4.1971e-03 4.2071e-03
      [13] 2.9899e-03 3.3618e-04 2.6484e-03 4.9901e-03 2.1384e-04 3.7208e-04
      [19] 9.8281e-04 3.1358e-04 4.8953e-05 6.6209e-04 3.3709e-04 8.5555e-04
      [25] 2.7139e-04 4.2517e-04 8.5295e-04 1.3363e-04 1.3671e-03 2.1929e-03
      [31] 7.8480e-05 2.9490e-04 1.5099e-03 1.2772e-03 1.7294e-03 1.5208e-04
      [37] 3.0731e-04 2.2451e-03 7.3235e-05 4.6488e-04 3.2025e-04 1.2230e-03
      [43] 2.1895e-03 9.8089e-05 6.2986e-04 8.6821e-04 1.0397e-03 7.2754e-04
      [49] 1.3388e-03 6.9926e-05 2.9010e-02 1.7663e-04 3.2378e-04 2.3511e-03
      [55] 9.5633e-04 6.0812e-04 1.3899e-04 9.9516e-04 3.9365e-04 9.2399e-04
                           spot_class first_type second_type first_class second_class
      CATAAATAATGACATATATA    singlet        ct2         ct1       FALSE        FALSE
      AGTAATGAGATAACTA        singlet        ct3         ct2       FALSE        FALSE
      TATAATGACATAGATA        singlet        ct2         ct1       FALSE        FALSE
      CATAATGACATAACTA        singlet        ct2         ct3       FALSE        FALSE
      AGTAATGACGTA            singlet        ct1         ct2       FALSE        FALSE
      CATAATGACATAGCTA        singlet        ct2         ct1       FALSE        FALSE
      CATACATAATGACATAAATA    singlet        ct2         ct1       FALSE        FALSE
      ACTAATGAGCTA            singlet        ct1         ct2       FALSE        FALSE
      CATAATGAGATATATA        singlet        ct3         ct1       FALSE        FALSE
      GCTAATGATCTA            singlet        ct1         ct2       FALSE        FALSE
      TCTAATGATCTA            singlet        ct1         ct2       FALSE        FALSE
      CATACATAATGATCTA        singlet        ct1         ct3       FALSE        FALSE
      CATAAATAATGACATAACTA    singlet        ct2         ct1       FALSE        FALSE
      TATAATGAACTA            singlet        ct1         ct3       FALSE        FALSE
      TCTAATGAGATA            singlet        ct1         ct2       FALSE        FALSE
      CATACATAATGAGATAGATA    singlet        ct3         ct1       FALSE        FALSE
      CATAATGACATACCTA        singlet        ct2         ct1       FALSE        FALSE
      CGTAATGACATATCTA        singlet        ct2         ct1       FALSE        FALSE
      GCTAATGACATAAGTA        singlet        ct2         ct3       FALSE        FALSE
      TATAATGATCTA            singlet        ct1         ct3       FALSE        FALSE
      CCTAATGAGATATCTA        singlet        ct3         ct2       FALSE        FALSE
      GATAATGACATAGATA        singlet        ct2         ct1       FALSE        FALSE
      TCTAATGAACTA            singlet        ct1         ct3       FALSE        FALSE
      CGTAATGACATAGCTA        singlet        ct2         ct1       FALSE        FALSE
      ACTAATGACATAGCTA        singlet        ct2         ct1       FALSE        FALSE
      GCTAATGATATA            singlet        ct1         ct2       FALSE        FALSE
      CATACATAATGAGATATCTA    singlet        ct3         ct2       FALSE        FALSE
      CCTAATGAGATAAGTA        singlet        ct3         ct1       FALSE        FALSE
      CATAAATAATGACATATCTA    singlet        ct2         ct3       FALSE        FALSE
      AGTAATGACATATCTA        singlet        ct2         ct1       FALSE        FALSE
                           min_score singlet_score conv_all conv_doublet
      CATAAATAATGACATATATA   103.114       105.113     TRUE         TRUE
      AGTAATGAGATAACTA        94.557        94.916     TRUE         TRUE
      TATAATGACATAGATA       105.585       105.579     TRUE         TRUE
      CATAATGACATAACTA       104.279       106.076     TRUE         TRUE
      AGTAATGACGTA           106.333       106.665     TRUE         TRUE
      CATAATGACATAGCTA       103.459       103.629     TRUE         TRUE
      CATACATAATGACATAAATA   101.784       101.794     TRUE         TRUE
      ACTAATGAGCTA           103.740       104.118     TRUE         TRUE
      CATAATGAGATATATA       100.278       100.256     TRUE         TRUE
      GCTAATGATCTA           107.881       107.877     TRUE         TRUE
      TCTAATGATCTA            97.577        97.592     TRUE         TRUE
      CATACATAATGATCTA       100.650       100.899     TRUE         TRUE
      CATAAATAATGACATAACTA   107.419       108.915     TRUE         TRUE
      TATAATGAACTA            98.510        99.388     TRUE         TRUE
      TCTAATGAGATA            94.628        94.856     TRUE         TRUE
      CATACATAATGAGATAGATA    92.394        92.517     TRUE         TRUE
      CATAATGACATACCTA       105.511       105.511     TRUE         TRUE
      CGTAATGACATATCTA       100.283       100.434     TRUE         TRUE
      GCTAATGACATAAGTA       104.557       104.823     TRUE         TRUE
      TATAATGATCTA           104.721       104.801     TRUE         TRUE
      CCTAATGAGATATCTA        97.556        98.570     TRUE         TRUE
      GATAATGACATAGATA       113.159       113.145     TRUE         TRUE
      TCTAATGAACTA            99.700        99.786     TRUE         TRUE
      CGTAATGACATAGCTA       106.202       106.196     TRUE         TRUE
      ACTAATGACATAGCTA       100.184       100.178     TRUE         TRUE
      GCTAATGATATA            93.712        94.589     TRUE         TRUE
      CATACATAATGAGATATCTA   104.150       104.331     TRUE         TRUE
      CCTAATGAGATAAGTA        95.088        95.088     TRUE         TRUE
      CATAAATAATGACATATCTA   101.262       101.299     TRUE         TRUE
      AGTAATGACATATCTA       106.208       106.215     TRUE         TRUE
       [1] 4.3075e-03 9.1559e-04 4.6897e-03 5.9483e-04 2.5148e-03 5.9424e-04
       [7] 6.3493e-03 7.7858e-04 2.0436e-04 1.4426e-03 4.1755e-03 4.2585e-03
      [13] 2.9606e-03 2.7335e-04 2.6390e-03 5.0106e-03 2.1724e-04 3.3901e-04
      [19] 1.0261e-03 2.9736e-04 5.3323e-05 6.3083e-04 2.4957e-04 8.9085e-04
      [25] 2.9881e-04 3.9886e-04 8.4554e-04 1.3268e-04 1.4560e-03 1.9618e-03
      [31] 8.8378e-05 2.7000e-04 1.5659e-03 1.2640e-03 1.8360e-03 1.8347e-04
      [37] 2.6001e-04 2.3740e-03 7.7357e-05 4.8997e-04 3.2283e-04 1.2418e-03
      [43] 2.1032e-03 9.0717e-05 5.6820e-04 9.0587e-04 1.0039e-03 6.7414e-04
      [49] 1.3240e-03 7.8728e-05 3.0274e-02 1.6622e-04 4.0031e-04 2.2252e-03
      [55] 8.5750e-04 5.8558e-04 1.2209e-04 9.3790e-04 3.7943e-04 9.4096e-04
                           spot_class first_type second_type first_class second_class
      CCTAATGATCTA            singlet        ct1         ct3       FALSE        FALSE
      CCTAATGAGCTA            singlet        ct1         ct2       FALSE        FALSE
      TCTAATGACATACATA        singlet        ct2         ct3       FALSE        FALSE
      CCTAATGACATAAATA        singlet        ct2         ct3       FALSE        FALSE
      AGTAATGAGATAGATA        singlet        ct3         ct1       FALSE        FALSE
      ACTAATGAGATAGATA        singlet        ct3         ct2       FALSE        FALSE
      CGTAATGACATAGATA        singlet        ct2         ct3       FALSE        FALSE
      CGTAATGAGATAGCTA        singlet        ct3         ct2       FALSE        FALSE
      CATAAATAATGAGATACATA    singlet        ct3         ct2       FALSE        FALSE
      CCTAATGACATA            singlet        ct1         ct2       FALSE        FALSE
      TATAATGACCTA            singlet        ct1         ct2       FALSE        FALSE
      TATAATGACGTA            singlet        ct1         ct2       FALSE        FALSE
      TCTAATGACCTA            singlet        ct1         ct2       FALSE        FALSE
      TATAATGAGATACATA        singlet        ct3         ct1       FALSE        FALSE
      CGTAATGAGATAACTA        singlet        ct3         ct1       FALSE        FALSE
      AGTAATGACATA            singlet        ct1         ct2       FALSE        FALSE
      AGTAATGAACTA            singlet        ct1         ct2       FALSE        FALSE
      CATAAATAATGACATA        singlet        ct1         ct2       FALSE        FALSE
      TATAATGACATAAGTA        singlet        ct2         ct1       FALSE        FALSE
      CATAATGACATAGATA        singlet        ct2         ct1       FALSE        FALSE
      TATAATGATATA            singlet        ct1         ct2       FALSE        FALSE
      CATAAATAATGAGATAGATA    singlet        ct3         ct2       FALSE        FALSE
      CATAATGATCTA            singlet        ct1         ct2       FALSE        FALSE
      TCTAATGACATA            singlet        ct1         ct3       FALSE        FALSE
      CATAATGAGATACATA        singlet        ct3         ct1       FALSE        FALSE
      CATACATAATGACATAACTA    singlet        ct2         ct1       FALSE        FALSE
      TCTAATGACATATCTA        singlet        ct2         ct1       FALSE        FALSE
      TATAATGACATACATA        singlet        ct2         ct1       FALSE        FALSE
      TATAATGAGATAGCTA        singlet        ct3         ct2       FALSE        FALSE
      TCTAATGACATACCTA        singlet        ct2         ct3       FALSE        FALSE
      AGTAATGACATATATA        singlet        ct2         ct3       FALSE        FALSE
                           min_score singlet_score conv_all conv_doublet
      CCTAATGATCTA           102.861       103.258     TRUE         TRUE
      CCTAATGAGCTA            99.529        99.582     TRUE         TRUE
      TCTAATGACATACATA       101.058       101.614     TRUE         TRUE
      CCTAATGACATAAATA       122.949       123.263     TRUE         TRUE
      AGTAATGAGATAGATA        86.473        86.467     TRUE         TRUE
      ACTAATGAGATAGATA       102.448       105.052     TRUE         TRUE
      CGTAATGACATAGATA       107.598       107.792     TRUE         TRUE
      CGTAATGAGATAGCTA        93.863        94.477     TRUE         TRUE
      CATAAATAATGAGATACATA   100.976       101.403     TRUE         TRUE
      CCTAATGACATA            97.053        97.353     TRUE         TRUE
      TATAATGACCTA           100.849       101.364     TRUE         TRUE
      TATAATGACGTA           100.572       101.084     TRUE         TRUE
      TCTAATGACCTA           116.080       116.154     TRUE         TRUE
      TATAATGAGATACATA        98.459        98.451     TRUE         TRUE
      CGTAATGAGATAACTA        97.373        97.357     TRUE         TRUE
      AGTAATGACATA            96.039        96.187     TRUE         TRUE
      AGTAATGAACTA            98.993        99.225     TRUE         TRUE
      CATAAATAATGACATA       101.237       103.815     TRUE         TRUE
      TATAATGACATAAGTA       105.061       105.533     TRUE         TRUE
      CATAATGACATAGATA        96.826        98.843     TRUE         TRUE
      TATAATGATATA            94.911        94.984     TRUE         TRUE
      CATAAATAATGAGATAGATA   110.485       112.592     TRUE         TRUE
      CATAATGATCTA           109.001       108.961     TRUE         TRUE
      TCTAATGACATA            97.274        97.693     TRUE         TRUE
      CATAATGAGATACATA        94.135        95.529     TRUE         TRUE
      CATACATAATGACATAACTA   100.014       100.005     TRUE         TRUE
      TCTAATGACATATCTA       101.202       101.570     TRUE         TRUE
      TATAATGACATACATA        97.952        98.014     TRUE         TRUE
      TATAATGAGATAGCTA        95.088        95.140     TRUE         TRUE
      TCTAATGACATACCTA        98.595        99.278     TRUE         TRUE
      AGTAATGACATATATA        98.299        98.480     TRUE         TRUE
       [1] 4.1401e-03 9.0711e-04 4.7579e-03 5.5655e-04 2.4898e-03 5.5898e-04
       [7] 5.8194e-03 7.6623e-04 1.7956e-04 1.4291e-03 4.1159e-03 4.1300e-03
      [13] 2.8100e-03 3.1391e-04 2.6567e-03 4.8184e-03 3.0256e-04 3.4249e-04
      [19] 1.0334e-03 2.9527e-04 4.7259e-05 6.7261e-04 2.8707e-04 8.9399e-04
      [25] 3.4660e-04 3.9229e-04 8.6340e-04 1.3766e-04 1.4028e-03 1.8316e-03
      [31] 8.1291e-05 3.2457e-04 1.6456e-03 1.3049e-03 1.9760e-03 1.5167e-04
      [37] 2.6958e-04 2.1369e-03 7.3561e-05 4.4661e-04 3.5390e-04 1.1934e-03
      [43] 2.2511e-03 1.0990e-04 6.3803e-04 8.9859e-04 1.0143e-03 7.0092e-04
      [49] 1.3515e-03 7.2033e-05 2.8389e-02 1.7773e-04 3.2152e-04 2.3389e-03
      [55] 8.3556e-04 5.8651e-04 1.4223e-04 1.0139e-03 3.7567e-04 8.7812e-04
                           spot_class first_type second_type first_class second_class
      CATACATAATGACATAGATA    singlet        ct2         ct1       FALSE        FALSE
      GCTAATGACATATATA        singlet        ct2         ct1       FALSE        FALSE
      GATAATGAGATAGCTA        singlet        ct3         ct1       FALSE        FALSE
      CATACATAATGAGATACCTA    singlet        ct3         ct2       FALSE        FALSE
      ACTAATGACATATATA        singlet        ct2         ct1       FALSE        FALSE
      CATAATGAGATAACTA        singlet        ct3         ct2       FALSE        FALSE
      TCTAATGAGATACCTA        singlet        ct3         ct1       FALSE        FALSE
      CGTAATGACATACATA        singlet        ct2         ct1       FALSE        FALSE
      GATAATGATCTA            singlet        ct1         ct2       FALSE        FALSE
      CATAATGAGATAGCTA        singlet        ct3         ct1       FALSE        FALSE
      CGTAATGATATA            singlet        ct1         ct2       FALSE        FALSE
      CATACATAATGACATA        singlet        ct1         ct2       FALSE        FALSE
      GCTAATGACGTA            singlet        ct1         ct3       FALSE        FALSE
      CATACATAATGATATA        singlet        ct1         ct2       FALSE        FALSE
      TATAATGACATATCTA        singlet        ct2         ct3       FALSE        FALSE
      TCTAATGACATAAGTA        singlet        ct2         ct1       FALSE        FALSE
      TCTAATGACATAGCTA        singlet        ct2         ct1       FALSE        FALSE
      CCTAATGAGATACCTA        singlet        ct3         ct1       FALSE        FALSE
      CGTAATGACATACCTA        singlet        ct2         ct1       FALSE        FALSE
      GCTAATGACATA            singlet        ct1         ct2       FALSE        FALSE
      GATAATGAGATAAGTA        singlet        ct3         ct1       FALSE        FALSE
      GCTAATGACATACCTA        singlet        ct2         ct1       FALSE        FALSE
      AGTAATGAGATAAGTA        singlet        ct3         ct2       FALSE        FALSE
      TCTAATGAGATACATA        singlet        ct3         ct1       FALSE        FALSE
      CATAAATAATGACCTA        singlet        ct1         ct3       FALSE        FALSE
      GATAATGACATAACTA        singlet        ct2         ct1       FALSE        FALSE
      TCTAATGAAGTA            singlet        ct1         ct2       FALSE        FALSE
      GATAATGATATA            singlet        ct1         ct2       FALSE        FALSE
      CATAAATAATGACATACCTA    singlet        ct2         ct1       FALSE        FALSE
      ACTAATGACATAAGTA        singlet        ct2         ct3       FALSE        FALSE
                           min_score singlet_score conv_all conv_doublet
      CATACATAATGACATAGATA   100.151       100.152     TRUE         TRUE
      GCTAATGACATATATA       110.987       110.982     TRUE         TRUE
      GATAATGAGATAGCTA        99.159        99.162     TRUE         TRUE
      CATACATAATGAGATACCTA    95.451        95.621     TRUE         TRUE
      ACTAATGACATATATA        92.246        94.077     TRUE         TRUE
      CATAATGAGATAACTA        97.790        98.057     TRUE         TRUE
      TCTAATGAGATACCTA        94.005        94.006     TRUE         TRUE
      CGTAATGACATACATA        93.566        93.548     TRUE         TRUE
      GATAATGATCTA            97.162        97.267     TRUE         TRUE
      CATAATGAGATAGCTA        94.880        94.880     TRUE         TRUE
      CGTAATGATATA            97.364        97.560     TRUE         TRUE
      CATACATAATGACATA       101.824       102.655     TRUE         TRUE
      GCTAATGACGTA            96.572        96.989     TRUE         TRUE
      CATACATAATGATATA        95.622        96.501     TRUE         TRUE
      TATAATGACATATCTA       106.146       106.685     TRUE         TRUE
      TCTAATGACATAAGTA        99.267        99.478     TRUE         TRUE
      TCTAATGACATAGCTA       105.061       108.365     TRUE         TRUE
      CCTAATGAGATACCTA        97.969        97.977     TRUE         TRUE
      CGTAATGACATACCTA       101.999       102.072     TRUE         TRUE
      GCTAATGACATA           106.748       106.749     TRUE         TRUE
      GATAATGAGATAAGTA        99.557        99.548     TRUE         TRUE
      GCTAATGACATACCTA        98.214       100.198     TRUE         TRUE
      AGTAATGAGATAAGTA        96.671       100.527     TRUE         TRUE
      TCTAATGAGATACATA        94.807        94.785     TRUE         TRUE
      CATAAATAATGACCTA       111.784       111.870     TRUE         TRUE
      GATAATGACATAACTA       106.488       106.855     TRUE         TRUE
      TCTAATGAAGTA            99.768       100.121     TRUE         TRUE
      GATAATGATATA            97.718        97.776     TRUE         TRUE
      CATAAATAATGACATACCTA   103.268       103.259     TRUE         TRUE
      ACTAATGACATAAGTA       102.244       102.322     TRUE         TRUE

