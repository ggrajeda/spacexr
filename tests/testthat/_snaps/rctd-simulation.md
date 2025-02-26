# Matches exactly on rctdSim

    Code
      print_results(doublet_assays, doublet_col_data, doublet_coords)
    Output
      [1] "=== Weights ==="
      12 x 3 sparse Matrix of class "dgCMatrix"
           ct1       ct2       ct3
      mx11   1 .         .        
      mx12   1 .         .        
      mx13   1 .         .        
      mx14   1 .         .        
      mx15   1 .         .        
      mx16   1 .         .        
      mx21   . 0.4935949 0.5064051
      mx22   . 0.4759430 0.5240570
      mx23   . 0.4685428 0.5314572
      mx24   . 0.4577326 0.5422674
      mx25   . 0.5103718 0.4896282
      mx26   . 0.4795314 0.5204686
      [1] "\n=== Unconfident Weights ==="
      12 x 3 sparse Matrix of class "dgCMatrix"
                 ct1        ct2       ct3
      mx11 0.8883131 0.11168693 .        
      mx12 0.8526263 0.14737366 .        
      mx13 0.9326569 0.06734308 .        
      mx14 0.9071135 0.09288650 .        
      mx15 0.9177083 0.08229169 .        
      mx16 0.8686848 0.13131518 .        
      mx21 .         0.49359492 0.5064051
      mx22 .         0.47594300 0.5240570
      mx23 .         0.46854284 0.5314572
      mx24 .         0.45773256 0.5422674
      mx25 .         0.51037180 0.4896282
      mx26 .         0.47953141 0.5204686
      [1] "\n=== Full Weights ==="
      12 x 3 Matrix of class "dgeMatrix"
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
      [1] "\n=== Column Data ==="
                spot_class first_type second_type first_class second_class conv_all
      mx11         singlet        ct1         ct2       FALSE        FALSE     TRUE
      mx12         singlet        ct1         ct2       FALSE        FALSE     TRUE
      mx13         singlet        ct1         ct2       FALSE        FALSE     TRUE
      mx14         singlet        ct1         ct2       FALSE        FALSE     TRUE
      mx15         singlet        ct1         ct2       FALSE        FALSE     TRUE
      mx16         singlet        ct1         ct2       FALSE        FALSE     TRUE
      mx21 doublet_certain        ct2         ct3       FALSE        FALSE     TRUE
      mx22 doublet_certain        ct3         ct2       FALSE        FALSE     TRUE
      mx23 doublet_certain        ct3         ct2       FALSE        FALSE     TRUE
      mx24 doublet_certain        ct3         ct2       FALSE        FALSE     TRUE
      mx25 doublet_certain        ct2         ct3       FALSE        FALSE     TRUE
      mx26 doublet_certain        ct3         ct2       FALSE        FALSE     TRUE
           conv_doublet min_score singlet_score sample_id
      mx11         TRUE  257.0344      263.6799  sample01
      mx12         TRUE  259.0635      269.5176  sample01
      mx13         TRUE  252.0572      254.3107  sample01
      mx14         TRUE  257.8155      262.2919  sample01
      mx15         TRUE  258.3342      261.9744  sample01
      mx16         TRUE  254.4810      263.2945  sample01
      mx21         TRUE  262.4786      354.7120  sample01
      mx22         TRUE  271.3191      363.4435  sample01
      mx23         TRUE  266.7165      354.5939  sample01
      mx24         TRUE  284.6159      374.9403  sample01
      mx25         TRUE  269.0820      359.4514  sample01
      mx26         TRUE  275.1382      367.6603  sample01
      [1] "\n=== Coordinates ==="
                  x   y
      mx11 1.000000 0.0
      mx12 1.333333 0.0
      mx13 1.000000 0.5
      mx14 1.333333 0.5
      mx15 1.000000 1.0
      mx16 1.333333 1.0
      mx21 2.000000 0.0
      mx22 2.333333 0.0
      mx23 2.000000 0.5
      mx24 2.333333 0.5
      mx25 2.000000 1.0
      mx26 2.333333 1.0

