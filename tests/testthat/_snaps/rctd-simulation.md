# Matches exactly on rctd_simulation

    Code
      doublet_results@results
    Output
      $results_df
                spot_class first_type second_type first_class second_class min_score
      mx11         singlet        ct1         ct2       FALSE        FALSE  257.0344
      mx12         singlet        ct1         ct2       FALSE        FALSE  259.0635
      mx13         singlet        ct1         ct2       FALSE        FALSE  252.0572
      mx14         singlet        ct1         ct2       FALSE        FALSE  257.8155
      mx15         singlet        ct1         ct2       FALSE        FALSE  258.3342
      mx16         singlet        ct1         ct2       FALSE        FALSE  254.4810
      mx21 doublet_certain        ct2         ct3       FALSE        FALSE  262.4786
      mx22 doublet_certain        ct3         ct2       FALSE        FALSE  271.3191
      mx23 doublet_certain        ct3         ct2       FALSE        FALSE  266.7165
      mx24 doublet_certain        ct3         ct2       FALSE        FALSE  284.6159
      mx25 doublet_certain        ct2         ct3       FALSE        FALSE  269.0820
      mx26 doublet_certain        ct3         ct2       FALSE        FALSE  275.1382
           singlet_score conv_all conv_doublet
      mx11      263.6799     TRUE         TRUE
      mx12      269.5176     TRUE         TRUE
      mx13      254.3107     TRUE         TRUE
      mx14      262.2919     TRUE         TRUE
      mx15      261.9744     TRUE         TRUE
      mx16      263.2945     TRUE         TRUE
      mx21      354.7120     TRUE         TRUE
      mx22      363.4435     TRUE         TRUE
      mx23      354.5939     TRUE         TRUE
      mx24      374.9403     TRUE         TRUE
      mx25      359.4514     TRUE         TRUE
      mx26      367.6603     TRUE         TRUE
      
      $weights
      12 x 3 sparse Matrix of class "dgCMatrix"
                 ct1        ct2          ct3
      mx11 0.8740814 0.10963406 0.0003799632
      mx12 0.7882722 0.13567456 0.0053545661
      mx13 0.8371584 0.05814187 0.0386134006
      mx14 0.8513654 0.08569276 0.0332623791
      mx15 0.9071982 0.08102762 0.0003799632
      mx16 0.8332367 0.12572255 0.0003799632
      mx21 0.1501168 0.42024566 0.4019487112
      mx22 0.1544612 0.41761457 0.4347702421
      mx23 0.1668893 0.39326670 0.4125522929
      mx24 0.1564196 0.42107308 0.4685100649
      mx25 0.1386026 0.44737520 0.4012548637
      mx26 0.1668809 0.40764089 0.4124205117
      
      $weights_doublet
      12 x 2 sparse Matrix of class "dgCMatrix"
           first_type second_type
      mx11  0.8883131  0.11168693
      mx12  0.8526263  0.14737366
      mx13  0.9326569  0.06734308
      mx14  0.9071135  0.09288650
      mx15  0.9177083  0.08229169
      mx16  0.8686848  0.13131518
      mx21  0.4935949  0.50640508
      mx22  0.5240570  0.47594300
      mx23  0.5314572  0.46854284
      mx24  0.5422674  0.45773256
      mx25  0.5103718  0.48962820
      mx26  0.5204686  0.47953141
      
      $score_mat
      $score_mat[[1]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1   .      257.0344
      ct2 257.0344   .     
      
      $score_mat[[2]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1   .      259.0635
      ct2 259.0635   .     
      
      $score_mat[[3]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1   .      252.0572 253.3185
      ct2 252.0572   .      444.4592
      ct3 253.3185 444.4592   .     
      
      $score_mat[[4]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1   .      257.8155 261.4220
      ct2 257.8155   .      455.5342
      ct3 261.4220 455.5342   .     
      
      $score_mat[[5]]
      2 x 2 sparse Matrix of class "dgCMatrix"
               ct1      ct2
      ct1   .      258.3342
      ct2 258.3342   .     
      
      $score_mat[[6]]
      2 x 2 sparse Matrix of class "dgCMatrix"
              ct1     ct2
      ct1   .     254.481
      ct2 254.481   .    
      
      $score_mat[[7]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1   .      315.5306 332.6945
      ct2 315.5306   .      262.4786
      ct3 332.6945 262.4786   .     
      
      $score_mat[[8]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1   .      332.8043 338.4099
      ct2 332.8043   .      271.3191
      ct3 338.4099 271.3191   .     
      
      $score_mat[[9]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1   .      321.6365 328.1500
      ct2 321.6365   .      266.7165
      ct3 328.1500 266.7165   .     
      
      $score_mat[[10]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1   .      353.1925 351.3384
      ct2 353.1925   .      284.6159
      ct3 351.3384 284.6159   .     
      
      $score_mat[[11]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1   .      323.7336 349.9175
      ct2 323.7336   .      269.0820
      ct3 349.9175 269.0820   .     
      
      $score_mat[[12]]
      3 x 3 sparse Matrix of class "dgCMatrix"
               ct1      ct2      ct3
      ct1   .      329.8240 339.7534
      ct2 329.8240   .      275.1382
      ct3 339.7534 275.1382   .     
      
      
      $singlet_scores
      $singlet_scores[[1]]
           ct1      ct2 
      263.6799 501.2868 
      
      $singlet_scores[[2]]
           ct1      ct2 
      269.5176 467.9791 
      
      $singlet_scores[[3]]
           ct1      ct2      ct3 
      254.3107 497.7829 480.9577 
      
      $singlet_scores[[4]]
           ct1      ct2      ct3 
      262.2919 509.0418 497.6576 
      
      $singlet_scores[[5]]
           ct1      ct2 
      261.9744 511.2335 
      
      $singlet_scores[[6]]
           ct1      ct2 
      263.2945 486.4909 
      
      $singlet_scores[[7]]
           ct1      ct2      ct3 
      422.3346 354.7120 357.3545 
      
      $singlet_scores[[8]]
           ct1      ct2      ct3 
      435.8263 375.0417 363.4435 
      
      $singlet_scores[[9]]
           ct1      ct2      ct3 
      420.9514 369.7926 354.5939 
      
      $singlet_scores[[10]]
           ct1      ct2      ct3 
      456.7110 399.0112 374.9403 
      
      $singlet_scores[[11]]
           ct1      ct2      ct3 
      438.9938 359.4514 373.5519 
      
      $singlet_scores[[12]]
           ct1      ct2      ct3 
      428.5909 375.7295 367.6603 
      
      

---

    Code
      multi_results@results
    Output
      [[1]]
      [[1]]$all_weights
               ct1          ct2          ct3 
      0.8740813939 0.1096340572 0.0003799632 
      
      [[1]]$cell_type_list
      [1] "ct1"
      
      [[1]]$conf_list
       ct1 
      TRUE 
      
      [[1]]$sub_weights
      [1] 1
      
      [[1]]$min_score
      [1] 263.6799
      
      [[1]]$conv_all
      [1] TRUE
      
      [[1]]$conv_sub
      [1] TRUE
      
      
      [[2]]
      [[2]]$all_weights
              ct1         ct2         ct3 
      0.788272229 0.135674563 0.005354566 
      
      [[2]]$cell_type_list
      [1] "ct1"
      
      [[2]]$conf_list
       ct1 
      TRUE 
      
      [[2]]$sub_weights
      [1] 1
      
      [[2]]$min_score
      [1] 269.5176
      
      [[2]]$conv_all
      [1] TRUE
      
      [[2]]$conv_sub
      [1] TRUE
      
      
      [[3]]
      [[3]]$all_weights
             ct1        ct2        ct3 
      0.83715836 0.05814187 0.03861340 
      
      [[3]]$cell_type_list
      [1] "ct1"
      
      [[3]]$conf_list
       ct1 
      TRUE 
      
      [[3]]$sub_weights
      [1] 1
      
      [[3]]$min_score
      [1] 254.3107
      
      [[3]]$conv_all
      [1] TRUE
      
      [[3]]$conv_sub
      [1] TRUE
      
      
      [[4]]
      [[4]]$all_weights
             ct1        ct2        ct3 
      0.85136545 0.08569276 0.03326238 
      
      [[4]]$cell_type_list
      [1] "ct1"
      
      [[4]]$conf_list
       ct1 
      TRUE 
      
      [[4]]$sub_weights
      [1] 1
      
      [[4]]$min_score
      [1] 262.2919
      
      [[4]]$conv_all
      [1] TRUE
      
      [[4]]$conv_sub
      [1] TRUE
      
      
      [[5]]
      [[5]]$all_weights
               ct1          ct2          ct3 
      0.9071981969 0.0810276180 0.0003799632 
      
      [[5]]$cell_type_list
      [1] "ct1"
      
      [[5]]$conf_list
       ct1 
      TRUE 
      
      [[5]]$sub_weights
      [1] 1
      
      [[5]]$min_score
      [1] 261.9744
      
      [[5]]$conv_all
      [1] TRUE
      
      [[5]]$conv_sub
      [1] TRUE
      
      
      [[6]]
      [[6]]$all_weights
               ct1          ct2          ct3 
      0.8332366783 0.1257225520 0.0003799632 
      
      [[6]]$cell_type_list
      [1] "ct1"
      
      [[6]]$conf_list
       ct1 
      TRUE 
      
      [[6]]$sub_weights
      [1] 1
      
      [[6]]$min_score
      [1] 263.2945
      
      [[6]]$conv_all
      [1] TRUE
      
      [[6]]$conv_sub
      [1] TRUE
      
      
      [[7]]
      [[7]]$all_weights
            ct1       ct2       ct3 
      0.1501168 0.4202457 0.4019487 
      
      [[7]]$cell_type_list
      [1] "ct2" "ct3"
      
      [[7]]$conf_list
       ct2  ct3 
      TRUE TRUE 
      
      [[7]]$sub_weights
            ct2       ct3 
      0.4935949 0.5064051 
      
      [[7]]$min_score
      [1] 262.4786
      
      [[7]]$conv_all
      [1] TRUE
      
      [[7]]$conv_sub
      [1] TRUE
      
      
      [[8]]
      [[8]]$all_weights
            ct1       ct2       ct3 
      0.1544612 0.4176146 0.4347702 
      
      [[8]]$cell_type_list
      [1] "ct3" "ct2"
      
      [[8]]$conf_list
       ct3  ct2 
      TRUE TRUE 
      
      [[8]]$sub_weights
           ct3      ct2 
      0.524057 0.475943 
      
      [[8]]$min_score
      [1] 271.3191
      
      [[8]]$conv_all
      [1] TRUE
      
      [[8]]$conv_sub
      [1] TRUE
      
      
      [[9]]
      [[9]]$all_weights
            ct1       ct2       ct3 
      0.1668893 0.3932667 0.4125523 
      
      [[9]]$cell_type_list
      [1] "ct3" "ct2"
      
      [[9]]$conf_list
       ct3  ct2 
      TRUE TRUE 
      
      [[9]]$sub_weights
            ct3       ct2 
      0.5314572 0.4685428 
      
      [[9]]$min_score
      [1] 266.7165
      
      [[9]]$conv_all
      [1] TRUE
      
      [[9]]$conv_sub
      [1] TRUE
      
      
      [[10]]
      [[10]]$all_weights
            ct1       ct2       ct3 
      0.1564196 0.4210731 0.4685101 
      
      [[10]]$cell_type_list
      [1] "ct3" "ct2"
      
      [[10]]$conf_list
       ct3  ct2 
      TRUE TRUE 
      
      [[10]]$sub_weights
            ct3       ct2 
      0.5422674 0.4577326 
      
      [[10]]$min_score
      [1] 284.6159
      
      [[10]]$conv_all
      [1] TRUE
      
      [[10]]$conv_sub
      [1] TRUE
      
      
      [[11]]
      [[11]]$all_weights
            ct1       ct2       ct3 
      0.1386026 0.4473752 0.4012549 
      
      [[11]]$cell_type_list
      [1] "ct2" "ct3"
      
      [[11]]$conf_list
       ct2  ct3 
      TRUE TRUE 
      
      [[11]]$sub_weights
            ct2       ct3 
      0.5103718 0.4896282 
      
      [[11]]$min_score
      [1] 269.082
      
      [[11]]$conv_all
      [1] TRUE
      
      [[11]]$conv_sub
      [1] TRUE
      
      
      [[12]]
      [[12]]$all_weights
            ct1       ct2       ct3 
      0.1668809 0.4076409 0.4124205 
      
      [[12]]$cell_type_list
      [1] "ct3" "ct2"
      
      [[12]]$conf_list
       ct3  ct2 
      TRUE TRUE 
      
      [[12]]$sub_weights
            ct3       ct2 
      0.5204686 0.4795314 
      
      [[12]]$min_score
      [1] 275.1382
      
      [[12]]$conv_all
      [1] TRUE
      
      [[12]]$conv_sub
      [1] TRUE
      
      

---

    Code
      full_results@results
    Output
      $weights
      12 x 3 sparse Matrix of class "dgCMatrix"
                 ct1        ct2          ct3
      mx11 0.8740814 0.10963406 0.0003799632
      mx12 0.7882722 0.13567456 0.0053545661
      mx13 0.8371584 0.05814187 0.0386134006
      mx14 0.8513654 0.08569276 0.0332623791
      mx15 0.9071982 0.08102762 0.0003799632
      mx16 0.8332367 0.12572255 0.0003799632
      mx21 0.1501168 0.42024566 0.4019487112
      mx22 0.1544612 0.41761457 0.4347702421
      mx23 0.1668893 0.39326670 0.4125522929
      mx24 0.1564196 0.42107308 0.4685100649
      mx25 0.1386026 0.44737520 0.4012548637
      mx26 0.1668809 0.40764089 0.4124205117
      

