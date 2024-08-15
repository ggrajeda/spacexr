# run.RCTD simple test

    Code
      result <- run.RCTD(rctd, doublet_mode = "doublet")
    Message
      fitBulk: decomposing bulk
      chooseSigma: using initial Q_mat with sigma =  1
      Likelihood value: 2904.10249179564
      Sigma value:  0.84
      Likelihood value: 2822.77128840887
      Sigma value:  0.69
      Likelihood value: 2743.14605781457
      Sigma value:  0.61
      Likelihood value: 2700.63762744036
      Sigma value:  0.53
      Likelihood value: 2659.68188371079
      Sigma value:  0.45
      Likelihood value: 2622.70173994473
      Sigma value:  0.37
      Likelihood value: 2593.98730119036
      Sigma value:  0.3
      Likelihood value: 2580.97263404513
      Sigma value:  0.29
    Code
      list(cell_type_info = result@cell_type_info$renorm, de_results = result@
        de_results, results = result@results)
    Output
      $cell_type_info
      $cell_type_info[[1]]
                       ct1          ct2          ct3
      Gene41  7.195905e-04 3.623346e-04 3.790492e-04
      Gene76  6.918909e-04 3.537415e-04 3.811846e-04
      Gene79  9.948573e-04 5.460056e-04 3.458015e-04
      Gene124 1.135475e-03 4.435486e-04 4.725282e-04
      Gene139 1.593668e-04 5.158539e-05 1.330209e-04
      Gene148 5.808423e-04 3.231774e-04 2.456321e-04
      Gene166 1.414927e-04 6.827912e-05 3.980498e-05
      Gene183 6.726249e-04 2.628890e-04 2.601535e-04
      Gene203 3.262674e-02 2.250076e-02 1.299867e-02
      Gene237 3.735184e-05 1.908675e-05 1.820684e-05
      Gene307 3.343899e-03 1.526578e-03 1.842487e-03
      Gene346 2.984551e-06 1.091807e-06 8.448201e-07
      Gene43  3.028204e-05 7.345798e-05 5.793874e-05
      Gene102 5.974129e-04 1.241731e-03 5.776200e-04
      Gene164 1.831236e-03 3.745636e-03 2.173916e-03
      Gene200 1.005746e-05 1.953121e-05 1.024193e-05
      Gene238 3.181713e-04 7.461169e-04 3.753015e-04
      Gene245 1.230563e-03 2.401520e-03 1.362872e-03
      Gene260 1.337573e-03 2.397461e-03 1.402641e-03
      Gene311 1.050854e-03 1.971607e-03 1.057884e-03
      Gene324 1.027487e-05 3.716006e-05 1.113694e-05
      Gene348 5.727847e-05 9.810109e-05 6.140479e-05
      Gene367 3.256812e-04 8.999517e-04 4.288301e-04
      Gene372 1.197962e-02 3.020003e-02 1.037629e-02
      Gene424 7.187139e-04 1.462207e-03 8.647899e-04
      Gene451 4.246243e-05 7.921014e-05 4.467215e-05
      Gene496 3.664541e-04 7.763142e-04 4.095538e-04
      Gene16  1.242919e-04 1.304860e-04 2.860259e-04
      Gene51  1.473002e-03 1.123369e-03 2.525812e-03
      Gene68  2.579553e-04 8.321325e-05 2.910580e-04
      Gene69  9.364610e-05 9.744731e-05 2.562799e-04
      Gene122 1.914804e-03 1.932745e-03 3.472588e-03
      Gene213 2.795848e-04 2.757897e-04 6.964000e-04
      Gene218 2.469455e-03 2.811280e-03 4.666709e-03
      Gene285 2.255943e-04 2.378193e-04 4.131997e-04
      Gene291 1.357191e-04 1.200281e-04 3.004781e-04
      Gene342 6.056710e-04 5.685731e-04 1.101289e-03
      Gene353 1.732534e-04 1.750000e-04 3.929411e-04
      Gene362 6.203380e-04 6.486187e-04 1.055689e-03
      Gene368 5.321711e-06 4.928812e-06 8.966720e-06
      Gene369 3.668327e-04 2.450039e-04 5.317547e-04
      Gene375 1.581117e-05 1.823332e-05 2.990469e-05
      Gene423 6.540437e-05 7.218385e-05 1.331530e-04
      
      $cell_type_info[[2]]
      [1] "ct1" "ct2" "ct3"
      
      $cell_type_info[[3]]
      [1] 3
      
      
      $de_results
      list()
      
      $results
      $results$results_df
                                         spot_class first_type second_type
      ct3_plat1_TCAACACTTAAGGGTCCCCA        singlet        ct1         ct2
      ct1_plat1_TCAAGACTTAAGGGTCCCCA        singlet        ct1         ct2
      ct2_plat1_TCAATACTTAAGGGTCCCCA        singlet        ct1         ct2
      ct2_plat1_TCAAAACTTCAGGGTCCCCA        singlet        ct1         ct2
      ct1_plat1_TCAACACTTCAGGGTCCCCA        singlet        ct1         ct2
      ct1_plat1_TCAAGACTTCAGGGTCCCCA        singlet        ct1         ct2
      ct1_plat1_TCAATACTTCAGGGTCCCCA        singlet        ct1         ct2
      ct3_plat1_TCAAAACTTGAGGGTCCCCA        singlet        ct1         ct2
      ct2_plat1_TCAACACTTGAGGGTCCCCA        singlet        ct1         ct2
      ct1_plat1_TCAACAACTTAAAGGGTTCCCCAA    singlet        ct1         ct2
      ct1_plat1_TCAACCACTTAAAGGGTTCCCCAA    singlet        ct1         ct2
      ct3_plat1_TCAACGACTTAAAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAACTACTTAAAGGGTTCCCCAA    singlet        ct1         ct2
      ct3_plat1_TCAACAACTTACAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAACCACTTACAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAACGACTTACAGGGTTCCCCAA    singlet        ct1         ct3
      ct2_plat1_TCAACTACTTACAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAACAACTTAGAGGGTTCCCCAA    singlet        ct1         ct2
      ct3_plat1_TCAACCACTTAGAGGGTTCCCCAA    singlet        ct1         ct2
      ct1_plat1_TCAAGAACTTAAAGGGTTCCCCAA    singlet        ct1         ct2
      ct1_plat1_TCAAGCACTTAAAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAAGGACTTAAAGGGTTCCCCAA    singlet        ct1         ct2
      ct1_plat1_TCAAGTACTTAAAGGGTTCCCCAA    singlet        ct1         ct2
      ct3_plat1_TCAAGAACTTACAGGGTTCCCCAA    singlet        ct1         ct2
      ct1_plat1_TCAAGCACTTACAGGGTTCCCCAA    singlet        ct1         ct2
      ct1_plat1_TCAAGGACTTACAGGGTTCCCCAA    singlet        ct1         ct2
      ct1_plat1_TCAAGTACTTACAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAAGAACTTAGAGGGTTCCCCAA     reject        ct1         ct2
      ct3_plat1_TCAAGCACTTAGAGGGTTCCCCAA    singlet        ct1         ct2
      ct1_plat1_TCAATAACTTAAAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAATCACTTAAAGGGTTCCCCAA    singlet        ct1         ct2
      ct3_plat1_TCAATGACTTAAAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAATTACTTAAAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAATAACTTACAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAATCACTTACAGGGTTCCCCAA    singlet        ct1         ct2
      ct3_plat1_TCAATGACTTACAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAATTACTTACAGGGTTCCCCAA     reject        ct1         ct3
      ct2_plat1_TCAATAACTTAGAGGGTTCCCCAA    singlet        ct1         ct2
      ct3_plat1_TCAATCACTTAGAGGGTTCCCCAA    singlet        ct1         ct2
      ct3_plat1_TCAAAAACTTCAAGGGTTCCCCAA    singlet        ct1         ct2
      ct1_plat1_TCAAACACTTCAAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAAAGACTTCAAGGGTTCCCCAA     reject        ct1         ct3
      ct1_plat1_TCAAATACTTCAAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAAAAACTTCCAGGGTTCCCCAA    singlet        ct1         ct2
      ct1_plat1_TCAAACACTTCCAGGGTTCCCCAA    singlet        ct1         ct3
      ct1_plat1_TCAAAGACTTCCAGGGTTCCCCAA    singlet        ct1         ct2
      ct1_plat1_TCAAATACTTCCAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAAAAACTTCGAGGGTTCCCCAA    singlet        ct1         ct2
      ct1_plat1_TCAAACACTTCGAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAACAACTTCAAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAACCACTTCAAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAACGACTTCAAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAACTACTTCAAGGGTTCCCCAA     reject        ct1         ct2
      ct1_plat1_TCAACAACTTCCAGGGTTCCCCAA    singlet        ct1         ct2
      ct1_plat1_TCAACCACTTCCAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAACGACTTCCAGGGTTCCCCAA     reject        ct1         ct2
      ct3_plat1_TCAACTACTTCCAGGGTTCCCCAA    singlet        ct1         ct2
      ct1_plat1_TCAACAACTTCGAGGGTTCCCCAA    singlet        ct1         ct2
      ct2_plat1_TCAACCACTTCGAGGGTTCCCCAA    singlet        ct2         ct1
      ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA    singlet        ct1         ct2
                                         first_class second_class min_score
      ct3_plat1_TCAACACTTAAGGGTCCCCA           FALSE        FALSE  47.90161
      ct1_plat1_TCAAGACTTAAGGGTCCCCA           FALSE        FALSE  47.51963
      ct2_plat1_TCAATACTTAAGGGTCCCCA           FALSE        FALSE  42.77402
      ct2_plat1_TCAAAACTTCAGGGTCCCCA           FALSE        FALSE  39.01922
      ct1_plat1_TCAACACTTCAGGGTCCCCA           FALSE        FALSE  41.36008
      ct1_plat1_TCAAGACTTCAGGGTCCCCA           FALSE        FALSE  46.84478
      ct1_plat1_TCAATACTTCAGGGTCCCCA           FALSE        FALSE  45.98263
      ct3_plat1_TCAAAACTTGAGGGTCCCCA           FALSE        FALSE  39.78203
      ct2_plat1_TCAACACTTGAGGGTCCCCA           FALSE        FALSE  40.74824
      ct1_plat1_TCAACAACTTAAAGGGTTCCCCAA       FALSE        FALSE  43.95214
      ct1_plat1_TCAACCACTTAAAGGGTTCCCCAA       FALSE        FALSE  41.36223
      ct3_plat1_TCAACGACTTAAAGGGTTCCCCAA       FALSE        FALSE  42.71172
      ct2_plat1_TCAACTACTTAAAGGGTTCCCCAA       FALSE        FALSE  37.39777
      ct3_plat1_TCAACAACTTACAGGGTTCCCCAA       FALSE        FALSE  47.23565
      ct2_plat1_TCAACCACTTACAGGGTTCCCCAA       FALSE        FALSE  43.97535
      ct2_plat1_TCAACGACTTACAGGGTTCCCCAA       FALSE        FALSE  43.76511
      ct2_plat1_TCAACTACTTACAGGGTTCCCCAA       FALSE        FALSE  46.05741
      ct2_plat1_TCAACAACTTAGAGGGTTCCCCAA       FALSE        FALSE  44.87908
      ct3_plat1_TCAACCACTTAGAGGGTTCCCCAA       FALSE        FALSE  47.98620
      ct1_plat1_TCAAGAACTTAAAGGGTTCCCCAA       FALSE        FALSE  37.43883
      ct1_plat1_TCAAGCACTTAAAGGGTTCCCCAA       FALSE        FALSE  45.29710
      ct2_plat1_TCAAGGACTTAAAGGGTTCCCCAA       FALSE        FALSE  38.86730
      ct1_plat1_TCAAGTACTTAAAGGGTTCCCCAA       FALSE        FALSE  43.67684
      ct3_plat1_TCAAGAACTTACAGGGTTCCCCAA       FALSE        FALSE  42.54357
      ct1_plat1_TCAAGCACTTACAGGGTTCCCCAA       FALSE        FALSE  41.62870
      ct1_plat1_TCAAGGACTTACAGGGTTCCCCAA       FALSE        FALSE  38.48390
      ct1_plat1_TCAAGTACTTACAGGGTTCCCCAA       FALSE        FALSE  39.09898
      ct2_plat1_TCAAGAACTTAGAGGGTTCCCCAA       FALSE        FALSE  46.55345
      ct3_plat1_TCAAGCACTTAGAGGGTTCCCCAA       FALSE        FALSE  44.61352
      ct1_plat1_TCAATAACTTAAAGGGTTCCCCAA       FALSE        FALSE  43.73633
      ct2_plat1_TCAATCACTTAAAGGGTTCCCCAA       FALSE        FALSE  49.64200
      ct3_plat1_TCAATGACTTAAAGGGTTCCCCAA       FALSE        FALSE  43.39273
      ct2_plat1_TCAATTACTTAAAGGGTTCCCCAA       FALSE        FALSE  43.25380
      ct2_plat1_TCAATAACTTACAGGGTTCCCCAA       FALSE        FALSE  39.79886
      ct2_plat1_TCAATCACTTACAGGGTTCCCCAA       FALSE        FALSE  41.43856
      ct3_plat1_TCAATGACTTACAGGGTTCCCCAA       FALSE        FALSE  43.13384
      ct2_plat1_TCAATTACTTACAGGGTTCCCCAA       FALSE        FALSE  43.92499
      ct2_plat1_TCAATAACTTAGAGGGTTCCCCAA       FALSE        FALSE  45.47414
      ct3_plat1_TCAATCACTTAGAGGGTTCCCCAA       FALSE        FALSE  36.75816
      ct3_plat1_TCAAAAACTTCAAGGGTTCCCCAA       FALSE        FALSE  43.64009
      ct1_plat1_TCAAACACTTCAAGGGTTCCCCAA       FALSE        FALSE  43.55592
      ct2_plat1_TCAAAGACTTCAAGGGTTCCCCAA       FALSE        FALSE  44.22733
      ct1_plat1_TCAAATACTTCAAGGGTTCCCCAA       FALSE        FALSE  44.53342
      ct2_plat1_TCAAAAACTTCCAGGGTTCCCCAA       FALSE        FALSE  43.11089
      ct1_plat1_TCAAACACTTCCAGGGTTCCCCAA       FALSE        FALSE  42.53427
      ct1_plat1_TCAAAGACTTCCAGGGTTCCCCAA       FALSE        FALSE  51.48748
      ct1_plat1_TCAAATACTTCCAGGGTTCCCCAA       FALSE        FALSE  38.81102
      ct2_plat1_TCAAAAACTTCGAGGGTTCCCCAA       FALSE        FALSE  39.61137
      ct1_plat1_TCAAACACTTCGAGGGTTCCCCAA       FALSE        FALSE  45.59808
      ct2_plat1_TCAACAACTTCAAGGGTTCCCCAA       FALSE        FALSE  37.55679
      ct2_plat1_TCAACCACTTCAAGGGTTCCCCAA       FALSE        FALSE  43.14928
      ct2_plat1_TCAACGACTTCAAGGGTTCCCCAA       FALSE        FALSE  38.85844
      ct2_plat1_TCAACTACTTCAAGGGTTCCCCAA       FALSE        FALSE  43.91794
      ct1_plat1_TCAACAACTTCCAGGGTTCCCCAA       FALSE        FALSE  39.62411
      ct1_plat1_TCAACCACTTCCAGGGTTCCCCAA       FALSE        FALSE  42.82469
      ct2_plat1_TCAACGACTTCCAGGGTTCCCCAA       FALSE        FALSE  48.22434
      ct3_plat1_TCAACTACTTCCAGGGTTCCCCAA       FALSE        FALSE  47.84897
      ct1_plat1_TCAACAACTTCGAGGGTTCCCCAA       FALSE        FALSE  38.42457
      ct2_plat1_TCAACCACTTCGAGGGTTCCCCAA       FALSE        FALSE  45.79349
      ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA       FALSE        FALSE  45.98910
                                         singlet_score conv_all conv_doublet
      ct3_plat1_TCAACACTTAAGGGTCCCCA          48.24664     TRUE         TRUE
      ct1_plat1_TCAAGACTTAAGGGTCCCCA          49.62844     TRUE         TRUE
      ct2_plat1_TCAATACTTAAGGGTCCCCA          43.94644     TRUE         TRUE
      ct2_plat1_TCAAAACTTCAGGGTCCCCA          42.15293     TRUE         TRUE
      ct1_plat1_TCAACACTTCAGGGTCCCCA          43.33437     TRUE         TRUE
      ct1_plat1_TCAAGACTTCAGGGTCCCCA          48.72348     TRUE         TRUE
      ct1_plat1_TCAATACTTCAGGGTCCCCA          46.38231     TRUE         TRUE
      ct3_plat1_TCAAAACTTGAGGGTCCCCA          41.06374     TRUE         TRUE
      ct2_plat1_TCAACACTTGAGGGTCCCCA          43.25130     TRUE         TRUE
      ct1_plat1_TCAACAACTTAAAGGGTTCCCCAA      44.95139     TRUE         TRUE
      ct1_plat1_TCAACCACTTAAAGGGTTCCCCAA      41.41594     TRUE         TRUE
      ct3_plat1_TCAACGACTTAAAGGGTTCCCCAA      46.23491     TRUE         TRUE
      ct2_plat1_TCAACTACTTAAAGGGTTCCCCAA      39.22281     TRUE         TRUE
      ct3_plat1_TCAACAACTTACAGGGTTCCCCAA      51.31765     TRUE         TRUE
      ct2_plat1_TCAACCACTTACAGGGTTCCCCAA      46.13048     TRUE         TRUE
      ct2_plat1_TCAACGACTTACAGGGTTCCCCAA      44.89916     TRUE         TRUE
      ct2_plat1_TCAACTACTTACAGGGTTCCCCAA      50.41084     TRUE         TRUE
      ct2_plat1_TCAACAACTTAGAGGGTTCCCCAA      45.42226     TRUE         TRUE
      ct3_plat1_TCAACCACTTAGAGGGTTCCCCAA      50.03915     TRUE         TRUE
      ct1_plat1_TCAAGAACTTAAAGGGTTCCCCAA      37.45274     TRUE         TRUE
      ct1_plat1_TCAAGCACTTAAAGGGTTCCCCAA      45.59697     TRUE         TRUE
      ct2_plat1_TCAAGGACTTAAAGGGTTCCCCAA      40.22911     TRUE         TRUE
      ct1_plat1_TCAAGTACTTAAAGGGTTCCCCAA      44.83111     TRUE         TRUE
      ct3_plat1_TCAAGAACTTACAGGGTTCCCCAA      43.61871     TRUE         TRUE
      ct1_plat1_TCAAGCACTTACAGGGTTCCCCAA      42.39963     TRUE         TRUE
      ct1_plat1_TCAAGGACTTACAGGGTTCCCCAA      39.97801     TRUE         TRUE
      ct1_plat1_TCAAGTACTTACAGGGTTCCCCAA      40.02385     TRUE         TRUE
      ct2_plat1_TCAAGAACTTAGAGGGTTCCCCAA      86.55345     TRUE         TRUE
      ct3_plat1_TCAAGCACTTAGAGGGTTCCCCAA      49.77467     TRUE         TRUE
      ct1_plat1_TCAATAACTTAAAGGGTTCCCCAA      43.73412     TRUE         TRUE
      ct2_plat1_TCAATCACTTAAAGGGTTCCCCAA      50.43616     TRUE         TRUE
      ct3_plat1_TCAATGACTTAAAGGGTTCCCCAA      45.75593     TRUE         TRUE
      ct2_plat1_TCAATTACTTAAAGGGTTCCCCAA      44.74035     TRUE         TRUE
      ct2_plat1_TCAATAACTTACAGGGTTCCCCAA      43.29784     TRUE         TRUE
      ct2_plat1_TCAATCACTTACAGGGTTCCCCAA      45.11437     TRUE         TRUE
      ct3_plat1_TCAATGACTTACAGGGTTCCCCAA      47.11024     TRUE         TRUE
      ct2_plat1_TCAATTACTTACAGGGTTCCCCAA      83.92499     TRUE         TRUE
      ct2_plat1_TCAATAACTTAGAGGGTTCCCCAA      49.23922     TRUE         TRUE
      ct3_plat1_TCAATCACTTAGAGGGTTCCCCAA      39.81535     TRUE         TRUE
      ct3_plat1_TCAAAAACTTCAAGGGTTCCCCAA      45.86064     TRUE         TRUE
      ct1_plat1_TCAAACACTTCAAGGGTTCCCCAA      43.98186     TRUE         TRUE
      ct2_plat1_TCAAAGACTTCAAGGGTTCCCCAA      84.22733     TRUE         TRUE
      ct1_plat1_TCAAATACTTCAAGGGTTCCCCAA      46.04017     TRUE         TRUE
      ct2_plat1_TCAAAAACTTCCAGGGTTCCCCAA      48.16168     TRUE         TRUE
      ct1_plat1_TCAAACACTTCCAGGGTTCCCCAA      42.58286     TRUE         TRUE
      ct1_plat1_TCAAAGACTTCCAGGGTTCCCCAA      51.67283     TRUE         TRUE
      ct1_plat1_TCAAATACTTCCAGGGTTCCCCAA      39.45032     TRUE         TRUE
      ct2_plat1_TCAAAAACTTCGAGGGTTCCCCAA      40.43720     TRUE         TRUE
      ct1_plat1_TCAAACACTTCGAGGGTTCCCCAA      46.52852     TRUE         TRUE
      ct2_plat1_TCAACAACTTCAAGGGTTCCCCAA      40.53043     TRUE         TRUE
      ct2_plat1_TCAACCACTTCAAGGGTTCCCCAA      45.01093     TRUE         TRUE
      ct2_plat1_TCAACGACTTCAAGGGTTCCCCAA      42.12159     TRUE         TRUE
      ct2_plat1_TCAACTACTTCAAGGGTTCCCCAA      83.91794     TRUE         TRUE
      ct1_plat1_TCAACAACTTCCAGGGTTCCCCAA      40.68697     TRUE         TRUE
      ct1_plat1_TCAACCACTTCCAGGGTTCCCCAA      43.52294     TRUE         TRUE
      ct2_plat1_TCAACGACTTCCAGGGTTCCCCAA      88.22434     TRUE         TRUE
      ct3_plat1_TCAACTACTTCCAGGGTTCCCCAA      52.35232     TRUE         TRUE
      ct1_plat1_TCAACAACTTCGAGGGTTCCCCAA      39.08380     TRUE         TRUE
      ct2_plat1_TCAACCACTTCGAGGGTTCCCCAA      50.62140     TRUE         TRUE
      ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA      50.04482     TRUE         TRUE
      
      $results$weights
      60 x 3 sparse Matrix of class "dgCMatrix"
                                               ct1          ct2          ct3
      ct3_plat1_TCAACACTTAAGGGTCCCCA     0.8915744 0.0989116124 0.0003799632
      ct1_plat1_TCAAGACTTAAGGGTCCCCA     0.6660390 0.2779284526 0.0007754350
      ct2_plat1_TCAATACTTAAGGGTCCCCA     0.9662102 0.2163948150 0.0856614910
      ct2_plat1_TCAAAACTTCAGGGTCCCCA     0.5823850 0.3168163512 0.0830037376
      ct1_plat1_TCAACACTTCAGGGTCCCCA     0.5771019 0.2178866310 0.0011077644
      ct1_plat1_TCAAGACTTCAGGGTCCCCA     0.6824913 0.2216464391 0.0007754350
      ct1_plat1_TCAATACTTCAGGGTCCCCA     0.8468339 0.0998327847 0.0005428045
      ct3_plat1_TCAAAACTTGAGGGTCCCCA     0.7017341 0.1814577993 0.0007754350
      ct2_plat1_TCAACACTTGAGGGTCCCCA     0.6034216 0.2423341382 0.0007754350
      ct1_plat1_TCAACAACTTAAAGGGTTCCCCAA 0.5407409 0.1229649447 0.0746158257
      ct1_plat1_TCAACCACTTAAAGGGTTCCCCAA 0.9212544 0.0382036301 0.0003806432
      ct3_plat1_TCAACGACTTAAAGGGTTCCCCAA 0.5940300 0.3116092939 0.0007754350
      ct2_plat1_TCAACTACTTAAAGGGTTCCCCAA 0.6102606 0.2062880497 0.0007754350
      ct3_plat1_TCAACAACTTACAGGGTTCCCCAA 0.7064902 0.4320560746 0.0418912843
      ct2_plat1_TCAACCACTTACAGGGTTCCCCAA 0.5743437 0.2047689140 0.1548725468
      ct2_plat1_TCAACGACTTACAGGGTTCCCCAA 0.7040414 0.1177816439 0.1686243570
      ct2_plat1_TCAACTACTTACAGGGTTCCCCAA 0.5549562 0.3639774715 0.1168394187
      ct2_plat1_TCAACAACTTAGAGGGTTCCCCAA 0.8782954 0.1155760136 0.0858564947
      ct3_plat1_TCAACCACTTAGAGGGTTCCCCAA 0.6509843 0.2232737426 0.0007754350
      ct1_plat1_TCAAGAACTTAAAGGGTTCCCCAA 0.7285306 0.0173272126 0.0005428045
      ct1_plat1_TCAAGCACTTAAAGGGTTCCCCAA 0.7332855 0.0994740010 0.0056584582
      ct2_plat1_TCAAGGACTTAAAGGGTTCCCCAA 0.8349901 0.2212381843 0.0003799632
      ct1_plat1_TCAAGTACTTAAAGGGTTCCCCAA 0.7292941 0.1818783139 0.0005428045
      ct3_plat1_TCAAGAACTTACAGGGTTCCCCAA 0.8234518 0.1897278549 0.0102498147
      ct1_plat1_TCAAGCACTTACAGGGTTCCCCAA 0.7496629 0.1523313185 0.0005428045
      ct1_plat1_TCAAGGACTTACAGGGTTCCCCAA 0.6663483 0.1982041702 0.0264507011
      ct1_plat1_TCAAGTACTTACAGGGTTCCCCAA 0.7567623 0.1577800277 0.0774880359
      ct2_plat1_TCAAGAACTTAGAGGGTTCCCCAA 0.4014461 0.3096610429 0.2539505239
      ct3_plat1_TCAAGCACTTAGAGGGTTCCCCAA 0.5141229 0.3668922179 0.0223448645
      ct1_plat1_TCAATAACTTAAAGGGTTCCCCAA 1.0513969 0.0003799632 0.0003799632
      ct2_plat1_TCAATCACTTAAAGGGTTCCCCAA 0.7597980 0.1151016834 0.1078657022
      ct3_plat1_TCAATGACTTAAAGGGTTCCCCAA 0.7454520 0.3085473503 0.0005428045
      ct2_plat1_TCAATTACTTAAAGGGTTCCCCAA 0.7472467 0.1942570190 0.1024177699
      ct2_plat1_TCAATAACTTACAGGGTTCCCCAA 0.6031148 0.3664932625 0.0007754350
      ct2_plat1_TCAATCACTTACAGGGTTCCCCAA 0.5586457 0.3272943483 0.0011077644
      ct3_plat1_TCAATGACTTACAGGGTTCCCCAA 0.6448467 0.3640839075 0.0007754350
      ct2_plat1_TCAATTACTTACAGGGTTCCCCAA 0.3177138 0.1584601299 0.3327255375
      ct2_plat1_TCAATAACTTAGAGGGTTCCCCAA 0.7115160 0.3462658362 0.0005428045
      ct3_plat1_TCAATCACTTAGAGGGTTCCCCAA 0.4544545 0.2532780815 0.0011077644
      ct3_plat1_TCAAAAACTTCAAGGGTTCCCCAA 0.7336056 0.3050906467 0.0005428045
      ct1_plat1_TCAAACACTTCAAGGGTTCCCCAA 0.8936845 0.1110799258 0.0003849278
      ct2_plat1_TCAAAGACTTCAAGGGTTCCCCAA 0.3942538 0.1303797071 0.4042641253
      ct1_plat1_TCAAATACTTCAAGGGTTCCCCAA 0.5657857 0.1767237932 0.0011077644
      ct2_plat1_TCAAAAACTTCCAGGGTTCCCCAA 0.6249571 0.4608626939 0.0345999667
      ct1_plat1_TCAAACACTTCCAGGGTTCCCCAA 0.7946620 0.0229428790 0.0354304856
      ct1_plat1_TCAAAGACTTCCAGGGTTCCCCAA 0.8666362 0.0727370465 0.0003799632
      ct1_plat1_TCAAATACTTCCAGGGTTCCCCAA 0.7358421 0.1228221157 0.0005428045
      ct2_plat1_TCAAAAACTTCGAGGGTTCCCCAA 1.0288335 0.2018121398 0.0003068529
      ct1_plat1_TCAAACACTTCGAGGGTTCCCCAA 0.7154042 0.1462971073 0.0250254218
      ct2_plat1_TCAACAACTTCAAGGGTTCCCCAA 0.6489909 0.2988930334 0.0007754350
      ct2_plat1_TCAACCACTTCAAGGGTTCCCCAA 0.6646654 0.2308140051 0.1603148333
      ct2_plat1_TCAACGACTTCAAGGGTTCCCCAA 0.7376572 0.3678341166 0.0005428045
      ct2_plat1_TCAACTACTTCAAGGGTTCCCCAA 0.4376151 0.3771993597 0.0220073986
      ct1_plat1_TCAACAACTTCCAGGGTTCCCCAA 0.5655090 0.1639249800 0.0835305864
      ct1_plat1_TCAACCACTTCCAGGGTTCCCCAA 0.8039576 0.1497311341 0.0005428045
      ct2_plat1_TCAACGACTTCCAGGGTTCCCCAA 0.4468056 0.3006075867 0.2895016623
      ct3_plat1_TCAACTACTTCCAGGGTTCCCCAA 0.4956665 0.3138401812 0.0603199941
      ct1_plat1_TCAACAACTTCGAGGGTTCCCCAA 0.7043661 0.1222531292 0.0523695799
      ct2_plat1_TCAACCACTTCGAGGGTTCCCCAA 0.4575090 0.5208242939 0.0090292168
      ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA 0.6485426 0.3686526779 0.0007754350
      
      $results$weights_doublet
      60 x 2 sparse Matrix of class "dgCMatrix"
                                         first_type  second_type
      ct3_plat1_TCAACACTTAAGGGTCCCCA      0.8998789 0.1001211472
      ct1_plat1_TCAAGACTTAAGGGTCCCCA      0.7049485 0.2950514921
      ct2_plat1_TCAATACTTAAGGGTCCCCA      0.8103128 0.1896871512
      ct2_plat1_TCAAAACTTCAGGGTCCCCA      0.6417127 0.3582873294
      ct1_plat1_TCAACACTTCAGGGTCCCCA      0.7243930 0.2756069798
      ct1_plat1_TCAAGACTTCAGGGTCCCCA      0.7541371 0.2458629195
      ct1_plat1_TCAATACTTCAGGGTCCCCA      0.8940815 0.1059185155
      ct3_plat1_TCAAAACTTGAGGGTCCCCA      0.7938398 0.2061601747
      ct2_plat1_TCAACACTTGAGGGTCCCCA      0.7123922 0.2876078062
      ct1_plat1_TCAACAACTTAAAGGGTTCCCCAA  0.8082990 0.1917010042
      ct1_plat1_TCAACCACTTAAAGGGTTCCCCAA  0.9597979 0.0402020603
      ct3_plat1_TCAACGACTTAAAGGGTTCCCCAA  0.6552983 0.3447017327
      ct2_plat1_TCAACTACTTAAAGGGTTCCCCAA  0.7460102 0.2539897948
      ct3_plat1_TCAACAACTTACAGGGTTCCCCAA  0.6181625 0.3818374586
      ct2_plat1_TCAACCACTTACAGGGTTCCCCAA  0.7241747 0.2758253491
      ct2_plat1_TCAACGACTTACAGGGTTCCCCAA  0.7841064 0.2158935686
      ct2_plat1_TCAACTACTTACAGGGTTCCCCAA  0.6019607 0.3980393482
      ct2_plat1_TCAACAACTTAGAGGGTTCCCCAA  0.8742838 0.1257161948
      ct3_plat1_TCAACCACTTAGAGGGTTCCCCAA  0.7437257 0.2562743189
      ct1_plat1_TCAAGAACTTAAAGGGTTCCCCAA  0.9763152 0.0236848454
      ct1_plat1_TCAAGCACTTAAAGGGTTCCCCAA  0.8790816 0.1209184488
      ct2_plat1_TCAAGGACTTAAAGGGTTCCCCAA  0.7903365 0.2096634757
      ct1_plat1_TCAAGTACTTAAAGGGTTCCCCAA  0.7999349 0.2000650876
      ct3_plat1_TCAAGAACTTACAGGGTTCCCCAA  0.8110848 0.1889152395
      ct1_plat1_TCAAGCACTTACAGGGTTCCCCAA  0.8305346 0.1694653936
      ct1_plat1_TCAAGGACTTACAGGGTTCCCCAA  0.7684509 0.2315490874
      ct1_plat1_TCAAGTACTTACAGGGTTCCCCAA  0.8181284 0.1818715886
      ct2_plat1_TCAAGAACTTAGAGGGTTCCCCAA  0.5579775 0.4420225174
      ct3_plat1_TCAAGCACTTAGAGGGTTCCCCAA  0.5816500 0.4183500180
      ct1_plat1_TCAATAACTTAAAGGGTTCCCCAA  0.9992261 0.0007738878
      ct2_plat1_TCAATCACTTAAAGGGTTCCCCAA  0.8532855 0.1467145278
      ct3_plat1_TCAATGACTTAAAGGGTTCCCCAA  0.7070450 0.2929550026
      ct2_plat1_TCAATTACTTAAAGGGTTCCCCAA  0.7834512 0.2165488022
      ct2_plat1_TCAATAACTTACAGGGTTCCCCAA  0.6213786 0.3786213947
      ct2_plat1_TCAATCACTTACAGGGTTCCCCAA  0.6298145 0.3701854588
      ct3_plat1_TCAATGACTTACAGGGTTCCCCAA  0.6386844 0.3613155773
      ct2_plat1_TCAATTACTTACAGGGTTCCCCAA  0.4688558 0.5311441660
      ct2_plat1_TCAATAACTTAGAGGGTTCCCCAA  0.6721915 0.3278084689
      ct3_plat1_TCAATCACTTAGAGGGTTCCCCAA  0.6417000 0.3582999651
      ct3_plat1_TCAAAAACTTCAAGGGTTCCCCAA  0.7057563 0.2942436563
      ct1_plat1_TCAAACACTTCAAGGGTTCCCCAA  0.8891962 0.1108038446
      ct2_plat1_TCAAAGACTTCAAGGGTTCCCCAA  0.4765058 0.5234942448
      ct1_plat1_TCAAATACTTCAAGGGTTCCCCAA  0.7607229 0.2392770662
      ct2_plat1_TCAAAAACTTCCAGGGTTCCCCAA  0.5728381 0.4271619461
      ct1_plat1_TCAAACACTTCCAGGGTTCCCCAA  0.9531890 0.0468109661
      ct1_plat1_TCAAAGACTTCCAGGGTTCCCCAA  0.9220716 0.0779283795
      ct1_plat1_TCAAATACTTCCAGGGTTCCCCAA  0.8563848 0.1436152231
      ct2_plat1_TCAAAAACTTCGAGGGTTCCCCAA  0.8358577 0.1641422732
      ct1_plat1_TCAAACACTTCGAGGGTTCCCCAA  0.8283236 0.1716763804
      ct2_plat1_TCAACAACTTCAAGGGTTCCCCAA  0.6841574 0.3158425886
      ct2_plat1_TCAACCACTTCAAGGGTTCCCCAA  0.7295232 0.2704767884
      ct2_plat1_TCAACGACTTCAAGGGTTCCCCAA  0.6670756 0.3329243712
      ct2_plat1_TCAACTACTTCAAGGGTTCCCCAA  0.5363452 0.4636547898
      ct1_plat1_TCAACAACTTCCAGGGTTCCCCAA  0.7691676 0.2308324298
      ct1_plat1_TCAACCACTTCCAGGGTTCCCCAA  0.8427253 0.1572746587
      ct2_plat1_TCAACGACTTCCAGGGTTCCCCAA  0.5794889 0.4205110735
      ct3_plat1_TCAACTACTTCCAGGGTTCCCCAA  0.6077937 0.3922063212
      ct1_plat1_TCAACAACTTCGAGGGTTCCCCAA  0.8466107 0.1533893310
      ct2_plat1_TCAACCACTTCGAGGGTTCCCCAA  0.5314114 0.4685886349
      ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA  0.6371274 0.3628725955
      
      $results$score_mat
      $results$score_mat[[1]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       47.90161
      ct2 47.90161  .      
      
      $results$score_mat[[2]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       47.51963
      ct2 47.51963  .      
      
      $results$score_mat[[3]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       42.77402 43.58407
      ct2 42.77402  .       55.90603
      ct3 43.58407 55.90603  .      
      
      $results$score_mat[[4]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       39.01922 41.33587
      ct2 39.01922  .       46.25702
      ct3 41.33587 46.25702  .      
      
      $results$score_mat[[5]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       41.36008
      ct2 41.36008  .      
      
      $results$score_mat[[6]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       46.84478
      ct2 46.84478  .      
      
      $results$score_mat[[7]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       45.98263
      ct2 45.98263  .      
      
      $results$score_mat[[8]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       39.78203
      ct2 39.78203  .      
      
      $results$score_mat[[9]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       40.74824
      ct2 40.74824  .      
      
      $results$score_mat[[10]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       43.95214 44.50951
      ct2 43.95214  .       54.46077
      ct3 44.50951 54.46077  .      
      
      $results$score_mat[[11]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       41.36223
      ct2 41.36223  .      
      
      $results$score_mat[[12]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       42.71172
      ct2 42.71172  .      
      
      $results$score_mat[[13]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       37.39777
      ct2 37.39777  .      
      
      $results$score_mat[[14]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       47.23565 50.67221
      ct2 47.23565  .       54.47335
      ct3 50.67221 54.47335  .      
      
      $results$score_mat[[15]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       43.97535 44.71370
      ct2 43.97535  .       52.36004
      ct3 44.71370 52.36004  .      
      
      $results$score_mat[[16]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       44.04978 43.76511
      ct2 44.04978  .       55.47460
      ct3 43.76511 55.47460  .      
      
      $results$score_mat[[17]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       46.05741 49.01296
      ct2 46.05741  .       52.03550
      ct3 49.01296 52.03550  .      
      
      $results$score_mat[[18]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       44.87908 45.10701
      ct2 44.87908  .       60.34125
      ct3 45.10701 60.34125  .      
      
      $results$score_mat[[19]]
      2 x 2 sparse Matrix of class "dgCMatrix"
              ct1     ct2
      ct1  .      47.9862
      ct2 47.9862  .     
      
      $results$score_mat[[20]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       37.43883
      ct2 37.43883  .      
      
      $results$score_mat[[21]]
      2 x 2 sparse Matrix of class "dgCMatrix"
              ct1     ct2
      ct1  .      45.2971
      ct2 45.2971  .     
      
      $results$score_mat[[22]]
      2 x 2 sparse Matrix of class "dgCMatrix"
              ct1     ct2
      ct1  .      38.8673
      ct2 38.8673  .     
      
      $results$score_mat[[23]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       43.67684
      ct2 43.67684  .      
      
      $results$score_mat[[24]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       42.54357 43.51817
      ct2 42.54357  .       55.92731
      ct3 43.51817 55.92731  .      
      
      $results$score_mat[[25]]
      2 x 2 sparse Matrix of class "dgCMatrix"
              ct1     ct2
      ct1  .      41.6287
      ct2 41.6287  .     
      
      $results$score_mat[[26]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       38.48390 39.80782
      ct2 38.48390  .       49.87752
      ct3 39.80782 49.87752  .      
      
      $results$score_mat[[27]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       39.09898 39.65228
      ct2 39.09898  .       51.59243
      ct3 39.65228 51.59243  .      
      
      $results$score_mat[[28]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       46.55345 47.60684
      ct2 46.55345  .       49.20019
      ct3 47.60684 49.20019  .      
      
      $results$score_mat[[29]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       44.61352 49.09456
      ct2 44.61352  .       50.51665
      ct3 49.09456 50.51665  .      
      
      $results$score_mat[[30]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       43.73633
      ct2 43.73633  .      
      
      $results$score_mat[[31]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       49.64200 49.79511
      ct2 49.64200  .       62.14516
      ct3 49.79511 62.14516  .      
      
      $results$score_mat[[32]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       43.39273
      ct2 43.39273  .      
      
      $results$score_mat[[33]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       43.25380 44.09443
      ct2 43.25380  .       54.35799
      ct3 44.09443 54.35799  .      
      
      $results$score_mat[[34]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       39.79886
      ct2 39.79886  .      
      
      $results$score_mat[[35]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       41.43856
      ct2 41.43856  .      
      
      $results$score_mat[[36]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       43.13384
      ct2 43.13384  .      
      
      $results$score_mat[[37]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       46.21021 43.92499
      ct2 46.21021  .       46.52602
      ct3 43.92499 46.52602  .      
      
      $results$score_mat[[38]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       45.47414
      ct2 45.47414  .      
      
      $results$score_mat[[39]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       36.75816
      ct2 36.75816  .      
      
      $results$score_mat[[40]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       43.64009
      ct2 43.64009  .      
      
      $results$score_mat[[41]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       43.55592
      ct2 43.55592  .      
      
      $results$score_mat[[42]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       47.97067 44.22733
      ct2 47.97067  .       48.68840
      ct3 44.22733 48.68840  .      
      
      $results$score_mat[[43]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       44.53342
      ct2 44.53342  .      
      
      $results$score_mat[[44]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       43.11089 47.30519
      ct2 43.11089  .       48.77025
      ct3 47.30519 48.77025  .      
      
      $results$score_mat[[45]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       42.55246 42.53427
      ct2 42.55246  .       58.03715
      ct3 42.53427 58.03715  .      
      
      $results$score_mat[[46]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       51.48748
      ct2 51.48748  .      
      
      $results$score_mat[[47]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       38.81102
      ct2 38.81102  .      
      
      $results$score_mat[[48]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       39.61137
      ct2 39.61137  .      
      
      $results$score_mat[[49]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       45.59808 46.42864
      ct2 45.59808  .       58.46675
      ct3 46.42864 58.46675  .      
      
      $results$score_mat[[50]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       37.55679
      ct2 37.55679  .      
      
      $results$score_mat[[51]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       43.14928 43.84764
      ct2 43.14928  .       51.26815
      ct3 43.84764 51.26815  .      
      
      $results$score_mat[[52]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       38.85844
      ct2 38.85844  .      
      
      $results$score_mat[[53]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       43.91794 47.20653
      ct2 43.91794  .       48.52293
      ct3 47.20653 48.52293  .      
      
      $results$score_mat[[54]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       39.62411 40.27182
      ct2 39.62411  .       46.55181
      ct3 40.27182 46.55181  .      
      
      $results$score_mat[[55]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       42.82469
      ct2 42.82469  .      
      
      $results$score_mat[[56]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       48.22434 48.66958
      ct2 48.22434  .       51.18304
      ct3 48.66958 51.18304  .      
      
      $results$score_mat[[57]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       47.84897 51.35979
      ct2 47.84897  .       53.35562
      ct3 51.35979 53.35562  .      
      
      $results$score_mat[[58]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       38.42457 38.88728
      ct2 38.42457  .       50.68115
      ct3 38.88728 50.68115  .      
      
      $results$score_mat[[59]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       45.79349
      ct2 45.79349  .      
      
      $results$score_mat[[60]]
      2 x 2 sparse Matrix of class "dgCMatrix"
              ct1     ct2
      ct1  .      45.9891
      ct2 45.9891  .     
      
      
      $results$singlet_scores
      $results$singlet_scores[[1]]
           ct1      ct2 
      48.24664 62.98866 
      
      $results$singlet_scores[[2]]
           ct1      ct2 
      49.62844 55.17807 
      
      $results$singlet_scores[[3]]
           ct1      ct2      ct3 
      43.94644 56.14923 61.38596 
      
      $results$singlet_scores[[4]]
           ct1      ct2      ct3 
      42.15293 47.40401 54.21988 
      
      $results$singlet_scores[[5]]
           ct1      ct2 
      43.33437 52.12930 
      
      $results$singlet_scores[[6]]
           ct1      ct2 
      48.72348 55.58322 
      
      $results$singlet_scores[[7]]
           ct1      ct2 
      46.38231 64.80433 
      
      $results$singlet_scores[[8]]
           ct1      ct2 
      41.06374 54.09072 
      
      $results$singlet_scores[[9]]
           ct1      ct2 
      43.25130 51.78283 
      
      $results$singlet_scores[[10]]
           ct1      ct2      ct3 
      44.95139 57.71882 58.25108 
      
      $results$singlet_scores[[11]]
           ct1      ct2 
      41.41594 60.71304 
      
      $results$singlet_scores[[12]]
           ct1      ct2 
      46.23491 51.09176 
      
      $results$singlet_scores[[13]]
           ct1      ct2 
      39.22281 49.90447 
      
      $results$singlet_scores[[14]]
           ct1      ct2      ct3 
      51.31765 53.60148 63.26864 
      
      $results$singlet_scores[[15]]
           ct1      ct2      ct3 
      46.13048 53.60843 56.80030 
      
      $results$singlet_scores[[16]]
           ct1      ct2      ct3 
      44.89916 56.57715 59.57179 
      
      $results$singlet_scores[[17]]
           ct1      ct2      ct3 
      50.41084 54.30712 54.58278 
      
      $results$singlet_scores[[18]]
           ct1      ct2      ct3 
      45.42226 60.67986 63.61829 
      
      $results$singlet_scores[[19]]
           ct1      ct2 
      50.03915 61.68465 
      
      $results$singlet_scores[[20]]
           ct1      ct2 
      37.45274 53.82409 
      
      $results$singlet_scores[[21]]
           ct1      ct2 
      45.59697 54.10153 
      
      $results$singlet_scores[[22]]
           ct1      ct2 
      40.22911 53.43773 
      
      $results$singlet_scores[[23]]
           ct1      ct2 
      44.83111 54.92332 
      
      $results$singlet_scores[[24]]
           ct1      ct2      ct3 
      43.61871 55.84275 63.03414 
      
      $results$singlet_scores[[25]]
           ct1      ct2 
      42.39963 55.68330 
      
      $results$singlet_scores[[26]]
           ct1      ct2      ct3 
      39.97801 51.29679 57.23173 
      
      $results$singlet_scores[[27]]
           ct1      ct2      ct3 
      40.02385 52.32873 57.62293 
      
      $results$singlet_scores[[28]]
           ct1      ct2      ct3 
      50.74235 51.39878 54.69581 
      
      $results$singlet_scores[[29]]
           ct1      ct2      ct3 
      49.77467 50.05782 62.81422 
      
      $results$singlet_scores[[30]]
           ct1      ct2 
      43.73412 67.30319 
      
      $results$singlet_scores[[31]]
           ct1      ct2      ct3 
      50.43616 61.87439 70.24782 
      
      $results$singlet_scores[[32]]
           ct1      ct2 
      45.75593 54.09937 
      
      $results$singlet_scores[[33]]
           ct1      ct2      ct3 
      44.74035 55.63139 59.32033 
      
      $results$singlet_scores[[34]]
           ct1      ct2 
      43.29784 47.64810 
      
      $results$singlet_scores[[35]]
           ct1      ct2 
      45.11437 50.75014 
      
      $results$singlet_scores[[36]]
           ct1      ct2 
      47.11024 51.87478 
      
      $results$singlet_scores[[37]]
           ct1      ct2      ct3 
      49.00530 52.68609 48.36874 
      
      $results$singlet_scores[[38]]
           ct1      ct2 
      49.23922 57.87982 
      
      $results$singlet_scores[[39]]
           ct1      ct2 
      39.81535 44.77416 
      
      $results$singlet_scores[[40]]
           ct1      ct2 
      45.86064 55.92911 
      
      $results$singlet_scores[[41]]
           ct1      ct2 
      43.98186 59.30841 
      
      $results$singlet_scores[[42]]
           ct1      ct2      ct3 
      50.46361 54.24765 50.52260 
      
      $results$singlet_scores[[43]]
           ct1      ct2 
      46.04017 56.55230 
      
      $results$singlet_scores[[44]]
           ct1      ct2      ct3 
      48.16168 48.32330 61.31079 
      
      $results$singlet_scores[[45]]
           ct1      ct2      ct3 
      42.58286 59.61477 61.66101 
      
      $results$singlet_scores[[46]]
           ct1      ct2 
      51.67283 61.80783 
      
      $results$singlet_scores[[47]]
           ct1      ct2 
      39.45032 54.54465 
      
      $results$singlet_scores[[48]]
           ct1      ct2 
      40.43720 54.03081 
      
      $results$singlet_scores[[49]]
           ct1      ct2      ct3 
      46.52852 57.61544 66.00334 
      
      $results$singlet_scores[[50]]
           ct1      ct2 
      40.53043 49.06701 
      
      $results$singlet_scores[[51]]
           ct1      ct2      ct3 
      45.01093 53.06810 57.32774 
      
      $results$singlet_scores[[52]]
           ct1      ct2 
      42.12159 47.71597 
      
      $results$singlet_scores[[53]]
           ct1      ct2      ct3 
      49.28032 50.33327 51.24546 
      
      $results$singlet_scores[[54]]
           ct1      ct2      ct3 
      40.68697 47.20348 52.78250 
      
      $results$singlet_scores[[55]]
           ct1      ct2 
      43.52294 56.82062 
      
      $results$singlet_scores[[56]]
           ct1      ct2      ct3 
      52.71873 52.50312 56.70389 
      
      $results$singlet_scores[[57]]
           ct1      ct2      ct3 
      52.35232 52.79515 65.58741 
      
      $results$singlet_scores[[58]]
           ct1      ct2      ct3 
      39.08380 53.33733 54.78696 
      
      $results$singlet_scores[[59]]
           ct1      ct2 
      52.65613 50.62140 
      
      $results$singlet_scores[[60]]
           ct1      ct2 
      50.04482 53.66239 
      
      
      

