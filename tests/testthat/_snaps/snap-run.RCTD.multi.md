# run.RCTD.multi

    Code
      result <- run.RCTD(rctd, doublet_mode = "multi")
    Message
      fitBulk: decomposing bulk
      chooseSigma: using initial Q_mat with sigma =  1
      Likelihood value: 10932.4533027045
      Sigma value:  0.84
      Likelihood value: 10614.3463472575
      Sigma value:  0.69
      Likelihood value: 10276.3844451196
      Sigma value:  0.61
      Likelihood value: 10078.6081859522
      Sigma value:  0.53
      Likelihood value: 9868.72929983566
      Sigma value:  0.45
      Likelihood value: 9649.16221189914
      Sigma value:  0.37
      Likelihood value: 9427.59224026114
      Sigma value:  0.29
      Likelihood value: 9225.1168742563
      Sigma value:  0.21
    Code
      list(cell_type_info = result@cell_type_info$renorm, de_results = result@
        de_results, results = result@results)
    Output
      $cell_type_info
      $cell_type_info[[1]]
                       ct1          ct2          ct3
      Gene27  4.212007e-03 2.704702e-03 1.222245e-03
      Gene34  9.142293e-04 3.817984e-04 3.434742e-04
      Gene129 4.791637e-03 2.162345e-03 1.319981e-03
      Gene213 5.661344e-04 2.945168e-04 3.252868e-04
      Gene298 2.439535e-03 8.029930e-04 1.800355e-03
      Gene309 5.688440e-04 4.993064e-04 1.565832e-04
      Gene339 6.147150e-03 2.281358e-03 2.718444e-03
      Gene362 7.958073e-04 4.887846e-04 3.836615e-04
      Gene380 1.974748e-04 1.362669e-04 9.759300e-05
      Gene389 1.434780e-03 6.553714e-04 1.074896e-03
      Gene396 4.170837e-03 2.078908e-03 1.790058e-03
      Gene400 4.201116e-03 2.435807e-03 2.338459e-03
      Gene406 2.921890e-03 1.492187e-03 1.324961e-03
      Gene413 3.061518e-04 1.673056e-04 2.029383e-04
      Gene431 2.646379e-03 1.302850e-03 1.069037e-03
      Gene447 4.942479e-03 3.102862e-03 1.921913e-03
      Gene454 2.422566e-04 6.557928e-05 1.093461e-04
      Gene465 3.465127e-04 2.475450e-04 1.092333e-04
      Gene7   1.019542e-03 1.496140e-03 7.107201e-04
      Gene14  3.004346e-04 7.306460e-04 4.058668e-04
      Gene20  4.991612e-05 1.225148e-04 8.358241e-05
      Gene37  6.567060e-04 1.239937e-03 4.009300e-04
      Gene61  2.937602e-04 5.614037e-04 1.729763e-04
      Gene68  8.810957e-04 2.486910e-03 7.946202e-04
      Gene72  3.074300e-04 5.212536e-04 1.409692e-04
      Gene73  4.013365e-04 9.553599e-04 4.471589e-04
      Gene91  8.561697e-04 1.640280e-03 8.496644e-04
      Gene115 1.331927e-04 2.184140e-04 1.292631e-04
      Gene172 1.405973e-03 4.953922e-03 1.328126e-03
      Gene189 1.999911e-03 5.656126e-03 2.909664e-03
      Gene217 8.284529e-05 1.638680e-04 8.156909e-05
      Gene221 2.968718e-04 4.267625e-04 1.269371e-04
      Gene232 1.577567e-03 4.163687e-03 1.424194e-03
      Gene240 1.279402e-03 2.297452e-03 1.164186e-03
      Gene245 1.848077e-03 4.250402e-03 1.517949e-03
      Gene247 1.627425e-04 2.748486e-04 1.336893e-04
      Gene248 2.781412e-04 4.862062e-04 2.616901e-04
      Gene338 2.251180e-03 3.384201e-03 1.394080e-03
      Gene381 7.493326e-05 2.108562e-04 8.490687e-05
      Gene387 4.665913e-04 7.754062e-04 4.587748e-04
      Gene420 3.305255e-04 1.401647e-03 1.112220e-03
      Gene428 1.216615e-03 1.334786e-03 3.552678e-04
      Gene468 2.182269e-03 3.896759e-03 2.099992e-03
      Gene56  9.940486e-05 1.434616e-04 3.673514e-04
      Gene57  6.097620e-04 4.790134e-04 1.049048e-03
      Gene64  8.912699e-04 6.229318e-04 1.452313e-03
      Gene137 1.018877e-03 1.065565e-03 3.415108e-03
      Gene169 6.998978e-04 1.230858e-03 1.818913e-03
      Gene170 1.336590e-03 1.303949e-03 2.955510e-03
      Gene178 7.393267e-05 6.043927e-05 1.777362e-04
      Gene239 2.929177e-02 1.662179e-02 4.705598e-02
      Gene282 1.728237e-04 1.704342e-04 2.871575e-04
      Gene295 3.506082e-04 3.921595e-04 1.346606e-03
      Gene319 2.289687e-03 2.530329e-03 5.384317e-03
      Gene320 8.795655e-04 7.516488e-04 1.419269e-03
      Gene326 5.933356e-04 5.949897e-04 1.279614e-03
      Gene328 1.342676e-04 1.521628e-04 2.574732e-04
      Gene477 9.831397e-04 1.376411e-03 2.259035e-03
      Gene484 3.817142e-04 3.977850e-04 7.286164e-04
      Gene490 9.126788e-04 8.912097e-04 2.094336e-03
      
      $cell_type_info[[2]]
      [1] "ct1" "ct2" "ct3"
      
      $cell_type_info[[3]]
      [1] 3
      
      
      $de_results
      list()
      
      $results
      $results[[1]]
      $results[[1]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.0355272365 0.9606228815 
      
      $results[[1]]$cell_type_list
      [1] "ct3"
      
      $results[[1]]$conf_list
       ct3 
      TRUE 
      
      $results[[1]]$sub_weights
      [1] 1
      
      $results[[1]]$min_score
      [1] 94.41536
      
      $results[[1]]$conv_all
      [1] TRUE
      
      $results[[1]]$conv_sub
      [1] TRUE
      
      
      $results[[2]]
      $results[[2]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.9771176687 0.0003799632 
      
      $results[[2]]$cell_type_list
      [1] "ct2"
      
      $results[[2]]$conf_list
       ct2 
      TRUE 
      
      $results[[2]]$sub_weights
      [1] 1
      
      $results[[2]]$min_score
      [1] 108.3256
      
      $results[[2]]$conv_all
      [1] TRUE
      
      $results[[2]]$conv_sub
      [1] TRUE
      
      
      $results[[3]]
      $results[[3]]$all_weights
             ct1        ct2        ct3 
      0.08390311 0.86344861 0.09985016 
      
      $results[[3]]$cell_type_list
      [1] "ct2"
      
      $results[[3]]$conf_list
       ct2 
      TRUE 
      
      $results[[3]]$sub_weights
      [1] 1
      
      $results[[3]]$min_score
      [1] 106.3178
      
      $results[[3]]$conv_all
      [1] TRUE
      
      $results[[3]]$conv_sub
      [1] TRUE
      
      
      $results[[4]]
      $results[[4]]$all_weights
               ct1          ct2          ct3 
      0.9301949460 0.0445732992 0.0003799632 
      
      $results[[4]]$cell_type_list
      [1] "ct1"
      
      $results[[4]]$conf_list
       ct1 
      TRUE 
      
      $results[[4]]$sub_weights
      [1] 1
      
      $results[[4]]$min_score
      [1] 104.0843
      
      $results[[4]]$conv_all
      [1] TRUE
      
      $results[[4]]$conv_sub
      [1] TRUE
      
      
      $results[[5]]
      $results[[5]]$all_weights
               ct1          ct2          ct3 
      0.0450271742 0.9107228218 0.0003799632 
      
      $results[[5]]$cell_type_list
      [1] "ct2"
      
      $results[[5]]$conf_list
       ct2 
      TRUE 
      
      $results[[5]]$sub_weights
      [1] 1
      
      $results[[5]]$min_score
      [1] 103.5734
      
      $results[[5]]$conv_all
      [1] TRUE
      
      $results[[5]]$conv_sub
      [1] TRUE
      
      
      $results[[6]]
      $results[[6]]$all_weights
               ct1          ct2          ct3 
      0.0089576066 0.8582547843 0.0003799632 
      
      $results[[6]]$cell_type_list
      [1] "ct2"
      
      $results[[6]]$conf_list
       ct2 
      TRUE 
      
      $results[[6]]$sub_weights
      [1] 1
      
      $results[[6]]$min_score
      [1] 104.9998
      
      $results[[6]]$conv_all
      [1] TRUE
      
      $results[[6]]$conv_sub
      [1] TRUE
      
      
      $results[[7]]
      $results[[7]]$all_weights
               ct1          ct2          ct3 
      0.9210585113 0.0448925034 0.0003799632 
      
      $results[[7]]$cell_type_list
      [1] "ct1"
      
      $results[[7]]$conf_list
       ct1 
      TRUE 
      
      $results[[7]]$sub_weights
      [1] 1
      
      $results[[7]]$min_score
      [1] 105.1676
      
      $results[[7]]$conv_all
      [1] TRUE
      
      $results[[7]]$conv_sub
      [1] TRUE
      
      
      $results[[8]]
      $results[[8]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.0003799632 0.9194141012 
      
      $results[[8]]$cell_type_list
      [1] "ct3"
      
      $results[[8]]$conf_list
       ct3 
      TRUE 
      
      $results[[8]]$sub_weights
      [1] 1
      
      $results[[8]]$min_score
      [1] 100.0033
      
      $results[[8]]$conv_all
      [1] TRUE
      
      $results[[8]]$conv_sub
      [1] TRUE
      
      
      $results[[9]]
      $results[[9]]$all_weights
               ct1          ct2          ct3 
      0.9786782769 0.0003799632 0.0003799632 
      
      $results[[9]]$cell_type_list
      [1] "ct1"
      
      $results[[9]]$conf_list
       ct1 
      TRUE 
      
      $results[[9]]$sub_weights
      [1] 1
      
      $results[[9]]$min_score
      [1] 107.0541
      
      $results[[9]]$conv_all
      [1] TRUE
      
      $results[[9]]$conv_sub
      [1] TRUE
      
      
      $results[[10]]
      $results[[10]]$all_weights
               ct1          ct2          ct3 
      1.0255416484 0.0071930253 0.0003799632 
      
      $results[[10]]$cell_type_list
      [1] "ct1"
      
      $results[[10]]$conf_list
       ct1 
      TRUE 
      
      $results[[10]]$sub_weights
      [1] 1
      
      $results[[10]]$min_score
      [1] 97.34932
      
      $results[[10]]$conv_all
      [1] TRUE
      
      $results[[10]]$conv_sub
      [1] TRUE
      
      
      $results[[11]]
      $results[[11]]$all_weights
               ct1          ct2          ct3 
      0.8977432586 0.0005428045 0.0353188410 
      
      $results[[11]]$cell_type_list
      [1] "ct1"
      
      $results[[11]]$conf_list
       ct1 
      TRUE 
      
      $results[[11]]$sub_weights
      [1] 1
      
      $results[[11]]$min_score
      [1] 101.0316
      
      $results[[11]]$conv_all
      [1] TRUE
      
      $results[[11]]$conv_sub
      [1] TRUE
      
      
      $results[[12]]
      $results[[12]]$all_weights
               ct1          ct2          ct3 
      0.1151588352 0.8072471911 0.0005428045 
      
      $results[[12]]$cell_type_list
      [1] "ct2"
      
      $results[[12]]$conf_list
       ct2 
      TRUE 
      
      $results[[12]]$sub_weights
      [1] 1
      
      $results[[12]]$min_score
      [1] 108.2211
      
      $results[[12]]$conv_all
      [1] TRUE
      
      $results[[12]]$conv_sub
      [1] TRUE
      
      
      $results[[13]]
      $results[[13]]$all_weights
             ct1        ct2        ct3 
      0.91950845 0.01066385 0.07873080 
      
      $results[[13]]$cell_type_list
      [1] "ct1"
      
      $results[[13]]$conf_list
       ct1 
      TRUE 
      
      $results[[13]]$sub_weights
      [1] 1
      
      $results[[13]]$min_score
      [1] 99.8187
      
      $results[[13]]$conv_all
      [1] TRUE
      
      $results[[13]]$conv_sub
      [1] TRUE
      
      
      $results[[14]]
      $results[[14]]$all_weights
             ct1        ct2        ct3 
      0.83638245 0.03100581 0.03191495 
      
      $results[[14]]$cell_type_list
      [1] "ct1"
      
      $results[[14]]$conf_list
       ct1 
      TRUE 
      
      $results[[14]]$sub_weights
      [1] 1
      
      $results[[14]]$min_score
      [1] 94.01733
      
      $results[[14]]$conv_all
      [1] TRUE
      
      $results[[14]]$conv_sub
      [1] TRUE
      
      
      $results[[15]]
      $results[[15]]$all_weights
               ct1          ct2          ct3 
      0.0275044938 0.0003799632 0.9583410529 
      
      $results[[15]]$cell_type_list
      [1] "ct3"
      
      $results[[15]]$conf_list
       ct3 
      TRUE 
      
      $results[[15]]$sub_weights
      [1] 1
      
      $results[[15]]$min_score
      [1] 93.14185
      
      $results[[15]]$conv_all
      [1] TRUE
      
      $results[[15]]$conv_sub
      [1] TRUE
      
      
      $results[[16]]
      $results[[16]]$all_weights
               ct1          ct2          ct3 
      0.0004356480 0.9650566165 0.0003799632 
      
      $results[[16]]$cell_type_list
      [1] "ct2"
      
      $results[[16]]$conf_list
       ct2 
      TRUE 
      
      $results[[16]]$sub_weights
      [1] 1
      
      $results[[16]]$min_score
      [1] 105.6173
      
      $results[[16]]$conv_all
      [1] TRUE
      
      $results[[16]]$conv_sub
      [1] TRUE
      
      
      $results[[17]]
      $results[[17]]$all_weights
               ct1          ct2          ct3 
      0.0407507784 0.9539792332 0.0003799632 
      
      $results[[17]]$cell_type_list
      [1] "ct2"
      
      $results[[17]]$conf_list
       ct2 
      TRUE 
      
      $results[[17]]$sub_weights
      [1] 1
      
      $results[[17]]$min_score
      [1] 101.8677
      
      $results[[17]]$conv_all
      [1] TRUE
      
      $results[[17]]$conv_sub
      [1] TRUE
      
      
      $results[[18]]
      $results[[18]]$all_weights
             ct1        ct2        ct3 
      0.03230206 0.93667436 0.03438465 
      
      $results[[18]]$cell_type_list
      [1] "ct2"
      
      $results[[18]]$conf_list
       ct2 
      TRUE 
      
      $results[[18]]$sub_weights
      [1] 1
      
      $results[[18]]$min_score
      [1] 102.8016
      
      $results[[18]]$conv_all
      [1] TRUE
      
      $results[[18]]$conv_sub
      [1] TRUE
      
      
      $results[[19]]
      $results[[19]]$all_weights
               ct1          ct2          ct3 
      0.9781029784 0.0003799632 0.0227597789 
      
      $results[[19]]$cell_type_list
      [1] "ct1"
      
      $results[[19]]$conf_list
       ct1 
      TRUE 
      
      $results[[19]]$sub_weights
      [1] 1
      
      $results[[19]]$min_score
      [1] 107.4282
      
      $results[[19]]$conv_all
      [1] TRUE
      
      $results[[19]]$conv_sub
      [1] TRUE
      
      
      $results[[20]]
      $results[[20]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.0614871026 0.9178755777 
      
      $results[[20]]$cell_type_list
      [1] "ct3"
      
      $results[[20]]$conf_list
       ct3 
      TRUE 
      
      $results[[20]]$sub_weights
      [1] 1
      
      $results[[20]]$min_score
      [1] 98.2799
      
      $results[[20]]$conv_all
      [1] TRUE
      
      $results[[20]]$conv_sub
      [1] TRUE
      
      
      $results[[21]]
      $results[[21]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.9404140266 0.0123423301 
      
      $results[[21]]$cell_type_list
      [1] "ct2"
      
      $results[[21]]$conf_list
       ct2 
      TRUE 
      
      $results[[21]]$sub_weights
      [1] 1
      
      $results[[21]]$min_score
      [1] 114.6563
      
      $results[[21]]$conv_all
      [1] TRUE
      
      $results[[21]]$conv_sub
      [1] TRUE
      
      
      $results[[22]]
      $results[[22]]$all_weights
               ct1          ct2          ct3 
      0.9117067976 0.0003799632 0.0182143279 
      
      $results[[22]]$cell_type_list
      [1] "ct1"
      
      $results[[22]]$conf_list
       ct1 
      TRUE 
      
      $results[[22]]$sub_weights
      [1] 1
      
      $results[[22]]$min_score
      [1] 101.9243
      
      $results[[22]]$conv_all
      [1] TRUE
      
      $results[[22]]$conv_sub
      [1] TRUE
      
      
      $results[[23]]
      $results[[23]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 1.0246169190 0.0003799632 
      
      $results[[23]]$cell_type_list
      [1] "ct2"
      
      $results[[23]]$conf_list
       ct2 
      TRUE 
      
      $results[[23]]$sub_weights
      [1] 1
      
      $results[[23]]$min_score
      [1] 108.3043
      
      $results[[23]]$conv_all
      [1] TRUE
      
      $results[[23]]$conv_sub
      [1] TRUE
      
      
      $results[[24]]
      $results[[24]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.9654212796 0.0003799632 
      
      $results[[24]]$cell_type_list
      [1] "ct2"
      
      $results[[24]]$conf_list
       ct2 
      TRUE 
      
      $results[[24]]$sub_weights
      [1] 1
      
      $results[[24]]$min_score
      [1] 102.5967
      
      $results[[24]]$conv_all
      [1] TRUE
      
      $results[[24]]$conv_sub
      [1] TRUE
      
      
      $results[[25]]
      $results[[25]]$all_weights
               ct1          ct2          ct3 
      0.8595667864 0.0697651100 0.0003799632 
      
      $results[[25]]$cell_type_list
      [1] "ct1"
      
      $results[[25]]$conf_list
       ct1 
      TRUE 
      
      $results[[25]]$sub_weights
      [1] 1
      
      $results[[25]]$min_score
      [1] 94.44101
      
      $results[[25]]$conv_all
      [1] TRUE
      
      $results[[25]]$conv_sub
      [1] TRUE
      
      
      $results[[26]]
      $results[[26]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.0195375343 0.9138509137 
      
      $results[[26]]$cell_type_list
      [1] "ct3"
      
      $results[[26]]$conf_list
       ct3 
      TRUE 
      
      $results[[26]]$sub_weights
      [1] 1
      
      $results[[26]]$min_score
      [1] 103.3718
      
      $results[[26]]$conv_all
      [1] TRUE
      
      $results[[26]]$conv_sub
      [1] TRUE
      
      
      $results[[27]]
      $results[[27]]$all_weights
               ct1          ct2          ct3 
      0.0038059279 0.0003799632 0.9753924796 
      
      $results[[27]]$cell_type_list
      [1] "ct3"
      
      $results[[27]]$conf_list
       ct3 
      TRUE 
      
      $results[[27]]$sub_weights
      [1] 1
      
      $results[[27]]$min_score
      [1] 93.94201
      
      $results[[27]]$conv_all
      [1] TRUE
      
      $results[[27]]$conv_sub
      [1] TRUE
      
      
      $results[[28]]
      $results[[28]]$all_weights
               ct1          ct2          ct3 
      0.0004068036 1.0052320611 0.0152511219 
      
      $results[[28]]$cell_type_list
      [1] "ct2"
      
      $results[[28]]$conf_list
       ct2 
      TRUE 
      
      $results[[28]]$sub_weights
      [1] 1
      
      $results[[28]]$min_score
      [1] 102.0366
      
      $results[[28]]$conv_all
      [1] TRUE
      
      $results[[28]]$conv_sub
      [1] TRUE
      
      
      $results[[29]]
      $results[[29]]$all_weights
               ct1          ct2          ct3 
      0.0120255836 1.0221349430 0.0003799632 
      
      $results[[29]]$cell_type_list
      [1] "ct2"
      
      $results[[29]]$conf_list
       ct2 
      TRUE 
      
      $results[[29]]$sub_weights
      [1] 1
      
      $results[[29]]$min_score
      [1] 107.1542
      
      $results[[29]]$conv_all
      [1] TRUE
      
      $results[[29]]$conv_sub
      [1] TRUE
      
      
      $results[[30]]
      $results[[30]]$all_weights
               ct1          ct2          ct3 
      0.9144903993 0.0003799632 0.0524050410 
      
      $results[[30]]$cell_type_list
      [1] "ct1"
      
      $results[[30]]$conf_list
       ct1 
      TRUE 
      
      $results[[30]]$sub_weights
      [1] 1
      
      $results[[30]]$min_score
      [1] 104.4995
      
      $results[[30]]$conv_all
      [1] TRUE
      
      $results[[30]]$conv_sub
      [1] TRUE
      
      
      $results[[31]]
      $results[[31]]$all_weights
               ct1          ct2          ct3 
      1.0247512221 0.0181374594 0.0003799632 
      
      $results[[31]]$cell_type_list
      [1] "ct1"
      
      $results[[31]]$conf_list
       ct1 
      TRUE 
      
      $results[[31]]$sub_weights
      [1] 1
      
      $results[[31]]$min_score
      [1] 99.75022
      
      $results[[31]]$conv_all
      [1] TRUE
      
      $results[[31]]$conv_sub
      [1] TRUE
      
      
      $results[[32]]
      $results[[32]]$all_weights
             ct1        ct2        ct3 
      0.03892927 0.89321847 0.06419988 
      
      $results[[32]]$cell_type_list
      [1] "ct2"
      
      $results[[32]]$conf_list
       ct2 
      TRUE 
      
      $results[[32]]$sub_weights
      [1] 1
      
      $results[[32]]$min_score
      [1] 102.5305
      
      $results[[32]]$conv_all
      [1] TRUE
      
      $results[[32]]$conv_sub
      [1] TRUE
      
      
      $results[[33]]
      $results[[33]]$all_weights
               ct1          ct2          ct3 
      0.0005428045 0.8746726642 0.0491984079 
      
      $results[[33]]$cell_type_list
      [1] "ct2"
      
      $results[[33]]$conf_list
       ct2 
      TRUE 
      
      $results[[33]]$sub_weights
      [1] 1
      
      $results[[33]]$min_score
      [1] 123.8485
      
      $results[[33]]$conv_all
      [1] TRUE
      
      $results[[33]]$conv_sub
      [1] TRUE
      
      
      $results[[34]]
      $results[[34]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.0003799632 0.9574006444 
      
      $results[[34]]$cell_type_list
      [1] "ct3"
      
      $results[[34]]$conf_list
       ct3 
      TRUE 
      
      $results[[34]]$sub_weights
      [1] 1
      
      $results[[34]]$min_score
      [1] 87.88787
      
      $results[[34]]$conv_all
      [1] TRUE
      
      $results[[34]]$conv_sub
      [1] TRUE
      
      
      $results[[35]]
      $results[[35]]$all_weights
             ct1        ct2        ct3 
      0.01048219 0.11216534 0.82123741 
      
      $results[[35]]$cell_type_list
      [1] "ct3"
      
      $results[[35]]$conf_list
       ct3 
      TRUE 
      
      $results[[35]]$sub_weights
      [1] 1
      
      $results[[35]]$min_score
      [1] 103.658
      
      $results[[35]]$conv_all
      [1] TRUE
      
      $results[[35]]$conv_sub
      [1] TRUE
      
      
      $results[[36]]
      $results[[36]]$all_weights
             ct1        ct2        ct3 
      0.03189478 0.99133773 0.04299013 
      
      $results[[36]]$cell_type_list
      [1] "ct2"
      
      $results[[36]]$conf_list
       ct2 
      TRUE 
      
      $results[[36]]$sub_weights
      [1] 1
      
      $results[[36]]$min_score
      [1] 107.854
      
      $results[[36]]$conv_all
      [1] TRUE
      
      $results[[36]]$conv_sub
      [1] TRUE
      
      
      $results[[37]]
      $results[[37]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.0475428479 0.9087714373 
      
      $results[[37]]$cell_type_list
      [1] "ct3"
      
      $results[[37]]$conf_list
       ct3 
      TRUE 
      
      $results[[37]]$sub_weights
      [1] 1
      
      $results[[37]]$min_score
      [1] 93.14293
      
      $results[[37]]$conv_all
      [1] TRUE
      
      $results[[37]]$conv_sub
      [1] TRUE
      
      
      $results[[38]]
      $results[[38]]$all_weights
             ct1        ct2        ct3 
      0.02119584 0.03103566 0.92744795 
      
      $results[[38]]$cell_type_list
      [1] "ct3"
      
      $results[[38]]$conf_list
       ct3 
      TRUE 
      
      $results[[38]]$sub_weights
      [1] 1
      
      $results[[38]]$min_score
      [1] 101.0598
      
      $results[[38]]$conv_all
      [1] TRUE
      
      $results[[38]]$conv_sub
      [1] TRUE
      
      
      $results[[39]]
      $results[[39]]$all_weights
               ct1          ct2          ct3 
      0.8434729826 0.0369746759 0.0003799632 
      
      $results[[39]]$cell_type_list
      [1] "ct1"
      
      $results[[39]]$conf_list
       ct1 
      TRUE 
      
      $results[[39]]$sub_weights
      [1] 1
      
      $results[[39]]$min_score
      [1] 97.83303
      
      $results[[39]]$conv_all
      [1] TRUE
      
      $results[[39]]$conv_sub
      [1] TRUE
      
      
      $results[[40]]
      $results[[40]]$all_weights
               ct1          ct2          ct3 
      0.9058541098 0.0525779088 0.0003799632 
      
      $results[[40]]$cell_type_list
      [1] "ct1"
      
      $results[[40]]$conf_list
       ct1 
      TRUE 
      
      $results[[40]]$sub_weights
      [1] 1
      
      $results[[40]]$min_score
      [1] 102.7055
      
      $results[[40]]$conv_all
      [1] TRUE
      
      $results[[40]]$conv_sub
      [1] TRUE
      
      
      $results[[41]]
      $results[[41]]$all_weights
               ct1          ct2          ct3 
      0.9407750600 0.0561225854 0.0003799632 
      
      $results[[41]]$cell_type_list
      [1] "ct1"
      
      $results[[41]]$conf_list
       ct1 
      TRUE 
      
      $results[[41]]$sub_weights
      [1] 1
      
      $results[[41]]$min_score
      [1] 101.2002
      
      $results[[41]]$conv_all
      [1] TRUE
      
      $results[[41]]$conv_sub
      [1] TRUE
      
      
      $results[[42]]
      $results[[42]]$all_weights
             ct1        ct2        ct3 
      0.95960354 0.02318128 0.02113631 
      
      $results[[42]]$cell_type_list
      [1] "ct1"
      
      $results[[42]]$conf_list
       ct1 
      TRUE 
      
      $results[[42]]$sub_weights
      [1] 1
      
      $results[[42]]$min_score
      [1] 118.7164
      
      $results[[42]]$conv_all
      [1] TRUE
      
      $results[[42]]$conv_sub
      [1] TRUE
      
      
      $results[[43]]
      $results[[43]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.0003799632 0.9740111449 
      
      $results[[43]]$cell_type_list
      [1] "ct3"
      
      $results[[43]]$conf_list
       ct3 
      TRUE 
      
      $results[[43]]$sub_weights
      [1] 1
      
      $results[[43]]$min_score
      [1] 98.91921
      
      $results[[43]]$conv_all
      [1] TRUE
      
      $results[[43]]$conv_sub
      [1] TRUE
      
      
      $results[[44]]
      $results[[44]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.0003799632 0.9055544644 
      
      $results[[44]]$cell_type_list
      [1] "ct3"
      
      $results[[44]]$conf_list
       ct3 
      TRUE 
      
      $results[[44]]$sub_weights
      [1] 1
      
      $results[[44]]$min_score
      [1] 98.20983
      
      $results[[44]]$conv_all
      [1] TRUE
      
      $results[[44]]$conv_sub
      [1] TRUE
      
      
      $results[[45]]
      $results[[45]]$all_weights
               ct1          ct2          ct3 
      0.9933338893 0.0301673839 0.0003799632 
      
      $results[[45]]$cell_type_list
      [1] "ct1"
      
      $results[[45]]$conf_list
       ct1 
      TRUE 
      
      $results[[45]]$sub_weights
      [1] 1
      
      $results[[45]]$min_score
      [1] 96.24511
      
      $results[[45]]$conv_all
      [1] TRUE
      
      $results[[45]]$conv_sub
      [1] TRUE
      
      
      $results[[46]]
      $results[[46]]$all_weights
             ct1        ct2        ct3 
      0.96493310 0.03615009 0.03428789 
      
      $results[[46]]$cell_type_list
      [1] "ct1"
      
      $results[[46]]$conf_list
       ct1 
      TRUE 
      
      $results[[46]]$sub_weights
      [1] 1
      
      $results[[46]]$min_score
      [1] 101.3598
      
      $results[[46]]$conv_all
      [1] TRUE
      
      $results[[46]]$conv_sub
      [1] TRUE
      
      
      $results[[47]]
      $results[[47]]$all_weights
             ct1        ct2        ct3 
      0.84815808 0.13083294 0.05871891 
      
      $results[[47]]$cell_type_list
      [1] "ct1"
      
      $results[[47]]$conf_list
       ct1 
      TRUE 
      
      $results[[47]]$sub_weights
      [1] 1
      
      $results[[47]]$min_score
      [1] 104.4004
      
      $results[[47]]$conv_all
      [1] TRUE
      
      $results[[47]]$conv_sub
      [1] TRUE
      
      
      $results[[48]]
      $results[[48]]$all_weights
              ct1         ct2         ct3 
      0.063238660 0.852319558 0.009666735 
      
      $results[[48]]$cell_type_list
      [1] "ct2"
      
      $results[[48]]$conf_list
       ct2 
      TRUE 
      
      $results[[48]]$sub_weights
      [1] 1
      
      $results[[48]]$min_score
      [1] 103.9643
      
      $results[[48]]$conv_all
      [1] TRUE
      
      $results[[48]]$conv_sub
      [1] TRUE
      
      
      $results[[49]]
      $results[[49]]$all_weights
               ct1          ct2          ct3 
      0.1378090510 0.8233981583 0.0005428045 
      
      $results[[49]]$cell_type_list
      [1] "ct2"
      
      $results[[49]]$conf_list
       ct2 
      TRUE 
      
      $results[[49]]$sub_weights
      [1] 1
      
      $results[[49]]$min_score
      [1] 99.73916
      
      $results[[49]]$conv_all
      [1] TRUE
      
      $results[[49]]$conv_sub
      [1] TRUE
      
      
      $results[[50]]
      $results[[50]]$all_weights
               ct1          ct2          ct3 
      0.9312415375 0.0203746587 0.0003799632 
      
      $results[[50]]$cell_type_list
      [1] "ct1"
      
      $results[[50]]$conf_list
       ct1 
      TRUE 
      
      $results[[50]]$sub_weights
      [1] 1
      
      $results[[50]]$min_score
      [1] 95.45347
      
      $results[[50]]$conv_all
      [1] TRUE
      
      $results[[50]]$conv_sub
      [1] TRUE
      
      
      $results[[51]]
      $results[[51]]$all_weights
             ct1        ct2        ct3 
      0.05367838 0.06745807 0.81859670 
      
      $results[[51]]$cell_type_list
      [1] "ct3"
      
      $results[[51]]$conf_list
       ct3 
      TRUE 
      
      $results[[51]]$sub_weights
      [1] 1
      
      $results[[51]]$min_score
      [1] 111.9236
      
      $results[[51]]$conv_all
      [1] TRUE
      
      $results[[51]]$conv_sub
      [1] TRUE
      
      
      $results[[52]]
      $results[[52]]$all_weights
               ct1          ct2          ct3 
      0.9670922738 0.0003799632 0.0003799632 
      
      $results[[52]]$cell_type_list
      [1] "ct1"
      
      $results[[52]]$conf_list
       ct1 
      TRUE 
      
      $results[[52]]$sub_weights
      [1] 1
      
      $results[[52]]$min_score
      [1] 109.572
      
      $results[[52]]$conv_all
      [1] TRUE
      
      $results[[52]]$conv_sub
      [1] TRUE
      
      
      $results[[53]]
      $results[[53]]$all_weights
               ct1          ct2          ct3 
      1.0342514147 0.0005428045 0.0633834257 
      
      $results[[53]]$cell_type_list
      [1] "ct1"
      
      $results[[53]]$conf_list
       ct1 
      TRUE 
      
      $results[[53]]$sub_weights
      [1] 1
      
      $results[[53]]$min_score
      [1] 97.94221
      
      $results[[53]]$conv_all
      [1] TRUE
      
      $results[[53]]$conv_sub
      [1] TRUE
      
      
      $results[[54]]
      $results[[54]]$all_weights
               ct1          ct2          ct3 
      0.0767137201 0.0005428045 0.8335714082 
      
      $results[[54]]$cell_type_list
      [1] "ct3"
      
      $results[[54]]$conf_list
       ct3 
      TRUE 
      
      $results[[54]]$sub_weights
      [1] 1
      
      $results[[54]]$min_score
      [1] 96.78569
      
      $results[[54]]$conv_all
      [1] TRUE
      
      $results[[54]]$conv_sub
      [1] TRUE
      
      
      $results[[55]]
      $results[[55]]$all_weights
               ct1          ct2          ct3 
      0.0005428045 0.8896419664 0.0195602929 
      
      $results[[55]]$cell_type_list
      [1] "ct2"
      
      $results[[55]]$conf_list
       ct2 
      TRUE 
      
      $results[[55]]$sub_weights
      [1] 1
      
      $results[[55]]$min_score
      [1] 100.2897
      
      $results[[55]]$conv_all
      [1] TRUE
      
      $results[[55]]$conv_sub
      [1] TRUE
      
      
      $results[[56]]
      $results[[56]]$all_weights
             ct1        ct2        ct3 
      0.04338707 0.81410958 0.03771980 
      
      $results[[56]]$cell_type_list
      [1] "ct2"
      
      $results[[56]]$conf_list
       ct2 
      TRUE 
      
      $results[[56]]$sub_weights
      [1] 1
      
      $results[[56]]$min_score
      [1] 103.2003
      
      $results[[56]]$conv_all
      [1] TRUE
      
      $results[[56]]$conv_sub
      [1] TRUE
      
      
      $results[[57]]
      $results[[57]]$all_weights
             ct1        ct2        ct3 
      0.02540555 0.93362197 0.01697209 
      
      $results[[57]]$cell_type_list
      [1] "ct2"
      
      $results[[57]]$conf_list
       ct2 
      TRUE 
      
      $results[[57]]$sub_weights
      [1] 1
      
      $results[[57]]$min_score
      [1] 96.0628
      
      $results[[57]]$conv_all
      [1] TRUE
      
      $results[[57]]$conv_sub
      [1] TRUE
      
      
      $results[[58]]
      $results[[58]]$all_weights
               ct1          ct2          ct3 
      0.0005428045 0.0098297735 0.9850803638 
      
      $results[[58]]$cell_type_list
      [1] "ct3"
      
      $results[[58]]$conf_list
       ct3 
      TRUE 
      
      $results[[58]]$sub_weights
      [1] 1
      
      $results[[58]]$min_score
      [1] 95.24691
      
      $results[[58]]$conv_all
      [1] TRUE
      
      $results[[58]]$conv_sub
      [1] TRUE
      
      
      $results[[59]]
      $results[[59]]$all_weights
               ct1          ct2          ct3 
      0.0005428045 0.8766883861 0.0724844685 
      
      $results[[59]]$cell_type_list
      [1] "ct2"
      
      $results[[59]]$conf_list
       ct2 
      TRUE 
      
      $results[[59]]$sub_weights
      [1] 1
      
      $results[[59]]$min_score
      [1] 101.5566
      
      $results[[59]]$conv_all
      [1] TRUE
      
      $results[[59]]$conv_sub
      [1] TRUE
      
      
      $results[[60]]
      $results[[60]]$all_weights
             ct1        ct2        ct3 
      0.03227581 0.85914345 0.03735941 
      
      $results[[60]]$cell_type_list
      [1] "ct2"
      
      $results[[60]]$conf_list
       ct2 
      TRUE 
      
      $results[[60]]$sub_weights
      [1] 1
      
      $results[[60]]$min_score
      [1] 98.18057
      
      $results[[60]]$conv_all
      [1] TRUE
      
      $results[[60]]$conv_sub
      [1] TRUE
      
      
      $results[[61]]
      $results[[61]]$all_weights
               ct1          ct2          ct3 
      0.0004165036 0.9651549528 0.0003799632 
      
      $results[[61]]$cell_type_list
      [1] "ct2"
      
      $results[[61]]$conf_list
       ct2 
      TRUE 
      
      $results[[61]]$sub_weights
      [1] 1
      
      $results[[61]]$min_score
      [1] 99.47078
      
      $results[[61]]$conv_all
      [1] TRUE
      
      $results[[61]]$conv_sub
      [1] TRUE
      
      
      $results[[62]]
      $results[[62]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.9432430449 0.0003799632 
      
      $results[[62]]$cell_type_list
      [1] "ct2"
      
      $results[[62]]$conf_list
       ct2 
      TRUE 
      
      $results[[62]]$sub_weights
      [1] 1
      
      $results[[62]]$min_score
      [1] 112.3135
      
      $results[[62]]$conv_all
      [1] TRUE
      
      $results[[62]]$conv_sub
      [1] TRUE
      
      
      $results[[63]]
      $results[[63]]$all_weights
               ct1          ct2          ct3 
      0.0002659742 0.0146288668 0.9203782643 
      
      $results[[63]]$cell_type_list
      [1] "ct3"
      
      $results[[63]]$conf_list
       ct3 
      TRUE 
      
      $results[[63]]$sub_weights
      [1] 1
      
      $results[[63]]$min_score
      [1] 101.7297
      
      $results[[63]]$conv_all
      [1] TRUE
      
      $results[[63]]$conv_sub
      [1] TRUE
      
      
      $results[[64]]
      $results[[64]]$all_weights
             ct1        ct2        ct3 
      0.01750481 0.02904742 0.84719811 
      
      $results[[64]]$cell_type_list
      [1] "ct3"
      
      $results[[64]]$conf_list
       ct3 
      TRUE 
      
      $results[[64]]$sub_weights
      [1] 1
      
      $results[[64]]$min_score
      [1] 94.9648
      
      $results[[64]]$conv_all
      [1] TRUE
      
      $results[[64]]$conv_sub
      [1] TRUE
      
      
      $results[[65]]
      $results[[65]]$all_weights
             ct1        ct2        ct3 
      0.11082749 0.75492099 0.05202335 
      
      $results[[65]]$cell_type_list
      [1] "ct2"
      
      $results[[65]]$conf_list
       ct2 
      TRUE 
      
      $results[[65]]$sub_weights
      [1] 1
      
      $results[[65]]$min_score
      [1] 91.26894
      
      $results[[65]]$conv_all
      [1] TRUE
      
      $results[[65]]$conv_sub
      [1] TRUE
      
      
      $results[[66]]
      $results[[66]]$all_weights
               ct1          ct2          ct3 
      0.0004134578 0.0422246757 0.9449564387 
      
      $results[[66]]$cell_type_list
      [1] "ct3"
      
      $results[[66]]$conf_list
       ct3 
      TRUE 
      
      $results[[66]]$sub_weights
      [1] 1
      
      $results[[66]]$min_score
      [1] 99.08034
      
      $results[[66]]$conv_all
      [1] TRUE
      
      $results[[66]]$conv_sub
      [1] TRUE
      
      
      $results[[67]]
      $results[[67]]$all_weights
               ct1          ct2          ct3 
      3.955746e-03 8.839102e-07 9.212195e-01 
      
      $results[[67]]$cell_type_list
      [1] "ct3"
      
      $results[[67]]$conf_list
       ct3 
      TRUE 
      
      $results[[67]]$sub_weights
      [1] 1
      
      $results[[67]]$min_score
      [1] 92.59821
      
      $results[[67]]$conv_all
      [1] TRUE
      
      $results[[67]]$conv_sub
      [1] TRUE
      
      
      $results[[68]]
      $results[[68]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 1.0571549043 0.0003799632 
      
      $results[[68]]$cell_type_list
      [1] "ct2"
      
      $results[[68]]$conf_list
       ct2 
      TRUE 
      
      $results[[68]]$sub_weights
      [1] 1
      
      $results[[68]]$min_score
      [1] 93.11066
      
      $results[[68]]$conv_all
      [1] TRUE
      
      $results[[68]]$conv_sub
      [1] TRUE
      
      
      $results[[69]]
      $results[[69]]$all_weights
               ct1          ct2          ct3 
      0.9283562362 0.0233735986 0.0003799632 
      
      $results[[69]]$cell_type_list
      [1] "ct1"
      
      $results[[69]]$conf_list
       ct1 
      TRUE 
      
      $results[[69]]$sub_weights
      [1] 1
      
      $results[[69]]$min_score
      [1] 98.41145
      
      $results[[69]]$conv_all
      [1] TRUE
      
      $results[[69]]$conv_sub
      [1] TRUE
      
      
      $results[[70]]
      $results[[70]]$all_weights
               ct1          ct2          ct3 
      0.0018462408 0.0005933447 1.0081754553 
      
      $results[[70]]$cell_type_list
      [1] "ct3"
      
      $results[[70]]$conf_list
       ct3 
      TRUE 
      
      $results[[70]]$sub_weights
      [1] 1
      
      $results[[70]]$min_score
      [1] 95.60925
      
      $results[[70]]$conv_all
      [1] TRUE
      
      $results[[70]]$conv_sub
      [1] TRUE
      
      
      $results[[71]]
      $results[[71]]$all_weights
               ct1          ct2          ct3 
      0.9499887030 0.0320405289 0.0003799632 
      
      $results[[71]]$cell_type_list
      [1] "ct1"
      
      $results[[71]]$conf_list
       ct1 
      TRUE 
      
      $results[[71]]$sub_weights
      [1] 1
      
      $results[[71]]$min_score
      [1] 98.56058
      
      $results[[71]]$conv_all
      [1] TRUE
      
      $results[[71]]$conv_sub
      [1] TRUE
      
      
      $results[[72]]
      $results[[72]]$all_weights
               ct1          ct2          ct3 
      0.8443616096 0.0677044192 0.0003799632 
      
      $results[[72]]$cell_type_list
      [1] "ct1"
      
      $results[[72]]$conf_list
       ct1 
      TRUE 
      
      $results[[72]]$sub_weights
      [1] 1
      
      $results[[72]]$min_score
      [1] 102.2854
      
      $results[[72]]$conv_all
      [1] TRUE
      
      $results[[72]]$conv_sub
      [1] TRUE
      
      
      $results[[73]]
      $results[[73]]$all_weights
               ct1          ct2          ct3 
      0.9405215343 0.0003799632 0.0364855327 
      
      $results[[73]]$cell_type_list
      [1] "ct1"
      
      $results[[73]]$conf_list
       ct1 
      TRUE 
      
      $results[[73]]$sub_weights
      [1] 1
      
      $results[[73]]$min_score
      [1] 95.71932
      
      $results[[73]]$conv_all
      [1] TRUE
      
      $results[[73]]$conv_sub
      [1] TRUE
      
      
      $results[[74]]
      $results[[74]]$all_weights
             ct1        ct2        ct3 
      0.83411558 0.06867369 0.03554023 
      
      $results[[74]]$cell_type_list
      [1] "ct1"
      
      $results[[74]]$conf_list
       ct1 
      TRUE 
      
      $results[[74]]$sub_weights
      [1] 1
      
      $results[[74]]$min_score
      [1] 97.96431
      
      $results[[74]]$conv_all
      [1] TRUE
      
      $results[[74]]$conv_sub
      [1] TRUE
      
      
      $results[[75]]
      $results[[75]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 1.0062689134 0.0478760320 
      
      $results[[75]]$cell_type_list
      [1] "ct2"
      
      $results[[75]]$conf_list
       ct2 
      TRUE 
      
      $results[[75]]$sub_weights
      [1] 1
      
      $results[[75]]$min_score
      [1] 105.7838
      
      $results[[75]]$conv_all
      [1] TRUE
      
      $results[[75]]$conv_sub
      [1] TRUE
      
      
      $results[[76]]
      $results[[76]]$all_weights
               ct1          ct2          ct3 
      0.0333731212 0.8446456236 0.0003799632 
      
      $results[[76]]$cell_type_list
      [1] "ct2"
      
      $results[[76]]$conf_list
       ct2 
      TRUE 
      
      $results[[76]]$sub_weights
      [1] 1
      
      $results[[76]]$min_score
      [1] 98.68173
      
      $results[[76]]$conv_all
      [1] TRUE
      
      $results[[76]]$conv_sub
      [1] TRUE
      
      
      $results[[77]]
      $results[[77]]$all_weights
               ct1          ct2          ct3 
      0.1785993191 0.8812487735 0.0005428045 
      
      $results[[77]]$cell_type_list
      [1] "ct2"
      
      $results[[77]]$conf_list
       ct2 
      TRUE 
      
      $results[[77]]$sub_weights
      [1] 1
      
      $results[[77]]$min_score
      [1] 108.0528
      
      $results[[77]]$conv_all
      [1] TRUE
      
      $results[[77]]$conv_sub
      [1] TRUE
      
      
      $results[[78]]
      $results[[78]]$all_weights
              ct1         ct2         ct3 
      0.009207301 0.002173297 0.988010867 
      
      $results[[78]]$cell_type_list
      [1] "ct3"
      
      $results[[78]]$conf_list
       ct3 
      TRUE 
      
      $results[[78]]$sub_weights
      [1] 1
      
      $results[[78]]$min_score
      [1] 99.60287
      
      $results[[78]]$conv_all
      [1] TRUE
      
      $results[[78]]$conv_sub
      [1] TRUE
      
      
      $results[[79]]
      $results[[79]]$all_weights
               ct1          ct2          ct3 
      0.0194547887 0.9633361655 0.0003799632 
      
      $results[[79]]$cell_type_list
      [1] "ct2"
      
      $results[[79]]$conf_list
       ct2 
      TRUE 
      
      $results[[79]]$sub_weights
      [1] 1
      
      $results[[79]]$min_score
      [1] 101.9797
      
      $results[[79]]$conv_all
      [1] TRUE
      
      $results[[79]]$conv_sub
      [1] TRUE
      
      
      $results[[80]]
      $results[[80]]$all_weights
               ct1          ct2          ct3 
      0.9884863037 0.0019235422 0.0003799632 
      
      $results[[80]]$cell_type_list
      [1] "ct1"
      
      $results[[80]]$conf_list
       ct1 
      TRUE 
      
      $results[[80]]$sub_weights
      [1] 1
      
      $results[[80]]$min_score
      [1] 108.1576
      
      $results[[80]]$conv_all
      [1] TRUE
      
      $results[[80]]$conv_sub
      [1] TRUE
      
      
      $results[[81]]
      $results[[81]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.0003799632 0.9351863577 
      
      $results[[81]]$cell_type_list
      [1] "ct3"
      
      $results[[81]]$conf_list
       ct3 
      TRUE 
      
      $results[[81]]$sub_weights
      [1] 1
      
      $results[[81]]$min_score
      [1] 99.23063
      
      $results[[81]]$conv_all
      [1] TRUE
      
      $results[[81]]$conv_sub
      [1] TRUE
      
      
      $results[[82]]
      $results[[82]]$all_weights
               ct1          ct2          ct3 
      0.1170868344 0.8070868718 0.0005428045 
      
      $results[[82]]$cell_type_list
      [1] "ct2"
      
      $results[[82]]$conf_list
       ct2 
      TRUE 
      
      $results[[82]]$sub_weights
      [1] 1
      
      $results[[82]]$min_score
      [1] 101.0037
      
      $results[[82]]$conv_all
      [1] TRUE
      
      $results[[82]]$conv_sub
      [1] TRUE
      
      
      $results[[83]]
      $results[[83]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.1459427025 0.8547371110 
      
      $results[[83]]$cell_type_list
      [1] "ct3"
      
      $results[[83]]$conf_list
       ct3 
      TRUE 
      
      $results[[83]]$sub_weights
      [1] 1
      
      $results[[83]]$min_score
      [1] 102.0145
      
      $results[[83]]$conv_all
      [1] TRUE
      
      $results[[83]]$conv_sub
      [1] TRUE
      
      
      $results[[84]]
      $results[[84]]$all_weights
               ct1          ct2          ct3 
      0.0002659742 0.0082196841 1.0316584494 
      
      $results[[84]]$cell_type_list
      [1] "ct3"
      
      $results[[84]]$conf_list
       ct3 
      TRUE 
      
      $results[[84]]$sub_weights
      [1] 1
      
      $results[[84]]$min_score
      [1] 95.1695
      
      $results[[84]]$conv_all
      [1] TRUE
      
      $results[[84]]$conv_sub
      [1] TRUE
      
      
      $results[[85]]
      $results[[85]]$all_weights
               ct1          ct2          ct3 
      1.1005851392 0.0003799632 0.0046067354 
      
      $results[[85]]$cell_type_list
      [1] "ct1"
      
      $results[[85]]$conf_list
       ct1 
      TRUE 
      
      $results[[85]]$sub_weights
      [1] 1
      
      $results[[85]]$min_score
      [1] 113.9735
      
      $results[[85]]$conv_all
      [1] TRUE
      
      $results[[85]]$conv_sub
      [1] TRUE
      
      
      $results[[86]]
      $results[[86]]$all_weights
               ct1          ct2          ct3 
      0.0508765350 0.9197293643 0.0003799632 
      
      $results[[86]]$cell_type_list
      [1] "ct2"
      
      $results[[86]]$conf_list
       ct2 
      TRUE 
      
      $results[[86]]$sub_weights
      [1] 1
      
      $results[[86]]$min_score
      [1] 108.6819
      
      $results[[86]]$conv_all
      [1] TRUE
      
      $results[[86]]$conv_sub
      [1] TRUE
      
      
      $results[[87]]
      $results[[87]]$all_weights
               ct1          ct2          ct3 
      1.0086320181 0.0503810700 0.0003799632 
      
      $results[[87]]$cell_type_list
      [1] "ct1"
      
      $results[[87]]$conf_list
       ct1 
      TRUE 
      
      $results[[87]]$sub_weights
      [1] 1
      
      $results[[87]]$min_score
      [1] 102.1916
      
      $results[[87]]$conv_all
      [1] TRUE
      
      $results[[87]]$conv_sub
      [1] TRUE
      
      
      $results[[88]]
      $results[[88]]$all_weights
               ct1          ct2          ct3 
      0.9161031649 0.0208449820 0.0003799632 
      
      $results[[88]]$cell_type_list
      [1] "ct1"
      
      $results[[88]]$conf_list
       ct1 
      TRUE 
      
      $results[[88]]$sub_weights
      [1] 1
      
      $results[[88]]$min_score
      [1] 98.8864
      
      $results[[88]]$conv_all
      [1] TRUE
      
      $results[[88]]$conv_sub
      [1] TRUE
      
      
      $results[[89]]
      $results[[89]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.9491714560 0.0003799632 
      
      $results[[89]]$cell_type_list
      [1] "ct2"
      
      $results[[89]]$conf_list
       ct2 
      TRUE 
      
      $results[[89]]$sub_weights
      [1] 1
      
      $results[[89]]$min_score
      [1] 103.4188
      
      $results[[89]]$conv_all
      [1] TRUE
      
      $results[[89]]$conv_sub
      [1] TRUE
      
      
      $results[[90]]
      $results[[90]]$all_weights
               ct1          ct2          ct3 
      0.0003799632 0.9647633903 0.0122115866 
      
      $results[[90]]$cell_type_list
      [1] "ct2"
      
      $results[[90]]$conf_list
       ct2 
      TRUE 
      
      $results[[90]]$sub_weights
      [1] 1
      
      $results[[90]]$min_score
      [1] 102.2405
      
      $results[[90]]$conv_all
      [1] TRUE
      
      $results[[90]]$conv_sub
      [1] TRUE
      
      
      

