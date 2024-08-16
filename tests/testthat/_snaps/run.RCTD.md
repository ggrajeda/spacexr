# run.RCTD simple test

    Code
      result <- run.RCTD(rctd, doublet_mode = "doublet")
    Message
      fitBulk: decomposing bulk
      chooseSigma: using initial Q_mat with sigma =  1
      Likelihood value: 5649.24481927183
      Sigma value:  0.84
      Likelihood value: 5498.44020744682
      Sigma value:  0.69
      Likelihood value: 5347.93063481376
      Sigma value:  0.61
      Likelihood value: 5266.38143287544
      Sigma value:  0.53
      Likelihood value: 5187.44875954708
      Sigma value:  0.45
      Likelihood value: 5117.31991524573
      Sigma value:  0.37
      Likelihood value: 5068.77459951009
      Sigma value:  0.33
      Likelihood value: 5060.11520744222
      Sigma value:  0.33
    Code
      list(cell_type_info = result@cell_type_info$renorm, de_results = result@
        de_results, results = result@results)
    Output
      $cell_type_info
      $cell_type_info[[1]]
                       ct1          ct2          ct3
      Gene14  1.374680e-04 9.247170e-05 6.849429e-05
      Gene44  2.792464e-03 1.250024e-03 1.494099e-03
      Gene99  3.908428e-03 1.607087e-03 1.847627e-03
      Gene148 4.230478e-03 1.872008e-03 2.125055e-03
      Gene152 3.969203e-03 1.847059e-03 1.705733e-03
      Gene186 2.113215e-03 7.658265e-04 1.048959e-03
      Gene208 1.757240e-03 8.738007e-04 5.488481e-04
      Gene297 3.593631e-04 2.537726e-04 1.458864e-04
      Gene300 4.012194e-03 2.951679e-03 1.689956e-03
      Gene301 2.903264e-04 1.283460e-04 1.487338e-04
      Gene326 1.113608e-04 5.860382e-05 7.293972e-05
      Gene348 1.726296e-02 6.907262e-03 9.186154e-03
      Gene405 1.401592e-03 5.977842e-04 7.592586e-04
      Gene432 4.177712e-04 1.278801e-04 1.096254e-04
      Gene466 1.716450e-04 8.377155e-05 6.130217e-05
      Gene471 6.697596e-05 3.280544e-05 3.665675e-05
      Gene43  1.770277e-03 5.512622e-03 1.892868e-03
      Gene47  8.215515e-06 1.997811e-05 1.107507e-05
      Gene51  1.015729e-04 1.798668e-04 9.693672e-05
      Gene108 2.207660e-04 4.353654e-04 2.253930e-04
      Gene139 2.696461e-03 4.420526e-03 2.510929e-03
      Gene204 7.866987e-05 3.532906e-04 2.299837e-04
      Gene206 1.081407e-03 1.924424e-03 1.197050e-03
      Gene342 1.444634e-03 2.874285e-03 1.061836e-03
      Gene431 8.550477e-04 2.955627e-03 8.301362e-04
      Gene464 2.112911e-04 3.454210e-04 1.950230e-04
      Gene477 3.221266e-05 1.270801e-04 7.407255e-05
      Gene1   7.291271e-05 6.431670e-05 1.173726e-04
      Gene6   4.036480e-05 5.652864e-05 1.043282e-04
      Gene27  8.493980e-04 7.206714e-04 1.705202e-03
      Gene30  4.926759e-04 4.168987e-04 8.727147e-04
      Gene49  2.290800e-04 1.862827e-04 4.946575e-04
      Gene59  7.715206e-05 1.138218e-04 2.085804e-04
      Gene65  3.491841e-03 2.686290e-03 7.381703e-03
      Gene69  5.227195e-05 4.720844e-05 8.756550e-05
      Gene72  2.643851e-05 2.900088e-05 5.067720e-05
      Gene74  6.731651e-04 5.087954e-04 1.002446e-03
      Gene96  3.609998e-04 3.111547e-04 5.819374e-04
      Gene127 9.184811e-04 8.481811e-04 2.118697e-03
      Gene135 2.577564e-03 4.736262e-03 7.877791e-03
      Gene166 5.513082e-03 4.073145e-03 7.948618e-03
      Gene178 1.525936e-03 2.982697e-03 4.008532e-03
      Gene190 5.919838e-04 2.185869e-04 8.348228e-04
      Gene210 2.447851e-05 2.210644e-05 3.978564e-05
      Gene220 4.737936e-06 2.301980e-06 7.959213e-06
      Gene234 5.612160e-04 6.462416e-04 1.021948e-03
      Gene255 2.082195e-04 1.800437e-04 3.514758e-04
      Gene256 1.744768e-04 1.672960e-04 3.600138e-04
      Gene310 1.410712e-03 9.546088e-04 2.630364e-03
      Gene312 3.236784e-04 4.845046e-04 6.683645e-04
      Gene314 2.182294e-04 2.067179e-04 4.779179e-04
      Gene316 1.142176e-06 8.893646e-07 2.649540e-06
      Gene317 1.273832e-03 1.409112e-03 2.269551e-03
      Gene349 4.128892e-03 4.684591e-03 7.806658e-03
      Gene428 3.567560e-04 4.083707e-04 1.003708e-03
      Gene435 4.273264e-05 3.143618e-05 6.879691e-05
      Gene482 8.770056e-05 1.053768e-04 2.057102e-04
      
      $cell_type_info[[2]]
      [1] "ct1" "ct2" "ct3"
      
      $cell_type_info[[3]]
      [1] 3
      
      
      $de_results
      list()
      
      $results
      $results$results_df
                                         spot_class first_type second_type
      ct1_plat1_TCAACACTTAAGGGTCCCCA        singlet        ct2         ct3
      ct2_plat1_TCAAGACTTAAGGGTCCCCA        singlet        ct2         ct3
      ct2_plat1_TCAATACTTAAGGGTCCCCA        singlet        ct2         ct3
      ct3_plat1_TCAAAACTTCAGGGTCCCCA        singlet        ct2         ct3
      ct3_plat1_TCAACACTTCAGGGTCCCCA        singlet        ct2         ct1
      ct1_plat1_TCAAGACTTCAGGGTCCCCA        singlet        ct2         ct3
      ct3_plat1_TCAATACTTCAGGGTCCCCA        singlet        ct2         ct1
      ct3_plat1_TCAAAACTTGAGGGTCCCCA        singlet        ct2         ct3
      ct2_plat1_TCAACACTTGAGGGTCCCCA        singlet        ct2         ct1
      ct2_plat1_TCAACAACTTAAAGGGTTCCCCAA    singlet        ct2         ct1
      ct1_plat1_TCAACCACTTAAAGGGTTCCCCAA    singlet        ct2         ct3
      ct3_plat1_TCAACGACTTAAAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAACTACTTAAAGGGTTCCCCAA    singlet        ct2         ct3
      ct2_plat1_TCAACAACTTACAGGGTTCCCCAA    singlet        ct2         ct3
      ct2_plat1_TCAACCACTTACAGGGTTCCCCAA    singlet        ct2         ct3
      ct3_plat1_TCAACGACTTACAGGGTTCCCCAA    singlet        ct2         ct3
      ct2_plat1_TCAACTACTTACAGGGTTCCCCAA    singlet        ct2         ct3
      ct2_plat1_TCAACAACTTAGAGGGTTCCCCAA    singlet        ct2         ct1
      ct1_plat1_TCAACCACTTAGAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAAGAACTTAAAGGGTTCCCCAA    singlet        ct2         ct3
      ct2_plat1_TCAAGCACTTAAAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAAGGACTTAAAGGGTTCCCCAA    singlet        ct2         ct3
      ct2_plat1_TCAAGTACTTAAAGGGTTCCCCAA    singlet        ct2         ct3
      ct3_plat1_TCAAGAACTTACAGGGTTCCCCAA    singlet        ct2         ct3
      ct2_plat1_TCAAGCACTTACAGGGTTCCCCAA    singlet        ct2         ct3
      ct3_plat1_TCAAGGACTTACAGGGTTCCCCAA    singlet        ct2         ct1
      ct2_plat1_TCAAGTACTTACAGGGTTCCCCAA    singlet        ct2         ct1
      ct3_plat1_TCAAGAACTTAGAGGGTTCCCCAA    singlet        ct2         ct1
      ct3_plat1_TCAAGCACTTAGAGGGTTCCCCAA    singlet        ct2         ct1
      ct2_plat1_TCAATAACTTAAAGGGTTCCCCAA    singlet        ct2         ct1
      ct2_plat1_TCAATCACTTAAAGGGTTCCCCAA    singlet        ct2         ct1
      ct1_plat1_TCAATGACTTAAAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAATTACTTAAAGGGTTCCCCAA    singlet        ct2         ct3
      ct2_plat1_TCAATAACTTACAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAATCACTTACAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAATGACTTACAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAATTACTTACAGGGTTCCCCAA    singlet        ct2         ct3
      ct2_plat1_TCAATAACTTAGAGGGTTCCCCAA    singlet        ct2         ct1
      ct2_plat1_TCAATCACTTAGAGGGTTCCCCAA    singlet        ct2         ct3
      ct2_plat1_TCAAAAACTTCAAGGGTTCCCCAA    singlet        ct2         ct1
      ct1_plat1_TCAAACACTTCAAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAAAGACTTCAAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAAATACTTCAAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAAAAACTTCCAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAAACACTTCCAGGGTTCCCCAA    singlet        ct2         ct3
      ct2_plat1_TCAAAGACTTCCAGGGTTCCCCAA    singlet        ct2         ct3
      ct2_plat1_TCAAATACTTCCAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAAAAACTTCGAGGGTTCCCCAA    singlet        ct2         ct3
      ct3_plat1_TCAAACACTTCGAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAACAACTTCAAGGGTTCCCCAA    singlet        ct2         ct3
      ct2_plat1_TCAACCACTTCAAGGGTTCCCCAA    singlet        ct2         ct1
      ct1_plat1_TCAACGACTTCAAGGGTTCCCCAA    singlet        ct2         ct1
      ct1_plat1_TCAACTACTTCAAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAACAACTTCCAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAACCACTTCCAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAACGACTTCCAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAACTACTTCCAGGGTTCCCCAA    singlet        ct2         ct3
      ct1_plat1_TCAACAACTTCGAGGGTTCCCCAA    singlet        ct2         ct3
      ct3_plat1_TCAACCACTTCGAGGGTTCCCCAA    singlet        ct2         ct3
      ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA    singlet        ct2         ct1
                                         first_class second_class min_score
      ct1_plat1_TCAACACTTAAGGGTCCCCA           FALSE        FALSE  81.90765
      ct2_plat1_TCAAGACTTAAGGGTCCCCA           FALSE        FALSE  77.78741
      ct2_plat1_TCAATACTTAAGGGTCCCCA           FALSE        FALSE  83.44385
      ct3_plat1_TCAAAACTTCAGGGTCCCCA           FALSE        FALSE  86.85266
      ct3_plat1_TCAACACTTCAGGGTCCCCA           FALSE        FALSE  83.66377
      ct1_plat1_TCAAGACTTCAGGGTCCCCA           FALSE        FALSE  78.56273
      ct3_plat1_TCAATACTTCAGGGTCCCCA           FALSE        FALSE  88.09299
      ct3_plat1_TCAAAACTTGAGGGTCCCCA           FALSE        FALSE  93.40608
      ct2_plat1_TCAACACTTGAGGGTCCCCA           FALSE        FALSE  82.72415
      ct2_plat1_TCAACAACTTAAAGGGTTCCCCAA       FALSE        FALSE  83.05975
      ct1_plat1_TCAACCACTTAAAGGGTTCCCCAA       FALSE        FALSE  86.89631
      ct3_plat1_TCAACGACTTAAAGGGTTCCCCAA       FALSE        FALSE  86.83025
      ct1_plat1_TCAACTACTTAAAGGGTTCCCCAA       FALSE        FALSE  85.79258
      ct2_plat1_TCAACAACTTACAGGGTTCCCCAA       FALSE        FALSE  77.61492
      ct2_plat1_TCAACCACTTACAGGGTTCCCCAA       FALSE        FALSE  92.25947
      ct3_plat1_TCAACGACTTACAGGGTTCCCCAA       FALSE        FALSE  95.82514
      ct2_plat1_TCAACTACTTACAGGGTTCCCCAA       FALSE        FALSE  86.40401
      ct2_plat1_TCAACAACTTAGAGGGTTCCCCAA       FALSE        FALSE  81.29051
      ct1_plat1_TCAACCACTTAGAGGGTTCCCCAA       FALSE        FALSE  84.45520
      ct1_plat1_TCAAGAACTTAAAGGGTTCCCCAA       FALSE        FALSE  81.42800
      ct2_plat1_TCAAGCACTTAAAGGGTTCCCCAA       FALSE        FALSE  87.66583
      ct1_plat1_TCAAGGACTTAAAGGGTTCCCCAA       FALSE        FALSE  83.19633
      ct2_plat1_TCAAGTACTTAAAGGGTTCCCCAA       FALSE        FALSE  85.87614
      ct3_plat1_TCAAGAACTTACAGGGTTCCCCAA       FALSE        FALSE  84.65839
      ct2_plat1_TCAAGCACTTACAGGGTTCCCCAA       FALSE        FALSE  92.58430
      ct3_plat1_TCAAGGACTTACAGGGTTCCCCAA       FALSE        FALSE  93.19411
      ct2_plat1_TCAAGTACTTACAGGGTTCCCCAA       FALSE        FALSE  81.57711
      ct3_plat1_TCAAGAACTTAGAGGGTTCCCCAA       FALSE        FALSE  85.37977
      ct3_plat1_TCAAGCACTTAGAGGGTTCCCCAA       FALSE        FALSE  95.80843
      ct2_plat1_TCAATAACTTAAAGGGTTCCCCAA       FALSE        FALSE  85.76831
      ct2_plat1_TCAATCACTTAAAGGGTTCCCCAA       FALSE        FALSE  76.26876
      ct1_plat1_TCAATGACTTAAAGGGTTCCCCAA       FALSE        FALSE  80.72402
      ct1_plat1_TCAATTACTTAAAGGGTTCCCCAA       FALSE        FALSE  76.70939
      ct2_plat1_TCAATAACTTACAGGGTTCCCCAA       FALSE        FALSE  87.37717
      ct1_plat1_TCAATCACTTACAGGGTTCCCCAA       FALSE        FALSE  83.34388
      ct1_plat1_TCAATGACTTACAGGGTTCCCCAA       FALSE        FALSE  83.41241
      ct1_plat1_TCAATTACTTACAGGGTTCCCCAA       FALSE        FALSE  72.81457
      ct2_plat1_TCAATAACTTAGAGGGTTCCCCAA       FALSE        FALSE  81.93842
      ct2_plat1_TCAATCACTTAGAGGGTTCCCCAA       FALSE        FALSE  91.62060
      ct2_plat1_TCAAAAACTTCAAGGGTTCCCCAA       FALSE        FALSE  83.41115
      ct1_plat1_TCAAACACTTCAAGGGTTCCCCAA       FALSE        FALSE  73.85811
      ct1_plat1_TCAAAGACTTCAAGGGTTCCCCAA       FALSE        FALSE  74.86778
      ct1_plat1_TCAAATACTTCAAGGGTTCCCCAA       FALSE        FALSE  81.41284
      ct1_plat1_TCAAAAACTTCCAGGGTTCCCCAA       FALSE        FALSE  74.88362
      ct1_plat1_TCAAACACTTCCAGGGTTCCCCAA       FALSE        FALSE  88.32533
      ct2_plat1_TCAAAGACTTCCAGGGTTCCCCAA       FALSE        FALSE  85.30477
      ct2_plat1_TCAAATACTTCCAGGGTTCCCCAA       FALSE        FALSE  89.58345
      ct1_plat1_TCAAAAACTTCGAGGGTTCCCCAA       FALSE        FALSE  84.00775
      ct3_plat1_TCAAACACTTCGAGGGTTCCCCAA       FALSE        FALSE  93.27039
      ct1_plat1_TCAACAACTTCAAGGGTTCCCCAA       FALSE        FALSE  81.37500
      ct2_plat1_TCAACCACTTCAAGGGTTCCCCAA       FALSE        FALSE  87.24562
      ct1_plat1_TCAACGACTTCAAGGGTTCCCCAA       FALSE        FALSE  83.26689
      ct1_plat1_TCAACTACTTCAAGGGTTCCCCAA       FALSE        FALSE  85.15831
      ct1_plat1_TCAACAACTTCCAGGGTTCCCCAA       FALSE        FALSE  89.59702
      ct1_plat1_TCAACCACTTCCAGGGTTCCCCAA       FALSE        FALSE  88.17059
      ct1_plat1_TCAACGACTTCCAGGGTTCCCCAA       FALSE        FALSE  78.11200
      ct1_plat1_TCAACTACTTCCAGGGTTCCCCAA       FALSE        FALSE  90.04854
      ct1_plat1_TCAACAACTTCGAGGGTTCCCCAA       FALSE        FALSE  77.58583
      ct3_plat1_TCAACCACTTCGAGGGTTCCCCAA       FALSE        FALSE  91.88562
      ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA       FALSE        FALSE  86.06160
                                         singlet_score conv_all conv_doublet
      ct1_plat1_TCAACACTTAAGGGTCCCCA          84.05897     TRUE         TRUE
      ct2_plat1_TCAAGACTTAAGGGTCCCCA          78.43823     TRUE         TRUE
      ct2_plat1_TCAATACTTAAGGGTCCCCA          84.89371     TRUE         TRUE
      ct3_plat1_TCAAAACTTCAGGGTCCCCA          86.88110     TRUE         TRUE
      ct3_plat1_TCAACACTTCAGGGTCCCCA          84.02180     TRUE         TRUE
      ct1_plat1_TCAAGACTTCAGGGTCCCCA          80.93143     TRUE         TRUE
      ct3_plat1_TCAATACTTCAGGGTCCCCA          88.08262     TRUE         TRUE
      ct3_plat1_TCAAAACTTGAGGGTCCCCA          93.41932     TRUE         TRUE
      ct2_plat1_TCAACACTTGAGGGTCCCCA          89.39718     TRUE         TRUE
      ct2_plat1_TCAACAACTTAAAGGGTTCCCCAA      85.81187     TRUE         TRUE
      ct1_plat1_TCAACCACTTAAAGGGTTCCCCAA      87.36762     TRUE         TRUE
      ct3_plat1_TCAACGACTTAAAGGGTTCCCCAA      86.99708     TRUE         TRUE
      ct1_plat1_TCAACTACTTAAAGGGTTCCCCAA      88.78554     TRUE         TRUE
      ct2_plat1_TCAACAACTTACAGGGTTCCCCAA      78.31496     TRUE         TRUE
      ct2_plat1_TCAACCACTTACAGGGTTCCCCAA      93.57965     TRUE         TRUE
      ct3_plat1_TCAACGACTTACAGGGTTCCCCAA      95.94325     TRUE         TRUE
      ct2_plat1_TCAACTACTTACAGGGTTCCCCAA      87.42013     TRUE         TRUE
      ct2_plat1_TCAACAACTTAGAGGGTTCCCCAA      82.21039     TRUE         TRUE
      ct1_plat1_TCAACCACTTAGAGGGTTCCCCAA      86.37366     TRUE         TRUE
      ct1_plat1_TCAAGAACTTAAAGGGTTCCCCAA      83.67327     TRUE         TRUE
      ct2_plat1_TCAAGCACTTAAAGGGTTCCCCAA      91.21923     TRUE         TRUE
      ct1_plat1_TCAAGGACTTAAAGGGTTCCCCAA      87.59551     TRUE         TRUE
      ct2_plat1_TCAAGTACTTAAAGGGTTCCCCAA      89.41799     TRUE         TRUE
      ct3_plat1_TCAAGAACTTACAGGGTTCCCCAA      84.69203     TRUE         TRUE
      ct2_plat1_TCAAGCACTTACAGGGTTCCCCAA      94.21244     TRUE         TRUE
      ct3_plat1_TCAAGGACTTACAGGGTTCCCCAA      93.59475     TRUE         TRUE
      ct2_plat1_TCAAGTACTTACAGGGTTCCCCAA      82.22397     TRUE         TRUE
      ct3_plat1_TCAAGAACTTAGAGGGTTCCCCAA      85.37526     TRUE         TRUE
      ct3_plat1_TCAAGCACTTAGAGGGTTCCCCAA      95.80152     TRUE         TRUE
      ct2_plat1_TCAATAACTTAAAGGGTTCCCCAA      85.99577     TRUE         TRUE
      ct2_plat1_TCAATCACTTAAAGGGTTCCCCAA      80.72223     TRUE         TRUE
      ct1_plat1_TCAATGACTTAAAGGGTTCCCCAA      82.32157     TRUE         TRUE
      ct1_plat1_TCAATTACTTAAAGGGTTCCCCAA      78.06979     TRUE         TRUE
      ct2_plat1_TCAATAACTTACAGGGTTCCCCAA      90.08926     TRUE         TRUE
      ct1_plat1_TCAATCACTTACAGGGTTCCCCAA      84.54531     TRUE         TRUE
      ct1_plat1_TCAATGACTTACAGGGTTCCCCAA      86.04219     TRUE         TRUE
      ct1_plat1_TCAATTACTTACAGGGTTCCCCAA      76.13738     TRUE         TRUE
      ct2_plat1_TCAATAACTTAGAGGGTTCCCCAA      83.79817     TRUE         TRUE
      ct2_plat1_TCAATCACTTAGAGGGTTCCCCAA      93.37356     TRUE         TRUE
      ct2_plat1_TCAAAAACTTCAAGGGTTCCCCAA      87.68427     TRUE         TRUE
      ct1_plat1_TCAAACACTTCAAGGGTTCCCCAA      74.68748     TRUE         TRUE
      ct1_plat1_TCAAAGACTTCAAGGGTTCCCCAA      75.35087     TRUE         TRUE
      ct1_plat1_TCAAATACTTCAAGGGTTCCCCAA      83.40276     TRUE         TRUE
      ct1_plat1_TCAAAAACTTCCAGGGTTCCCCAA      75.64891     TRUE         TRUE
      ct1_plat1_TCAAACACTTCCAGGGTTCCCCAA      89.73233     TRUE         TRUE
      ct2_plat1_TCAAAGACTTCCAGGGTTCCCCAA      86.58594     TRUE         TRUE
      ct2_plat1_TCAAATACTTCCAGGGTTCCCCAA      92.05625     TRUE         TRUE
      ct1_plat1_TCAAAAACTTCGAGGGTTCCCCAA      85.32326     TRUE         TRUE
      ct3_plat1_TCAAACACTTCGAGGGTTCCCCAA      94.43392     TRUE         TRUE
      ct1_plat1_TCAACAACTTCAAGGGTTCCCCAA      82.31682     TRUE         TRUE
      ct2_plat1_TCAACCACTTCAAGGGTTCCCCAA      91.22234     TRUE         TRUE
      ct1_plat1_TCAACGACTTCAAGGGTTCCCCAA      84.72285     TRUE         TRUE
      ct1_plat1_TCAACTACTTCAAGGGTTCCCCAA      85.82256     TRUE         TRUE
      ct1_plat1_TCAACAACTTCCAGGGTTCCCCAA      91.88493     TRUE         TRUE
      ct1_plat1_TCAACCACTTCCAGGGTTCCCCAA      88.86947     TRUE         TRUE
      ct1_plat1_TCAACGACTTCCAGGGTTCCCCAA      80.35800     TRUE         TRUE
      ct1_plat1_TCAACTACTTCCAGGGTTCCCCAA      90.16006     TRUE         TRUE
      ct1_plat1_TCAACAACTTCGAGGGTTCCCCAA      79.91884     TRUE         TRUE
      ct3_plat1_TCAACCACTTCGAGGGTTCCCCAA      91.89213     TRUE         TRUE
      ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA      87.51126     TRUE         TRUE
      
      $results$weights
      60 x 3 sparse Matrix of class "dgCMatrix"
                                                  ct1       ct2          ct3
      ct1_plat1_TCAACACTTAAGGGTCCCCA     0.0246111149 0.6757848 0.1896550486
      ct2_plat1_TCAAGACTTAAGGGTCCCCA     0.0005428045 0.6749672 0.1001519025
      ct2_plat1_TCAATACTTAAGGGTCCCCA     0.1017161517 0.5355924 0.1329999185
      ct3_plat1_TCAAAACTTCAGGGTCCCCA     0.0002659742 1.2823334 0.0295465610
      ct3_plat1_TCAACACTTCAGGGTCCCCA     0.0978028971 1.0831336 0.0002659742
      ct1_plat1_TCAAGACTTCAGGGTCCCCA     0.0007754350 0.5807641 0.1774534822
      ct3_plat1_TCAATACTTCAGGGTCCCCA     0.0003799632 1.2245406 0.0004396456
      ct3_plat1_TCAAAACTTGAGGGTCCCCA     0.0001861820 1.2863399 0.0206942247
      ct2_plat1_TCAACACTTGAGGGTCCCCA     0.2382101924 0.3416741 0.1209315266
      ct2_plat1_TCAACAACTTAAAGGGTTCCCCAA 0.1626927257 0.4693588 0.1130182958
      ct1_plat1_TCAACCACTTAAAGGGTTCCCCAA 0.0003799632 0.8397192 0.0927540184
      ct3_plat1_TCAACGACTTAAAGGGTTCCCCAA 0.0001861820 1.2192851 0.0730107477
      ct1_plat1_TCAACTACTTAAAGGGTTCCCCAA 0.0005428045 0.7371676 0.2625522954
      ct2_plat1_TCAACAACTTACAGGGTTCCCCAA 0.0748897707 0.6900343 0.1043636860
      ct2_plat1_TCAACCACTTACAGGGTTCCCCAA 0.0250180731 0.6300941 0.1719573474
      ct3_plat1_TCAACGACTTACAGGGTTCCCCAA 0.0040782160 1.0722845 0.0544661185
      ct2_plat1_TCAACTACTTACAGGGTTCCCCAA 0.0516779323 0.7050496 0.1286594049
      ct2_plat1_TCAACAACTTAGAGGGTTCCCCAA 0.1112698628 0.6994758 0.0400167147
      ct1_plat1_TCAACCACTTAGAGGGTTCCCCAA 0.1411900594 0.5703107 0.1578785074
      ct1_plat1_TCAAGAACTTAAAGGGTTCCCCAA 0.0387401703 0.5763813 0.1774481926
      ct2_plat1_TCAAGCACTTAAAGGGTTCCCCAA 0.0279336401 0.5020231 0.2644905565
      ct1_plat1_TCAAGGACTTAAAGGGTTCCCCAA 0.0414205409 0.5869876 0.2907787444
      ct2_plat1_TCAAGTACTTAAAGGGTTCCCCAA 0.0011077644 0.4847688 0.2563790404
      ct3_plat1_TCAAGAACTTACAGGGTTCCCCAA 0.0003799632 1.2087639 0.0320953907
      ct2_plat1_TCAAGCACTTACAGGGTTCCCCAA 0.1316949931 0.5651928 0.1673988220
      ct3_plat1_TCAAGGACTTACAGGGTTCCCCAA 0.1062838027 1.1794043 0.0003799632
      ct2_plat1_TCAAGTACTTACAGGGTTCCCCAA 0.0805997704 0.6588749 0.0777662023
      ct3_plat1_TCAAGAACTTAGAGGGTTCCCCAA 0.0003799632 1.3254608 0.0004462963
      ct3_plat1_TCAAGCACTTAGAGGGTTCCCCAA 0.0003799632 1.2836124 0.0004088892
      ct2_plat1_TCAATAACTTAAAGGGTTCCCCAA 0.0434099441 0.6494167 0.0354546914
      ct2_plat1_TCAATCACTTAAAGGGTTCCCCAA 0.2096247165 0.3842929 0.0942580133
      ct1_plat1_TCAATGACTTAAAGGGTTCCCCAA 0.0053377820 0.7083446 0.1625407546
      ct1_plat1_TCAATTACTTAAAGGGTTCCCCAA 0.0547394129 0.6230851 0.1367914983
      ct2_plat1_TCAATAACTTACAGGGTTCCCCAA 0.1683609286 0.4983714 0.2013205696
      ct1_plat1_TCAATCACTTACAGGGTTCCCCAA 0.0003799632 0.8217170 0.1591483792
      ct1_plat1_TCAATGACTTACAGGGTTCCCCAA 0.0005428045 0.6952889 0.2273513591
      ct1_plat1_TCAATTACTTACAGGGTTCCCCAA 0.0675040973 0.6003807 0.2494799967
      ct2_plat1_TCAATAACTTAGAGGGTTCCCCAA 0.1497178506 0.6029665 0.0756756304
      ct2_plat1_TCAATCACTTAGAGGGTTCCCCAA 0.0856438005 0.5626016 0.1805917607
      ct2_plat1_TCAAAAACTTCAAGGGTTCCCCAA 0.2192877564 0.4432443 0.1635136068
      ct1_plat1_TCAAACACTTCAAGGGTTCCCCAA 0.0226107471 0.7693709 0.1202430238
      ct1_plat1_TCAAAGACTTCAAGGGTTCCCCAA 0.0003799632 0.8011101 0.0957861825
      ct1_plat1_TCAAATACTTCAAGGGTTCCCCAA 0.0007754350 0.6515945 0.1826567117
      ct1_plat1_TCAAAAACTTCCAGGGTTCCCCAA 0.0005428045 0.7889292 0.1244635043
      ct1_plat1_TCAAACACTTCCAGGGTTCCCCAA 0.0650405928 0.6492391 0.1518204378
      ct2_plat1_TCAAAGACTTCCAGGGTTCCCCAA 0.0071842538 0.6521485 0.1390771462
      ct2_plat1_TCAAATACTTCCAGGGTTCCCCAA 0.0566961356 0.5924576 0.2020253745
      ct1_plat1_TCAAAAACTTCGAGGGTTCCCCAA 0.0005428045 0.7878574 0.1623308988
      ct3_plat1_TCAAACACTTCGAGGGTTCCCCAA 0.0005428045 1.0257071 0.1819658871
      ct1_plat1_TCAACAACTTCAAGGGTTCCCCAA 0.1005839965 0.7669303 0.1285507416
      ct2_plat1_TCAACCACTTCAAGGGTTCCCCAA 0.2217120332 0.5216329 0.1197837944
      ct1_plat1_TCAACGACTTCAAGGGTTCCCCAA 0.1313034497 0.6281562 0.0575102578
      ct1_plat1_TCAACTACTTCAAGGGTTCCCCAA 0.0095461816 0.8636427 0.1158788329
      ct1_plat1_TCAACAACTTCCAGGGTTCCCCAA 0.0136912370 0.7697956 0.2335526800
      ct1_plat1_TCAACCACTTCCAGGGTTCCCCAA 0.0873444061 0.7715766 0.1061929920
      ct1_plat1_TCAACGACTTCCAGGGTTCCCCAA 0.0237593626 0.6450612 0.1945066036
      ct1_plat1_TCAACTACTTCCAGGGTTCCCCAA 0.0076986352 0.9638541 0.0465778536
      ct1_plat1_TCAACAACTTCGAGGGTTCCCCAA 0.0699505945 0.6255561 0.1873087672
      ct3_plat1_TCAACCACTTCGAGGGTTCCCCAA 0.0002659742 1.2874390 0.0140246773
      ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA 0.1589514077 0.4926782 0.1412526945
      
      $results$weights_doublet
      60 x 2 sparse Matrix of class "dgCMatrix"
                                         first_type  second_type
      ct1_plat1_TCAACACTTAAGGGTCCCCA      0.7793266 0.2206734465
      ct2_plat1_TCAAGACTTAAGGGTCCCCA      0.8698302 0.1301698025
      ct2_plat1_TCAATACTTAAGGGTCCCCA      0.7913163 0.2086837115
      ct3_plat1_TCAAAACTTCAGGGTCCCCA      0.9773505 0.0226494961
      ct3_plat1_TCAACACTTCAGGGTCCCCA      0.9170267 0.0829733183
      ct1_plat1_TCAAGACTTCAGGGTCCCCA      0.7649419 0.2350581222
      ct3_plat1_TCAATACTTCAGGGTCCCCA      0.9995348 0.0004651670
      ct3_plat1_TCAAAACTTGAGGGTCCCCA      0.9840196 0.0159803899
      ct2_plat1_TCAACACTTGAGGGTCCCCA      0.5893397 0.4106603083
      ct2_plat1_TCAACAACTTAAAGGGTTCCCCAA  0.7439127 0.2560873381
      ct1_plat1_TCAACCACTTAAAGGGTTCCCCAA  0.8999866 0.1000133771
      ct3_plat1_TCAACGACTTAAAGGGTTCCCCAA  0.9432662 0.0567337757
      ct1_plat1_TCAACTACTTAAAGGGTTCCCCAA  0.7368728 0.2631272118
      ct2_plat1_TCAACAACTTACAGGGTTCCCCAA  0.8536276 0.1463723641
      ct2_plat1_TCAACCACTTACAGGGTTCCCCAA  0.7786535 0.2213465254
      ct3_plat1_TCAACGACTTACAGGGTTCCCCAA  0.9505977 0.0494022883
      ct2_plat1_TCAACTACTTACAGGGTTCCCCAA  0.8393939 0.1606060536
      ct2_plat1_TCAACAACTTAGAGGGTTCCCCAA  0.8606416 0.1393583511
      ct1_plat1_TCAACCACTTAGAGGGTTCCCCAA  0.7780908 0.2219092212
      ct1_plat1_TCAAGAACTTAAAGGGTTCCCCAA  0.7623360 0.2376640088
      ct2_plat1_TCAAGCACTTAAAGGGTTCCCCAA  0.6533830 0.3466169668
      ct1_plat1_TCAAGGACTTAAAGGGTTCCCCAA  0.6674880 0.3325120490
      ct2_plat1_TCAAGTACTTAAAGGGTTCCCCAA  0.6538364 0.3461636397
      ct3_plat1_TCAAGAACTTACAGGGTTCCCCAA  0.9739719 0.0260280835
      ct2_plat1_TCAAGCACTTACAGGGTTCCCCAA  0.7693916 0.2306084269
      ct3_plat1_TCAAGGACTTACAGGGTTCCCCAA  0.9171921 0.0828079079
      ct2_plat1_TCAAGTACTTACAGGGTTCCCCAA  0.8787678 0.1212322199
      ct3_plat1_TCAAGAACTTAGAGGGTTCCCCAA  0.9995702 0.0004297547
      ct3_plat1_TCAAGCACTTAGAGGGTTCCCCAA  0.9993660 0.0006339663
      ct2_plat1_TCAATAACTTAAAGGGTTCCCCAA  0.9322331 0.0677668564
      ct2_plat1_TCAATCACTTAAAGGGTTCCCCAA  0.6414520 0.3585479508
      ct1_plat1_TCAATGACTTAAAGGGTTCCCCAA  0.8120510 0.1879490048
      ct1_plat1_TCAATTACTTAAAGGGTTCCCCAA  0.8141916 0.1858084157
      ct2_plat1_TCAATAACTTACAGGGTTCCCCAA  0.7024994 0.2975005848
      ct1_plat1_TCAATCACTTACAGGGTTCCCCAA  0.8372849 0.1627150730
      ct1_plat1_TCAATGACTTACAGGGTTCCCCAA  0.7528314 0.2471686186
      ct1_plat1_TCAATTACTTACAGGGTTCCCCAA  0.6969046 0.3030953775
      ct2_plat1_TCAATAACTTAGAGGGTTCCCCAA  0.7945114 0.2054885816
      ct2_plat1_TCAATCACTTAGAGGGTTCCCCAA  0.7489205 0.2510795058
      ct2_plat1_TCAAAAACTTCAAGGGTTCCCCAA  0.6710921 0.3289079272
      ct1_plat1_TCAAACACTTCAAGGGTTCCCCAA  0.8623258 0.1376742498
      ct1_plat1_TCAAAGACTTCAAGGGTTCCCCAA  0.8926475 0.1073524591
      ct1_plat1_TCAAATACTTCAAGGGTTCCCCAA  0.7800241 0.2199758869
      ct1_plat1_TCAAAAACTTCCAGGGTTCCCCAA  0.8634443 0.1365556508
      ct1_plat1_TCAAACACTTCCAGGGTTCCCCAA  0.8075089 0.1924910956
      ct2_plat1_TCAAAGACTTCCAGGGTTCCCCAA  0.8226916 0.1773083837
      ct2_plat1_TCAAATACTTCCAGGGTTCCCCAA  0.7436180 0.2563819735
      ct1_plat1_TCAAAAACTTCGAGGGTTCCCCAA  0.8289038 0.1710961547
      ct3_plat1_TCAAACACTTCGAGGGTTCCCCAA  0.8489290 0.1510709780
      ct1_plat1_TCAACAACTTCAAGGGTTCCCCAA  0.8519981 0.1480018590
      ct2_plat1_TCAACCACTTCAAGGGTTCCCCAA  0.6983524 0.3016475958
      ct1_plat1_TCAACGACTTCAAGGGTTCCCCAA  0.8226488 0.1773512378
      ct1_plat1_TCAACTACTTCAAGGGTTCCCCAA  0.8810925 0.1189075434
      ct1_plat1_TCAACAACTTCCAGGGTTCCCCAA  0.7663859 0.2336141096
      ct1_plat1_TCAACCACTTCCAGGGTTCCCCAA  0.8732245 0.1267754505
      ct1_plat1_TCAACGACTTCCAGGGTTCCCCAA  0.7662062 0.2337938445
      ct1_plat1_TCAACTACTTCCAGGGTTCCCCAA  0.9529691 0.0470308889
      ct1_plat1_TCAACAACTTCGAGGGTTCCCCAA  0.7596057 0.2403943018
      ct3_plat1_TCAACCACTTCGAGGGTTCCCCAA  0.9891405 0.0108595004
      ct2_plat1_TCAAGAACTTCAAGGGTTCCCCAA  0.7716412 0.2283587866
      
      $results$score_mat
      $results$score_mat[[1]]
      3 x 3 sparse Matrix of class "dgCMatrix"
                ct1      ct2       ct3
      ct1   .       83.85034 100.33734
      ct2  83.85034  .        81.90765
      ct3 100.33734 81.90765   .      
      
      $results$score_mat[[2]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       77.78741
      ct3 77.78741  .      
      
      $results$score_mat[[3]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       83.85124 95.97682
      ct2 83.85124  .       83.44385
      ct3 95.97682 83.44385  .      
      
      $results$score_mat[[4]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       86.85266
      ct3 86.85266  .      
      
      $results$score_mat[[5]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       83.66377
      ct2 83.66377  .      
      
      $results$score_mat[[6]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       78.56273
      ct3 78.56273  .      
      
      $results$score_mat[[7]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct1
      ct2  .       88.09299
      ct1 88.09299  .      
      
      $results$score_mat[[8]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       93.40608
      ct3 93.40608  .      
      
      $results$score_mat[[9]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       82.72415 90.81720
      ct2 82.72415  .       86.31766
      ct3 90.81720 86.31766  .      
      
      $results$score_mat[[10]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       83.05975 93.78308
      ct2 83.05975  .       84.29217
      ct3 93.78308 84.29217  .      
      
      $results$score_mat[[11]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       86.89631
      ct3 86.89631  .      
      
      $results$score_mat[[12]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       86.83025
      ct3 86.83025  .      
      
      $results$score_mat[[13]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       85.79258
      ct3 85.79258  .      
      
      $results$score_mat[[14]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       77.81642 94.86350
      ct2 77.81642  .       77.61492
      ct3 94.86350 77.61492  .      
      
      $results$score_mat[[15]]
      3 x 3 sparse Matrix of class "dgCMatrix"
                ct1      ct2       ct3
      ct1   .       93.40036 107.91847
      ct2  93.40036  .        92.25947
      ct3 107.91847 92.25947   .      
      
      $results$score_mat[[16]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       95.82514
      ct3 95.82514  .      
      
      $results$score_mat[[17]]
      3 x 3 sparse Matrix of class "dgCMatrix"
                ct1      ct2       ct3
      ct1   .       87.06648 106.26905
      ct2  87.06648  .        86.40401
      ct3 106.26905 86.40401   .      
      
      $results$score_mat[[18]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       81.29051 97.44648
      ct2 81.29051  .       82.02974
      ct3 97.44648 82.02974  .      
      
      $results$score_mat[[19]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       84.60325 98.82839
      ct2 84.60325  .       84.45520
      ct3 98.82839 84.45520  .      
      
      $results$score_mat[[20]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2     ct3
      ct1  .       83.32306 98.6882
      ct2 83.32306  .       81.4280
      ct3 98.68820 81.42800  .     
      
      $results$score_mat[[21]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       91.05789 98.84128
      ct2 91.05789  .       87.66583
      ct3 98.84128 87.66583  .      
      
      $results$score_mat[[22]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       86.98057 98.10091
      ct2 86.98057  .       83.19633
      ct3 98.10091 83.19633  .      
      
      $results$score_mat[[23]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       85.87614
      ct3 85.87614  .      
      
      $results$score_mat[[24]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       84.65839
      ct3 84.65839  .      
      
      $results$score_mat[[25]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1     ct2      ct3
      ct1   .      92.8357 104.2659
      ct2  92.8357  .       92.5843
      ct3 104.2659 92.5843   .     
      
      $results$score_mat[[26]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1  .       93.19411
      ct2 93.19411  .      
      
      $results$score_mat[[27]]
      3 x 3 sparse Matrix of class "dgCMatrix"
                ct1      ct2       ct3
      ct1   .       81.57711 101.08593
      ct2  81.57711  .        81.64407
      ct3 101.08593 81.64407   .      
      
      $results$score_mat[[28]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct1
      ct2  .       85.37977
      ct1 85.37977  .      
      
      $results$score_mat[[29]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct1
      ct2  .       95.80843
      ct1 95.80843  .      
      
      $results$score_mat[[30]]
      3 x 3 sparse Matrix of class "dgCMatrix"
                ct1      ct2       ct3
      ct1   .       85.76831 108.10766
      ct2  85.76831  .        85.84669
      ct3 108.10766 85.84669   .      
      
      $results$score_mat[[31]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       76.26876 85.86170
      ct2 76.26876  .       78.84341
      ct3 85.86170 78.84341  .      
      
      $results$score_mat[[32]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       80.72402
      ct3 80.72402  .      
      
      $results$score_mat[[33]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       77.63672 94.19535
      ct2 77.63672  .       76.70939
      ct3 94.19535 76.70939  .      
      
      $results$score_mat[[34]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       87.57368 96.69781
      ct2 87.57368  .       87.37717
      ct3 96.69781 87.37717  .      
      
      $results$score_mat[[35]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       83.34388
      ct3 83.34388  .      
      
      $results$score_mat[[36]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       83.41241
      ct3 83.41241  .      
      
      $results$score_mat[[37]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       75.16527 87.47198
      ct2 75.16527  .       72.81457
      ct3 87.47198 72.81457  .      
      
      $results$score_mat[[38]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       81.93842 98.08408
      ct2 81.93842  .       83.06477
      ct3 98.08408 83.06477  .      
      
      $results$score_mat[[39]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1     ct2      ct3
      ct1   .      92.5836 103.3154
      ct2  92.5836  .       91.6206
      ct3 103.3154 91.6206   .     
      
      $results$score_mat[[40]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       83.41115 91.37622
      ct2 83.41115  .       85.03068
      ct3 91.37622 85.03068  .      
      
      $results$score_mat[[41]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       74.57985 92.46630
      ct2 74.57985  .       73.85811
      ct3 92.46630 73.85811  .      
      
      $results$score_mat[[42]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       74.86778
      ct3 74.86778  .      
      
      $results$score_mat[[43]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       81.41284
      ct3 81.41284  .      
      
      $results$score_mat[[44]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       74.88362
      ct3 74.88362  .      
      
      $results$score_mat[[45]]
      3 x 3 sparse Matrix of class "dgCMatrix"
                ct1      ct2       ct3
      ct1   .       89.26128 105.87465
      ct2  89.26128  .        88.32533
      ct3 105.87465 88.32533   .      
      
      $results$score_mat[[46]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       85.30477
      ct3 85.30477  .      
      
      $results$score_mat[[47]]
      3 x 3 sparse Matrix of class "dgCMatrix"
                ct1      ct2       ct3
      ct1   .       91.58454 102.11577
      ct2  91.58454  .        89.58345
      ct3 102.11577 89.58345   .      
      
      $results$score_mat[[48]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       84.00775
      ct3 84.00775  .      
      
      $results$score_mat[[49]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       93.27039
      ct3 93.27039  .      
      
      $results$score_mat[[50]]
      3 x 3 sparse Matrix of class "dgCMatrix"
                ct1      ct2     ct3
      ct1   .       81.61255 100.848
      ct2  81.61255  .        81.375
      ct3 100.84803 81.37500   .    
      
      $results$score_mat[[51]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       87.24562 98.09252
      ct2 87.24562  .       89.47964
      ct3 98.09252 89.47964  .      
      
      $results$score_mat[[52]]
      3 x 3 sparse Matrix of class "dgCMatrix"
                ct1      ct2      ct3
      ct1   .       83.26689 103.2748
      ct2  83.26689  .        84.2701
      ct3 103.27479 84.27010   .     
      
      $results$score_mat[[53]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       85.15831
      ct3 85.15831  .      
      
      $results$score_mat[[54]]
      3 x 3 sparse Matrix of class "dgCMatrix"
                ct1      ct2       ct3
      ct1   .       91.76448 109.26272
      ct2  91.76448  .        89.59702
      ct3 109.26272 89.59702   .      
      
      $results$score_mat[[55]]
      3 x 3 sparse Matrix of class "dgCMatrix"
                ct1      ct2       ct3
      ct1   .       88.34557 107.72698
      ct2  88.34557  .        88.17059
      ct3 107.72698 88.17059   .      
      
      $results$score_mat[[56]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       80.12048 95.49637
      ct2 80.12048  .       78.11200
      ct3 95.49637 78.11200  .      
      
      $results$score_mat[[57]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       90.04854
      ct3 90.04854  .      
      
      $results$score_mat[[58]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       79.10136 94.20542
      ct2 79.10136  .       77.58583
      ct3 94.20542 77.58583  .      
      
      $results$score_mat[[59]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct2      ct3
      ct2  .       91.88562
      ct3 91.88562  .      
      
      $results$score_mat[[60]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1  .       86.06160 94.78006
      ct2 86.06160  .       86.53802
      ct3 94.78006 86.53802  .      
      
      
      $results$singlet_scores
      $results$singlet_scores[[1]]
            ct1       ct2       ct3 
      116.60803  84.05897 103.80835 
      
      $results$singlet_scores[[2]]
           ct2      ct3 
      78.43823 99.46502 
      
      $results$singlet_scores[[3]]
            ct1       ct2       ct3 
      105.40732  84.89371 100.96919 
      
      $results$singlet_scores[[4]]
           ct2      ct3 
       86.8811 110.6163 
      
      $results$singlet_scores[[5]]
           ct1      ct2 
      119.2648  84.0218 
      
      $results$singlet_scores[[6]]
           ct2      ct3 
      80.93143 98.45375 
      
      $results$singlet_scores[[7]]
            ct2       ct1 
       88.08262 137.85232 
      
      $results$singlet_scores[[8]]
            ct2       ct3 
       93.41932 122.76335 
      
      $results$singlet_scores[[9]]
           ct1      ct2      ct3 
      98.33210 89.39718 99.17900 
      
      $results$singlet_scores[[10]]
            ct1       ct2       ct3 
      105.27577  85.81187 101.32392 
      
      $results$singlet_scores[[11]]
            ct2       ct3 
       87.36762 116.25116 
      
      $results$singlet_scores[[12]]
            ct2       ct3 
       86.99708 114.35217 
      
      $results$singlet_scores[[13]]
            ct2       ct3 
       88.78554 106.74711 
      
      $results$singlet_scores[[14]]
            ct1       ct2       ct3 
      105.12840  78.31496  98.11032 
      
      $results$singlet_scores[[15]]
            ct1       ct2       ct3 
      127.52967  93.57965 108.52854 
      
      $results$singlet_scores[[16]]
            ct2       ct3 
       95.94325 114.96475 
      
      $results$singlet_scores[[17]]
            ct1       ct2       ct3 
      120.73599  87.42013 108.37887 
      
      $results$singlet_scores[[18]]
            ct1       ct2       ct3 
      104.95049  82.21039 104.31661 
      
      $results$singlet_scores[[19]]
            ct1       ct2       ct3 
      110.53796  86.37366 105.94709 
      
      $results$singlet_scores[[20]]
            ct1       ct2       ct3 
      113.30658  83.67327 101.73974 
      
      $results$singlet_scores[[21]]
            ct1       ct2       ct3 
      120.23311  91.21923  99.61337 
      
      $results$singlet_scores[[22]]
            ct1       ct2       ct3 
      115.20454  87.59551 100.51963 
      
      $results$singlet_scores[[23]]
           ct2      ct3 
      89.41799 96.32070 
      
      $results$singlet_scores[[24]]
            ct2       ct3 
       84.69203 110.24673 
      
      $results$singlet_scores[[25]]
            ct1       ct2       ct3 
      117.62281  94.21244 107.97921 
      
      $results$singlet_scores[[26]]
            ct1       ct2 
      126.12768  93.59475 
      
      $results$singlet_scores[[27]]
            ct1       ct2       ct3 
      113.19253  82.22397 105.75370 
      
      $results$singlet_scores[[28]]
            ct2       ct1 
       85.37526 122.91413 
      
      $results$singlet_scores[[29]]
            ct2       ct1 
       95.80152 132.09242 
      
      $results$singlet_scores[[30]]
            ct1       ct2       ct3 
      117.51692  85.99577 112.13548 
      
      $results$singlet_scores[[31]]
           ct1      ct2      ct3 
      91.49087 80.72223 96.67712 
      
      $results$singlet_scores[[32]]
            ct2       ct3 
       82.32157 103.79951 
      
      $results$singlet_scores[[33]]
            ct1       ct2       ct3 
      106.29250  78.06979  98.56111 
      
      $results$singlet_scores[[34]]
            ct1       ct2       ct3 
      110.62936  90.08926 101.16685 
      
      $results$singlet_scores[[35]]
            ct2       ct3 
       84.54531 107.98513 
      
      $results$singlet_scores[[36]]
            ct2       ct3 
       86.04219 104.25217 
      
      $results$singlet_scores[[37]]
           ct1      ct2      ct3 
      98.93560 76.13738 90.09511 
      
      $results$singlet_scores[[38]]
            ct1       ct2       ct3 
      106.80968  83.79817 104.49554 
      
      $results$singlet_scores[[39]]
            ct1       ct2       ct3 
      122.43588  93.37356 105.71892 
      
      $results$singlet_scores[[40]]
            ct1       ct2       ct3 
      101.69678  87.68427  97.85324 
      
      $results$singlet_scores[[41]]
            ct1       ct2       ct3 
      104.05106  74.68748  97.14212 
      
      $results$singlet_scores[[42]]
            ct2       ct3 
       75.35087 101.70092 
      
      $results$singlet_scores[[43]]
            ct2       ct3 
       83.40276 103.45705 
      
      $results$singlet_scores[[44]]
            ct2       ct3 
       75.64891 101.03862 
      
      $results$singlet_scores[[45]]
            ct1       ct2       ct3 
      119.22228  89.73233 109.19879 
      
      $results$singlet_scores[[46]]
            ct2       ct3 
       86.58594 108.88409 
      
      $results$singlet_scores[[47]]
            ct1       ct2       ct3 
      118.65946  92.05625 104.67688 
      
      $results$singlet_scores[[48]]
            ct2       ct3 
       85.32326 108.13088 
      
      $results$singlet_scores[[49]]
            ct2       ct3 
       94.43392 112.20225 
      
      $results$singlet_scores[[50]]
            ct1       ct2       ct3 
      112.07285  82.31682 107.02849 
      
      $results$singlet_scores[[51]]
            ct1       ct2       ct3 
      107.99387  91.22234 106.38760 
      
      $results$singlet_scores[[52]]
            ct1       ct2       ct3 
      111.55272  84.72285 112.09941 
      
      $results$singlet_scores[[53]]
            ct2       ct3 
       85.82256 113.42048 
      
      $results$singlet_scores[[54]]
            ct1       ct2       ct3 
      129.42403  91.88493 111.18360 
      
      $results$singlet_scores[[55]]
            ct1       ct2       ct3 
      118.56444  88.86947 113.73652 
      
      $results$singlet_scores[[56]]
            ct1       ct2       ct3 
      111.48697  80.35800  98.69788 
      
      $results$singlet_scores[[57]]
            ct2       ct3 
       90.16006 121.46669 
      
      $results$singlet_scores[[58]]
            ct1       ct2       ct3 
      106.02488  79.91884  97.89147 
      
      $results$singlet_scores[[59]]
            ct2       ct3 
       91.89213 121.70939 
      
      $results$singlet_scores[[60]]
            ct1       ct2       ct3 
      106.73000  87.51126 100.40861 
      
      
      