---

    Code
      print_results(multi_assays, multi_col_data, multi_coords)
    Output
      [1] "=== Weights ==="
      12 x 3 sparse Matrix of class "dgCMatrix"
           ct1       ct2       ct3
      mx11   1 .         .        
      mx12   1 .         .        
      mx13   1 .         .        
      mx14   1 .         .        
      mx15   1 .         .        
      mx16   1 .         .        
      mx21   . 0.4935949 0.5064051
      mx22   . 0.4759430 0.5240570
      mx23   . 0.4685428 0.5314572
      mx24   . 0.4577326 0.5422674
      mx25   . 0.5103718 0.4896282
      mx26   . 0.4795314 0.5204686
      [1] "\n=== Unconfident Weights ==="
      12 x 3 sparse Matrix of class "dgCMatrix"
           ct1       ct2       ct3
      mx11   1 .         .        
      mx12   1 .         .        
      mx13   1 .         .        
      mx14   1 .         .        
      mx15   1 .         .        
      mx16   1 .         .        
      mx21   . 0.4935949 0.5064051
      mx22   . 0.4759430 0.5240570
      mx23   . 0.4685428 0.5314572
      mx24   . 0.4577326 0.5422674
      mx25   . 0.5103718 0.4896282
      mx26   . 0.4795314 0.5204686
      [1] "\n=== Full Weights ==="
      12 x 3 Matrix of class "dgeMatrix"
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
      [1] "\n=== Column Data ==="
           cell_type_list  conf_list conv_all conv_sub min_score sample_id
      mx11            ct1       TRUE     TRUE     TRUE  263.6799  sample01
      mx12            ct1       TRUE     TRUE     TRUE  269.5176  sample01
      mx13            ct1       TRUE     TRUE     TRUE  254.3107  sample01
      mx14            ct1       TRUE     TRUE     TRUE  262.2919  sample01
      mx15            ct1       TRUE     TRUE     TRUE  261.9744  sample01
      mx16            ct1       TRUE     TRUE     TRUE  263.2945  sample01
      mx21       ct2, ct3 TRUE, TRUE     TRUE     TRUE  262.4786  sample01
      mx22       ct3, ct2 TRUE, TRUE     TRUE     TRUE  271.3191  sample01
      mx23       ct3, ct2 TRUE, TRUE     TRUE     TRUE  266.7165  sample01
      mx24       ct3, ct2 TRUE, TRUE     TRUE     TRUE  284.6159  sample01
      mx25       ct2, ct3 TRUE, TRUE     TRUE     TRUE  269.0820  sample01
      mx26       ct3, ct2 TRUE, TRUE     TRUE     TRUE  275.1382  sample01
      [1] "\n=== Coordinates ==="
                  x   y
      mx11 1.000000 0.0
      mx12 1.333333 0.0
      mx13 1.000000 0.5
      mx14 1.333333 0.5
      mx15 1.000000 1.0
      mx16 1.333333 1.0
      mx21 2.000000 0.0
      mx22 2.333333 0.0
      mx23 2.000000 0.5
      mx24 2.333333 0.5
      mx25 2.000000 1.0
      mx26 2.333333 1.0

---

    Code
      print_results(full_assays, full_col_data, full_coords)
    Output
      [1] "=== Weights ==="
      NULL
      [1] "\n=== Unconfident Weights ==="
      NULL
      [1] "\n=== Full Weights ==="
      12 x 3 Matrix of class "dgeMatrix"
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
      [1] "\n=== Column Data ==="
           sample_id
      mx11  sample01
      mx12  sample01
      mx13  sample01
      mx14  sample01
      mx15  sample01
      mx16  sample01
      mx21  sample01
      mx22  sample01
      mx23  sample01
      mx24  sample01
      mx25  sample01
      mx26  sample01
      [1] "\n=== Coordinates ==="
                  x   y
      mx11 1.000000 0.0
      mx12 1.333333 0.0
      mx13 1.000000 0.5
      mx14 1.333333 0.5
      mx15 1.000000 1.0
      mx16 1.333333 1.0
      mx21 2.000000 0.0
      mx22 2.333333 0.0
      mx23 2.000000 0.5
      mx24 2.333333 0.5
      mx25 2.000000 1.0
      mx26 2.333333 1.0

