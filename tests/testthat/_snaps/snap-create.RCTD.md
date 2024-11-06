# create.RCTD simple test

    Code
      create.RCTD(puck, reference, max_cores = 1)
    Message
      Begin: process_cell_type_info
      process_cell_type_info: number of cells in reference: 90
      process_cell_type_info: number of genes in reference: 500
    Output
      
      ct1 ct2 ct3 
       34  30  26 
    Message
      End: process_cell_type_info
      create.RCTD: getting regression differentially expressed genes: 
      get_de_genes: ct1 found DE genes: 7
      get_de_genes: ct2 found DE genes: 3
      get_de_genes: ct3 found DE genes: 10
      get_de_genes: total DE genes: 20
      create.RCTD: getting platform effect normalization differentially expressed genes: 
      get_de_genes: ct1 found DE genes: 16
      get_de_genes: ct2 found DE genes: 18
      get_de_genes: ct3 found DE genes: 27
      get_de_genes: total DE genes: 61
    Output
      An object of class "RCTD"
      Slot "spatialRNA":
      An object of class "SpatialRNA"
      Slot "coords":
                                              x    y
      CGTAGCTAAATAATGAGCTATATAAATA          960  630
      ACTAAGTAAATAATGAACTAGATAAATA          480  420
      TCTAGATAAATAATGAACTACGTAAATA          720  490
      AGTAACTAAATAATGAACTACGTAAATA          840  490
      CATATATAGATAAATAATGAACTACGTAAATA     1320  490
      TATAGCTAAATAATGAGATAAGTAAATA          360  280
      AGTAACTAAATAATGACATAACTAAATA          840  140
      TATAGCTAAATAATGAACTACGTAAATA          360  490
      AGTAACTAAATAATGAGATAAGTAAATA          840  280
      TCTAGATAAATAATGAGATACATAAATA          720  210
      GCTAAATAAATAATGAACTACGTAAATA          600  490
      AGTAACTAAATAATGAGCTATATAAATA          840  630
      CATATATAGATAAATAATGATCTAAATAAATA     1320  700
      GCTAAATAAATAATGAACTAGATAAATA          600  420
      GCTAAATAAATAATGATCTAAATA              600   70
      TATAGCTAAATAATGATATACCTAAATA          360  350
      TATAGCTAAATAATGATCTAAATAAATA          360  700
      AGTAACTAAATAATGATATACCTAAATA          840  350
      CGTAGCTAAATAATGATCTAAATA              960   70
      CGTAGCTAAATAATGAGATAAGTAAATA          960  280
      CATAGATAAATAAATAATGATCTAAATA         1200   70
      CATAGATAAATAATGAGCTATATAAATA          120  630
      TATAGCTAAATAATGAGATACATAAATA          360  210
      CATAGATAAATAATGAACTACGTAAATA          120  490
      AGTAACTAAATAATGATCTAAATA              840   70
      GATAACTAAATAATGAACTACGTAAATA          240  490
      ACTAAGTAAATAATGACCTAGCTAAATA          480  560
      CATAAATAAGTAAATAATGAGATACATAAATA     1080  210
      CATATATAGATAAATAATGATCTAAATA         1320   70
      TCTAGATAAATAATGATCTAAATAAATA          720  700
      CATATATAGATAAATAATGAGATACATAAATA     1320  210
      TCTAGATAAATAATGATCTAAATA              720   70
      CATAGATAAATAAATAATGATATACCTAAATA     1200  350
      GCTAAATAAATAATGAGCTATATAAATA          600  630
      GATAACTAAATAATGAGATACATAAATA          240  210
      CATAGATAAATAAATAATGAGATAAGTAAATA     1200  280
      CATATATAGATAAATAATGACCTAGCTAAATA     1320  560
      CATAGATAAATAATGATATACCTAAATA          120  350
      CATAGATAAATAAATAATGACCTAGCTAAATA     1200  560
      GCTAAATAAATAATGACCTAGCTAAATA          600  560
      CATAGATAAATAATGACCTAGCTAAATA          120  560
      CATAGATAAATAATGAACTAGATAAATA          120  420
      ACTAAGTAAATAATGAACTACGTAAATA          480  490
      CATAGATAAATAAATAATGAACTACGTAAATA     1200  490
      GCTAAATAAATAATGATCTAAATAAATA          600  700
      CATAGATAAATAAATAATGAGCTATATAAATA     1200  630
      CGTAGCTAAATAATGAACTACGTAAATA          960  490
      TCTAGATAAATAATGACCTAGCTAAATA          720  560
      CGTAGCTAAATAATGACCTAGCTAAATA          960  560
      CGTAGCTAAATAATGAGATACATAAATA          960  210
      CGTAGCTAAATAATGATATACCTAAATA          960  350
      CATAGATAAATAATGAGATACATAAATA          120  210
      CGTAGCTAAATAATGACATAACTAAATA          960  140
      ACTAAGTAAATAATGATATACCTAAATA          480  350
      CATATATAGATAAATAATGATATACCTAAATA     1320  350
      CATAGATAAATAAATAATGAACTAGATAAATA     1200  420
      TATAGCTAAATAATGACATAACTAAATA          360  140
      TATAGCTAAATAATGAGCTATATAAATA          360  630
      TATAGCTAAATAATGACCTAGCTAAATA          360  560
      GATAACTAAATAATGAACTAGATAAATA          240  420
      TCTAGATAAATAATGAGATAAGTAAATA          720  280
      ACTAAGTAAATAATGAGATAAGTAAATA          480  280
      CATAAATAAGTAAATAATGACATAACTAAATA     1080  140
      CATAGATAAATAATGATCTAAATAAATA          120  700
      GCTAAATAAATAATGATATACCTAAATA          600  350
      TATAGCTAAATAATGATCTAAATA              360   70
      CATAGATAAATAATGATCTAAATA              120   70
      CATATATAGATAAATAATGAACTAGATAAATA     1320  420
      CATAGATAAATAATGAGATAAGTAAATA          120  280
      CATAAATAAGTAAATAATGAGCTATATAAATA     1080  630
      CATAAATAAGTAAATAATGAACTACGTAAATA     1080  490
      CATAAATAAGTAAATAATGATCTAAATAAATA     1080  700
      AGTAACTAAATAATGAGATACATAAATA          840  210
      TCTAGATAAATAATGAACTAGATAAATA          720  420
      ACTAAGTAAATAATGAGATACATAAATA          480  210
      CATATATAGATAAATAATGAGCTATATAAATA     1320  630
      CATAGATAAATAAATAATGACATAACTAAATA     1200  140
      GCTAAATAAATAATGAGATACATAAATA          600  210
      AGTAACTAAATAATGAACTAGATAAATA          840  420
      CATAAATAAGTAAATAATGAGATAAGTAAATA     1080  280
      GATAACTAAATAATGATATACCTAAATA          240  350
      AGTAACTAAATAATGATCTAAATAAATA          840  700
      CATAGATAAATAATGACATAACTAAATA          120  140
      ACTAAGTAAATAATGACATAACTAAATA          480  140
      ACTAAGTAAATAATGATCTAAATAAATA          480  700
      ACTAAGTAAATAATGATCTAAATA              480   70
      GATAACTAAATAATGATCTAAATA              240   70
      CGTAGCTAAATAATGATCTAAATAAATA          960  700
      GATAACTAAATAATGACATAACTAAATA          240  140
      TCTAGATAAATAATGACATAACTAAATA          720  140
      AGTAACTAAATAATGACATACATAGATAAATA      840 1120
      CATAGATAAATAATGACATACATACGTAAATA      120 1190
      GCTAAATAAATAATGACATACATAGATAAATA      600 1120
      ACTAAGTAAATAATGACATATATATATAAATA      480 1330
      CATAGATAAATAAATAATGAAGTAACTAAATA     1200  840
      CATAGATAAATAATGACATAAATACCTAAATA      120 1050
      AGTAACTAAATAATGAAGTAACTAAATA          840  840
      CATATATAGATAAATAATGAAGTAACTAAATA     1320  840
      GATAACTAAATAATGAAGTAACTAAATA          240  840
      CATATATAGATAAATAATGACATAAATACCTAAATA 1320 1050
      TCTAGATAAATAATGACATAACTAAATAAATA      720 1400
      GCTAAATAAATAATGAAGTAACTAAATA          600  840
      CATATATAGATAAATAATGACATAGATAGCTAAATA 1320 1260
      AGTAACTAAATAATGACGTACATAAATA          840  910
      ACTAAGTAAATAATGACATAGATAGCTAAATA      480 1260
      CATAGATAAATAATGACGTAAGTAAATA          120  980
      AGTAACTAAATAATGATCTATCTAAATA          840  770
      CATATATAGATAAATAATGATCTATCTAAATA     1320  770
      GATAACTAAATAATGACATAACTAAATAAATA      240 1400
      CGTAGCTAAATAATGACATAGATAGCTAAATA      960 1260
      CATAAATAAGTAAATAATGACATACATACGTAAATA 1080 1190
      ACTAAGTAAATAATGACATACATAGATAAATA      480 1120
      CATAAATAAGTAAATAATGACGTACATAAATA     1080  910
      GATAACTAAATAATGACGTAAGTAAATA          240  980
      CATAAATAAGTAAATAATGACATACATAGATAAATA 1080 1120
      TATAGCTAAATAATGACATACATAGATAAATA      360 1120
      CATAGATAAATAAATAATGACATAGATAGCTAAATA 1200 1260
      ACTAAGTAAATAATGATCTATCTAAATA          480  770
      TCTAGATAAATAATGACATACATACGTAAATA      720 1190
      GCTAAATAAATAATGACGTACATAAATA          600  910
      ACTAAGTAAATAATGACGTACATAAATA          480  910
      CGTAGCTAAATAATGACATAACTAAATAAATA      960 1400
      GATAACTAAATAATGACATACATAGATAAATA      240 1120
      AGTAACTAAATAATGACATACATACGTAAATA      840 1190
      TCTAGATAAATAATGACGTACATAAATA          720  910
      GATAACTAAATAATGACATAGATAGCTAAATA      240 1260
      TCTAGATAAATAATGACGTAAGTAAATA          720  980
      TCTAGATAAATAATGACATACATAGATAAATA      720 1120
      CATAGATAAATAAATAATGACATAAATACCTAAATA 1200 1050
      GATAACTAAATAATGACATACATACGTAAATA      240 1190
      CATAGATAAATAATGACATAGATAGCTAAATA      120 1260
      CGTAGCTAAATAATGACGTACATAAATA          960  910
      GCTAAATAAATAATGACATATATATATAAATA      600 1330
      TCTAGATAAATAATGACATATATATATAAATA      720 1330
      AGTAACTAAATAATGACATAGATAGCTAAATA      840 1260
      GCTAAATAAATAATGACATAACTAAATAAATA      600 1400
      GCTAAATAAATAATGACATACATACGTAAATA      600 1190
      CATATATAGATAAATAATGACATATATATATAAATA 1320 1330
      GATAACTAAATAATGACATATATATATAAATA      240 1330
      CATAAATAAGTAAATAATGACATAGATAGCTAAATA 1080 1260
      CATAGATAAATAATGACGTACATAAATA          120  910
      CGTAGCTAAATAATGATCTATCTAAATA          960  770
      CATATATAGATAAATAATGACATAACTAAATAAATA 1320 1400
      CGTAGCTAAATAATGACGTAAGTAAATA          960  980
      TATAGCTAAATAATGAAGTAACTAAATA          360  840
      TATAGCTAAATAATGACATAACTAAATAAATA      360 1400
      CATAGATAAATAATGACATATATATATAAATA      120 1330
      CATAAATAAGTAAATAATGACATAACTAAATAAATA 1080 1400
      CATAGATAAATAAATAATGACATACATAGATAAATA 1200 1120
      AGTAACTAAATAATGACATAACTAAATAAATA      840 1400
      CATAAATAAGTAAATAATGATCTATCTAAATA     1080  770
      GATAACTAAATAATGATCTATCTAAATA          240  770
      TATAGCTAAATAATGACATAGATAGCTAAATA      360 1260
      TCTAGATAAATAATGAAGTAACTAAATA          720  840
      CATATATAGATAAATAATGACATACATACGTAAATA 1320 1190
      ACTAAGTAAATAATGAAGTAACTAAATA          480  840
      ACTAAGTAAATAATGACGTAAGTAAATA          480  980
      CGTAGCTAAATAATGACATACATAGATAAATA      960 1120
      GATAACTAAATAATGACGTACATAAATA          240  910
      CATAAATAAGTAAATAATGACGTAAGTAAATA     1080  980
      CATAGATAAATAAATAATGACATACATACGTAAATA 1200 1190
      CATAGATAAATAAATAATGACGTACATAAATA     1200  910
      CATAGATAAATAAATAATGACATAACTAAATAAATA 1200 1400
      CATAAATAAGTAAATAATGAAGTAACTAAATA     1080  840
      AGTAACTAAATAATGACGTAAGTAAATA          840  980
      CGTAGCTAAATAATGACATACATACGTAAATA      960 1190
      TCTAGATAAATAATGACATAGATAGCTAAATA      720 1260
      GATAACTAAATAATGACATAAATACCTAAATA      240 1050
      CATAGATAAATAAATAATGACATATATATATAAATA 1200 1330
      CATAGATAAATAAATAATGATCTATCTAAATA     1200  770
      GCTAAATAAATAATGATCTATCTAAATA          600  770
      TATAGCTAAATAATGACGTACATAAATA          360  910
      GCTAAATAAATAATGACATAGATAGCTAAATA      600 1260
      ACTAAGTAAATAATGACATACATACGTAAATA      480 1190
      CATAAATAAGTAAATAATGACATAAATACCTAAATA 1080 1050
      ACTAAGTAAATAATGACATAACTAAATAAATA      480 1400
      CATAGATAAATAATGAAGTAACTAAATA          120  840
      TATAGCTAAATAATGACATACATACGTAAATA      360 1190
      CGTAGCTAAATAATGACATATATATATAAATA      960 1330
      TATAGCTAAATAATGATCTATCTAAATA          360  770
      CATAGATAAATAATGACATAGCTAAGTAAATA      120 1680
      TATAGCTAAATAATGAGATACATATCTAAATA      360 2170
      CGTAGCTAAATAATGACATACGTAGCTAAATA      960 1960
      TATAGCTAAATAATGACATACGTAGCTAAATA      360 1960
      CATATATAGATAAATAATGACATAAGTAGATAAATA 1320 1820
      CATAAATAAGTAAATAATGAGATAAATATATAAATA 1080 2030
      CATATATAGATAAATAATGAGATAAATATATAAATA 1320 2030
      CGTAGCTAAATAATGACATACCTAACTAAATA      960 1540
      TCTAGATAAATAATGACATAGCTACATAAATA      720 1610
      CATATATAGATAAATAATGAGATACATAAATAAATA 1320 2100
      CATAAATAAGTAAATAATGAGATACATATCTAAATA 1080 2170
      TATAGCTAAATAATGAGATAAATATATAAATA      360 2030
      GATAACTAAATAATGACATACCTAACTAAATA      240 1540
      CATAAATAAGTAAATAATGACATAGCTAAGTAAATA 1080 1680
      CATAGATAAATAATGACATACGTAGCTAAATA      120 1960
      CATAAATAAGTAAATAATGACATAGCTACATAAATA 1080 1610
      CATATATAGATAAATAATGACATAGCTAAGTAAATA 1320 1680
      CGTAGCTAAATAATGACATAAGTAGATAAATA      960 1820
      GCTAAATAAATAATGAGATACATAAATAAATA      600 2100
      ACTAAGTAAATAATGAGATAAATATATAAATA      480 2030
      GATAACTAAATAATGACATAAGTACGTAAATA      240 1890
      GATAACTAAATAATGACATAGCTACATAAATA      240 1610
      ACTAAGTAAATAATGAGATACATAAATAAATA      480 2100
      TATAGCTAAATAATGACATACCTAACTAAATA      360 1540
      AGTAACTAAATAATGACATACGTAGCTAAATA      840 1960
      CATAGATAAATAATGAGATACATAAATAAATA      120 2100
      CATATATAGATAAATAATGACATATCTACCTAAATA 1320 1750
      CATAAATAAGTAAATAATGACATACCTAACTAAATA 1080 1540
      ACTAAGTAAATAATGACATACCTAACTAAATA      480 1540
      GCTAAATAAATAATGACATACCTAACTAAATA      600 1540
      CATAGATAAATAATGACATACCTAACTAAATA      120 1540
      CATAGATAAATAAATAATGACATAGCTACATAAATA 1200 1610
      GCTAAATAAATAATGAGATAAATATATAAATA      600 2030
      TCTAGATAAATAATGACATACGTAGCTAAATA      720 1960
      AGTAACTAAATAATGACATAGCTACATAAATA      840 1610
      CATAGATAAATAATGACATAGCTACATAAATA      120 1610
      ACTAAGTAAATAATGAGATACATATCTAAATA      480 2170
      AGTAACTAAATAATGAGATACATATCTAAATA      840 2170
      CATAGATAAATAATGACATAAGTACGTAAATA      120 1890
      CATATATAGATAAATAATGACATAGCTACATAAATA 1320 1610
      GATAACTAAATAATGAGATACATAAATAAATA      240 2100
      CGTAGCTAAATAATGAGATAAATATATAAATA      960 2030
      CGTAGCTAAATAATGAGATACATATCTAAATA      960 2170
      GCTAAATAAATAATGACATAAGTACGTAAATA      600 1890
      TCTAGATAAATAATGAGATACATATCTAAATA      720 2170
      CATATATAGATAAATAATGACATACGTAGCTAAATA 1320 1960
      CGTAGCTAAATAATGACATAAGTACGTAAATA      960 1890
      CATAAATAAGTAAATAATGACATAAGTAGATAAATA 1080 1820
      CGTAGCTAAATAATGACATAGCTAAGTAAATA      960 1680
      TATAGCTAAATAATGACATATCTACCTAAATA      360 1750
      GCTAAATAAATAATGACATAGCTAAGTAAATA      600 1680
      CATAAATAAGTAAATAATGACATACGTAGCTAAATA 1080 1960
      CATAAATAAGTAAATAATGACATATCTACCTAAATA 1080 1750
      CATATATAGATAAATAATGAGATACATATCTAAATA 1320 2170
      GATAACTAAATAATGACATATCTACCTAAATA      240 1750
      CGTAGCTAAATAATGACATAGCTACATAAATA      960 1610
      CGTAGCTAAATAATGAGATACATAAATAAATA      960 2100
      ACTAAGTAAATAATGACATAGCTAAGTAAATA      480 1680
      GATAACTAAATAATGACATAAGTAGATAAATA      240 1820
      AGTAACTAAATAATGACATACCTAACTAAATA      840 1540
      TATAGCTAAATAATGACATAAGTAGATAAATA      360 1820
      CATAGATAAATAATGAGATACATATCTAAATA      120 2170
      TATAGCTAAATAATGACATAAGTACGTAAATA      360 1890
      GCTAAATAAATAATGAGATACATATCTAAATA      600 2170
      CATATATAGATAAATAATGACATAAGTACGTAAATA 1320 1890
      TCTAGATAAATAATGACATAGCTAAGTAAATA      720 1680
      GCTAAATAAATAATGACATAGCTACATAAATA      600 1610
      TCTAGATAAATAATGACATAAGTACGTAAATA      720 1890
      CATAGATAAATAAATAATGACATAAGTACGTAAATA 1200 1890
      AGTAACTAAATAATGACATAAGTACGTAAATA      840 1890
      GCTAAATAAATAATGACATAAGTAGATAAATA      600 1820
      TATAGCTAAATAATGACATAGCTACATAAATA      360 1610
      CGTAGCTAAATAATGACATATCTACCTAAATA      960 1750
      CATAGATAAATAAATAATGAGATACATATCTAAATA 1200 2170
      TCTAGATAAATAATGACATAAGTAGATAAATA      720 1820
      CATAGATAAATAAATAATGACATATCTACCTAAATA 1200 1750
      CATAGATAAATAATGACATATCTACCTAAATA      120 1750
      GATAACTAAATAATGAGATAAATATATAAATA      240 2030
      CATATATAGATAAATAATGACATACCTAACTAAATA 1320 1540
      CATAGATAAATAAATAATGAGATACATAAATAAATA 1200 2100
      CATAGATAAATAAATAATGACATAAGTAGATAAATA 1200 1820
      GATAACTAAATAATGACATACGTAGCTAAATA      240 1960
      TCTAGATAAATAATGAGATAAATATATAAATA      720 2030
      CATAGATAAATAATGACATAAGTAGATAAATA      120 1820
      CATAGATAAATAAATAATGACATACGTAGCTAAATA 1200 1960
      CATAGATAAATAAATAATGACATACCTAACTAAATA 1200 1540
      TATAGCTAAATAATGAGATACATAAATAAATA      360 2100
      GATAACTAAATAATGAGATACATATCTAAATA      240 2170
      AGTAACTAAATAATGAGATACATAAATAAATA      840 2100
      TATAGCTAAATAATGACATAGCTAAGTAAATA      360 1680
      
      Slot "counts":
      61 x 270 sparse Matrix of class "dgCMatrix"
    Message
        [[ suppressing 270 column names 'CGTAGCTAAATAATGAGCTATATAAATA', 'ACTAAGTAAATAATGAACTAGATAAATA', 'TCTAGATAAATAATGAACTACGTAAATA' ... ]]
    Output
                                                                                   
      Gene4      9    6    3    7    3    2   10    7    5    9    5    7    3    1
      Gene27   315  357  114  123   58  139  139  126   67  246   82  176  114  179
      Gene38    14   12    6    .    5    3    9    6    6   14    3   17    2    4
      Gene52    49   32   15   21   20   36   18   22   19   37   17   45   32   47
      Gene66    26   17    8   11    .    3   32    5    1    7    6   24    7    7
      Gene73   131  227   69   83   85  139  116  141   97  129   56  133  168  139
      Gene76    36   22   11   13   15   22   15   23   13   56   15   35   22   17
      Gene90    14   23    6    6   16   11   18   14    8   37    8   18   15   16
      Gene121   53   86   37   31   28   22   49   46   25   77   21   38   41   34
      Gene274  190  173  101   97   62   75  141   82   52  228   71  155  107   82
      Gene389   59   31    4   27   13   11   27   30   21   50   19   18   43   26
      Gene396   36   58   14   19   15   22   40   28   30   65   16   79   30   38
      Gene416  111   86   51   73   38   49  101   60   50  116   71  130   47   45
      Gene421  118  102   72  110   84  105  129  132   64  229   55  165  109  107
      Gene425  445  330  174  221  107  210  422  182  193  423  179  442  243  249
      Gene463  102   88   88   86   23   27   88   63   23  102   44   99   39   53
      Gene12    80  173  122  143  182  349  218   60  244  103   95  125  360  249
      Gene37    12   14   12   36   38   36   31   10    8   12   12   33   46   39
      Gene43    49   74   32   41   69   47   63   51   88   64   36   49  106  129
      Gene47    58   61   52   34   81  117   76   21  100   88   48   37  169  143
      Gene87    11    2    7    3   31   43    3    5   25    3    6   17   60   38
      Gene100 3273 2208 2126 1855 3950 3740 2915 1831 4678 2471 1673 2466 6553 7317
      Gene169    7    3   14   20    4   12   16    4    8   11   11    8   13   15
      Gene171   59   29   45   25   47   53   54   27   76   48   59   35   78  116
      Gene240   36   14   50   20   29   69   39   16   49   25   19    8   90   66
      Gene243  112  101   75   80  115  184  197   82  134  171   79  114  221  190
      Gene264   40   43   29   24   68   86   68   28   85   64   31   76   98   68
      Gene286   47   45   28   32   50   46   28   17   45   39   20   36   73   58
      Gene322   19   16    2    6   38   34   24   18   11   14    2   15   33   20
      Gene345   37   29   65   54  115  110  126   32   76   40   80   29  157  145
      Gene360   26   19   16   12   38   82   25    9   49   31   11   32   79   40
      Gene362  184  145   94  125  298  384  184  105  332  152  121  160  534  442
      Gene379   23   17   19   25   29   41   16    4   51   28   12   10   45   34
      Gene497   17   17   15   19   24   13   25   22   17   23   16   10   33   25
      Gene15     1    9   11    8    4    5   29    2    8    2   11   10    4   14
      Gene61    74   42  138  106   50   46  212   29   66   53  116   35   81  111
      Gene69     9    7    8   20    4    3   11    1    3   23    5    4    3    4
      Gene106    7    4   16    4    5    9    3    4    3    4    3    6   13    .
      Gene120   18   35   45   26    8   17   53    7   17   37   36   15   25   23
      Gene182   18   19    5   10    3    6   18    3    6   12   12    5   16   11
      Gene200   72  113  442  315   69  115  542   71   83   91  284  108  129   90
      Gene208    8   12   55   29   20   31   58    4    7   16   18   14   22   10
      Gene213  171  141  155  146   56   83  230   94   50  167  131   83  105   53
      Gene219   25   21   72   65   33   18  101   10   32   27   92   16   42   30
      Gene275   13   12  133   67   26   35  134   12   19   31   68    8   23   15
      Gene284   47   39   85  105   32   57  111   38   51   61   84   55   51   40
      Gene313   19   29   83   65   46   46  146   22   39   49   64   31   60   59
      Gene324   69   68  236  171   54   76  330   64   68   94  159   77  115   62
      Gene327   14    9   63   40   40   11   59    6   16    4   31    8   22   15
      Gene339  115  138  204  173  121  153  374   65   65  133  178  110  139  178
      Gene343   79  108  192  200   50   70  276   79   50  101  202  114   74   83
      Gene348  232  222  238  281   64  121  349  129   82  259  184  140  140  114
      Gene382   21   50  100   69   30   38  139   19   29   37   61   38   57   60
      Gene411   23   36   31  105   42   24  166   20   24   35   46    5   43   37
      Gene428  249  320  341  374   98  133  422  207  102  365  253  210  157  146
      Gene437  355  282  587  464  219  195  877  157  169  251  510  394  213  375
      Gene462   87   74  128  137   33   61  186   44   53   61  106   72   54   59
      Gene469   60   67   73   79   55   75  181   32   53   60   75   75   53   61
      Gene470  439  395  530  683  344  546  822  298  240  448  596  197  404  485
      Gene481   44   51  114   97   32   32  190   34   38   65   66   59   45   21
      Gene499  404  352  881  802  302  405 1419  234  301  476  941  283  463  442
                                                                                   
      Gene4      4   18    5   10    6    2    4    .   19    3   12    8   14    3
      Gene27   138  192  174  180  126   59  303  154  133  162   75  344  253  119
      Gene38     3    7    7   10    3    4    8    4    9    5    7    7   21    9
      Gene52    14   53   30   57   15   12   63   46   20   37   20   36   33   18
      Gene66     7   14    8   11    8    9   11    8   10    5    9   17   18   12
      Gene73    76  171  159  114   86   40  196   88   63   78   66  127  171   72
      Gene76    18   10   18    8   12   11   47   19   10    9   14   36   31   22
      Gene90     9   11   11   15   10   18   18    7   11   18   12   30   16   17
      Gene121   35   35   38   19   16   25   55   21   24   44   20   30   69   49
      Gene274   60   96  103   83   72   42  244   82   69   98  101  169  140   71
      Gene389   23   34    8   26   19    7   77   27   14   16   10   38   14   13
      Gene396   17   32   38   12   23   16   99   32   23   22   15   66   64   22
      Gene416   28   46   76   32   84   35  129   52   55   43   51  120  106   95
      Gene421  101   73  123  116   83   34  188   84   64  117   50  218  134   94
      Gene425  191  270  277  311  239  133  623  204  187  242  141  586  427  230
      Gene463   41   33   52   40   73   35  106   49   58   28   39  108   76  104
      Gene12   210  324   57  385  196   74   94  257  136  290  112  117  119  163
      Gene37    24   36   11   43   13   18   22   29   18   43   25   19    6   20
      Gene43    73  139   47   89   38   26   47  106   47   78   34   64   37   29
      Gene47   110  181   36  183   57   48   74  133   42  115   60   72   57   50
      Gene87    34   30   11   42    4    6   12   33    6   36    9    5    4    2
      Gene100 4217 6255 1409 4151 2168 1874 2202 4633 2394 3570 1960 2949 2683 2508
      Gene169    6   10   14   27    7    6    5   15   25   17   13    4    5   19
      Gene171   35  117   17   80   56   48   51   50   31   67   39   44   44   24
      Gene240   55   71    9   37   18   18   26   45   15   30   15   25   37   19
      Gene243  172  207   63  221  113   80   76  218  119  188   64  131  156  127
      Gene264   68   94   31   80   18   10   63   86   38   45   14   64   38   29
      Gene286   42   46   15   52   23   14   28   47   27   26   19   29   20   25
      Gene322   26   34    4   49   21   10   43   38    7   13   18   19   12   10
      Gene345   94  142   32  166   63   65   68  119  104  102   66   63   35   81
      Gene360   46   90   15   43   14   19   30   56   11   19    6   24   31   20
      Gene362  277  290   96  402  153   91  266  252  157  283  148  222  174  138
      Gene379   13   53    9   42   28   22   18   29   11   63   20   22   16   15
      Gene497   20   20   15   21    4   11   23   20   12   17    5   29   35    9
      Gene15     6    9    2    5   12    5    3    7    8    5    5    5    2    8
      Gene61    48   78   61   70  134   66   80   68   93   62  104   69   65  117
      Gene69     3   22    9    2   20    7   10    7   23    3   14    8    1   15
      Gene106    2    3    3    1   13    6    8    4   22    3    6    6   10   12
      Gene120   36   15   11   33   10   34   21   25   57   24   30   15    9   23
      Gene182    5   11    4    6   18    9    8    4   10    7   33   12    3   21
      Gene200  123   80   57   78  330  213   78   41  329   81  206  122   98  322
      Gene208   12   12   12   12   29   17   16   19   44   27   48   13   16   14
      Gene213   56   93   84   81  166  137  196   77  154   84  148  143  117  231
      Gene219    8   35   13   41   71   69   29   32   85   18   87   38   11  153
      Gene275   15   32   46   34   72   88   45   16   80   45   98   34   29   94
      Gene284   44   41   45   66   66   52   87   50   58   69   84   89   47   88
      Gene313   30   38   20   52  106   37   21   52   72   29   88   28   36   68
      Gene324   77   77   29   74  200  141  105   92  248   82  147  106  119  180
      Gene327   14   12    9   12   49   26   18   15   58   17   31   18   19   47
      Gene339  115  109   53  152  323  167  198  119  229  151  173  121  220  209
      Gene343   30   51   57   72  293  146  105   78  220   57  245   98   58  144
      Gene348  101  127   63  146  275  132  285  106  367   60  179  182  217  316
      Gene382   42   65   23   62   48   37   47   48   80   87   69   53   44   72
      Gene411   37   40   11   28   91   49   31   31   66   41   68   33   23   73
      Gene428  106  151  193  202  310  270  444  134  357  186  289  327  315  361
      Gene437  289  319  149  385  563  407  383  358  590  267  406  499  246  495
      Gene462   76   91   50   71  122  105   41   61  115   49  109   85   79  124
      Gene469   48   77   31   67  153   61   78   60   84   53   72   60   33  110
      Gene470  261  364  223  492  551  499  361  303  519  265  535  415  332  660
      Gene481   59   44   54   39   59   99   44   51   98   47  121   71   46   71
      Gene499  364  554  273  474  874  643  393  407 1017  337  846  417  373 1106
                                                                                   
      Gene4      8    8    1    1    5    8    6    9    7    2    5    8    5    2
      Gene27   181  200   99   83  174   85  152  280   82  117   83  343   93  111
      Gene38    10    8    3    1    3    2    4   11    .    .    8   21    3    4
      Gene52    15   52   26   40   45    8   39   50   23   32   10   45   27   45
      Gene66    20   11    3    2   12    7   11   11   12    8    9    8    5    6
      Gene73   110  145  101   95  161   52   81  163   81   75  105  208   54  179
      Gene76    19   26   15   16   22    9   11   55   13   12   31   43   10   24
      Gene90    24   14    8    7   13    3   13   45    4    5   13   19    7   27
      Gene121   52   26   21   36   51   10   25   49    9    9   38   60   32   20
      Gene274   95  106   57   54   75   48   57  203   83   43   65  186   55   67
      Gene389   45   19   16   19   54    7   12   71   21   24    9   56    8   17
      Gene396   29   28   19   34   34   16   17   44   12   42   33   47   14    9
      Gene416  110   56   25   25   73   52   58  163   34   52   57  114   27   60
      Gene421   93  132   38   46   91   48   68  219   94   61  102  184   42  118
      Gene425  294  345  146  147  191  180  288  395  173  147  190  517  113  228
      Gene463   48   83   31   20   20   39   44   87   17   24   85   86   15   32
      Gene12   141   96  235  209  257   99  134  174  203  198  206  138  146  340
      Gene37    47    2   14   24   52    4    2   11   32   23   22   24   42   18
      Gene43    67   68   70   82  119   32   41   73   95   59   43   50   74   75
      Gene47    77   27  116  143  167   51   42   90  103   92   64   39   98  130
      Gene87    12    7   16   17   56    3    9   16   30   21    2   15   17   18
      Gene100 3759 1559 4605 4430 5007 1355 2569 2796 3943 3629 2542 2737 3529 5562
      Gene169   18   16    7   10    6   11    7    3   11    1   12   10    4    9
      Gene171   73   49   69   55   86   35   39   38   59   56   31   61   27   91
      Gene240   28   13   35   32   34   23   26   29   36   19   23   23   25   40
      Gene243  138  122  215  131  167   88  126  149  167  141  105  128  117  218
      Gene264   61   35   36   50  112   23   29   87   62   63   30   26   41   87
      Gene286   30   36   28   55   50   22   34   31   57   27   24   30   41   70
      Gene322   12   19   36    8   29    7    2   11   19   22    7   20   12   34
      Gene345  112   34  100   93  141   68   77   30  119  116  110   42   80  140
      Gene360   22   20   36   50   42   10    9   34   46   31   17   26   34   64
      Gene362  142  193  191  273  357  100  162  218  255  182  103  238  214  380
      Gene379   33   20   21   14   47   13   11   23   20   15   11   24   25   71
      Gene497   30   24   15   30   55   18    7   23   16   21   12   27   22   32
      Gene15    17    2    6    6    7    4    2    4    8   15    9    3    3    6
      Gene61   170   52   31   49   70   76  105   62   40   37   77   52   48   72
      Gene69    15    3    .    5    4    1   22   14   12    4   10    4    .    1
      Gene106    7    4    2    7    1   11    5    8    .    .   10   10    5    1
      Gene120   52    9   33   21    5   38   32   20   11    9   36   23   15   19
      Gene182   33    8   10    5    5    6   18    7   12    6   21    6    4    9
      Gene200  399   96   86  129   91  222  284  114   82   37  350   90   36  106
      Gene208   51    5   13    7   12   16   24   22   13   13   24    8   20   14
      Gene213  196   67   64   52   86  139  145  143   64   77  178  123   64   95
      Gene219  110   11    5   23   25   44   89   29   35   17   84   34   16   12
      Gene275   85   36   22   46   29   48   36   35   28   13   74   57   22   27
      Gene284  143   38   32   40   44   71   79   65   32   61   89   89   30   50
      Gene313   96   17   46   54   32   56   86   32   27   29  112   20   24   31
      Gene324  345  114   40   78  114  148  135  130   41   27  161   97   48  111
      Gene327   58    1    7    9   25   32   65   23   13    6   46   12    5   20
      Gene339  335   85   95   84  148  142  237  150   61   71  234   90   93  220
      Gene343  236   81   45   47   69  211  191   90   65   41  279  150   41   67
      Gene348  487  151  108   91  121  157  273  205   79   92  207  221   52  109
      Gene382  152   27   28   45   50   55   53   28   63   28   71   45   34   43
      Gene411   96   21   32   28   33   52   54   16   19   14   71   17   16   46
      Gene428  626  305  116  127  125  263  289  326   93   89  297  332   83  177
      Gene437  766  352  184  244  384  237  325  356  204  241  568  402  238  382
      Gene462  264   49   37   76   66   75  102  122   52   37  112  128   50  100
      Gene469  186   43   70   58   78   48   88   48   65   33  140   68   46   90
      Gene470  874  311  257  372  300  511  676  544  195  275  638  378  266  519
      Gene481  112   41   48   33   63   97   49   60   40   23   92   72   25   56
      Gene499 1848  300  288  350  422  736 1120  556  341  310 1173  296  238  408
                                                                                   
      Gene4      8    1    4    1    4    3   30    4   14    3   11    .    6    9
      Gene27   109  180  243   92  184  161  321  275  339   92  190  118  129  286
      Gene38     8    5   10    6    3    9   11    8   10    8   14    3    3   22
      Gene52     4   27   35   32   52   14   52   26   59   19   31   30   32   39
      Gene66     2    4   12   10   12   17   19    8   14   19   17    4   10   14
      Gene73    35  134  161   71   93   91  196  147  142   73  121   89  137  141
      Gene76    17   22   34   13   14    9   40   15   50    5   27    9   24   37
      Gene90    11   21    8   13    7    8   32   21   28    7   16    3    7   22
      Gene121   18   32   44   14   36   30   62   37   77   23   34   12   50   40
      Gene274   80  104  163   71  124   66  163  112  166   54  131   46   73  150
      Gene389   17   24   38   25   19   23   41   50   81   11   37   17   36   78
      Gene396   26   26   43   12   20   25   90   41   33   22   31   20   43   54
      Gene416   48   85   96   27   49   71  143  164   96   63   87   51   55  104
      Gene421   89  140  142   29   57   55  176  179  188   76  123   68  105  139
      Gene425  187  397  520  152  303  190  496  344  510  197  251  132  177  417
      Gene463   30   49   72    7   39   73  107   82   88   63   31   21   47  122
      Gene12   120   78  141  164  316  164  158  105   96  136   64  188  250  129
      Gene37    10    3    6   17   54   25   34   33   11   11    1   21   41   14
      Gene43    23   35   53   83  176   48   86   62   58   21   42   83   72   45
      Gene47    34   59   29   76  176   52   78   53   69   51   33   70  188   41
      Gene87    15    6    9   17   48    5   21    9   35    6    7   43   45   17
      Gene100 1723 1972 2424 3826 5134 2478 3308 2008 1724 1956 1314 3910 4545 2810
      Gene169    7    3   14    5   10   16    9    5    5    4    1   13   19    6
      Gene171   31   41   44   52  109   45   35   40   31   21   34   54  116   19
      Gene240   11   18   13   45   55   14   23   13   29   23   18   37   58   19
      Gene243   55   83  108  143  257  109  166  111  127   96   55  124  184  102
      Gene264    9   35   50   25   90   29   63   55   63   17   38   49   93   49
      Gene286   27   24   24   30   47   16   39   40   41   20   29   28   30   36
      Gene322    3   15   12    7   25    5   29    7   25    9    8   20   43    8
      Gene345   53   30   60   82  118   69   40   40   44   56   31  113  127   43
      Gene360   15   15   33   37   75   10   45   33   22   19   19   19   59   21
      Gene362  156  134  173  206  368  134  289  142  164   67  141  253  322  134
      Gene379   15    6   27   21   57   11   24   19   21   14   19   22   37   21
      Gene497    3   23   27   22   23   18   33   15   12    5   12   30   29   10
      Gene15     9    8    5    3   14    7    3    2    2   12    .    3    7    3
      Gene61   103   72   70   27   54  106   80   62   79  112   40   34   81   68
      Gene69     3    1    6    4    1   12    5    7    1    9    .    3    2    4
      Gene106    5    7    5    2    3    8    1    1    7    3    9    1    2    .
      Gene120   27    6   22    8   23   32   25   22   26   22   13   14   46   18
      Gene182    6    4   11   12    7   19   11   12    9   12    2    4   15    8
      Gene200  261   77   78   66  109  271  110   99  130  239   91   45  116   84
      Gene208   33   12   10    6   17   49   10   10    5   11   10   14   19    3
      Gene213   96   78  175   43   87  161  156  101  136   87   50   38  111  113
      Gene219   73   12   24   13   37   80   25   18   20   62   28   25   38    9
      Gene275   62   27   29   16   33   99   28   38   13  104    2   24   26   23
      Gene284   46   33   47   29   33  108   75   75   84   44   53   38   88   69
      Gene313   62   23   32   45   51   76   21   20   31   43   13   40   50   31
      Gene324  160   78   93   83  144  133  116   94   97  127   58   74   85   76
      Gene327   38    6   16    7   29   19   11   10   21   30    9    2   11   17
      Gene339  120   85  196   75  185  260  118  160  196  112   48   62  152  124
      Gene343  140   87   83   46   80  195  144   66   89  146   52   39   71   95
      Gene348  169  107  172   42  105  284  278  214  241  186  142   84  125  209
      Gene382   84   24   38   32   51   91   42   24   34   56   25   60   51   21
      Gene411   45    2   34   24   37   37   18   21   13   44   19   26   30   17
      Gene428  218  155  321  123  178  363  441  273  349  278  195   86  150  346
      Gene437  507  191  261  176  303  458  501  347  311  390  179  209  315  307
      Gene462   98   74   85   40   67  106   70   49   64   91   39   52   46   88
      Gene469   93   56   41   44   59  116   61   62   48   90   39   45   87   93
      Gene470  438  282  492  256  322  497  423  253  387  331  237  197  443  364
      Gene481   98   36   22   43   56  127   64   43   48   81   33   34   35   48
      Gene499  671  273  306  261  503 1007  412  405  398  788  340  320  389  375
                                                                                   
      Gene4     11    2    .    7    8    8    8    1    8    .    6    4    7    3
      Gene27   229  165  125   93  158  341  115  115  217   89  187   68  150   94
      Gene38    13   12    3    6    5   11    2    3    4    2    4    .    8    1
      Gene52    27   13   36   17   20   41   51   21   26    7   18   35   12   17
      Gene66    16    7   13   29   10   16    6    1    8    7   12    3   11    5
      Gene73   193   92   76   46  127  170  118   95  150   99  113   53   35   75
      Gene76    23   15   10   17   10   29   21   14   55   20   25   11   23   16
      Gene90    12   16   25    4   16   30    6    4   12   12   33    4    5    6
      Gene121   54   23   26   20   37   47   28   35   63   33   47   36   39   31
      Gene274  109   76   39   62   90  180   88   72  127   74  177   83   62   46
      Gene389   43   17   17   20   19   40   29   28   43   22   40   13   28    7
      Gene396   26   34   21   19   23   70   23   34   61   31   50   32   32   40
      Gene416   89   61   67   56   59  118   79   25  104   67   72   23   42   45
      Gene421   87   90   44   48  132  207  114   65  148   59  116   48   68   68
      Gene425  327  269  178  190  286  406  381  194  419  190  315  160  209  161
      Gene463   72   46   62   48   80   59   20   21   70   50   68   29   42   67
      Gene12   141   61  139  151  301  162  284  285   95  132   89  206  164  135
      Gene37     7    4    6    5   36   33   33   34   17   26    6   14    7   12
      Gene43    29   41   33   44   83   48  120   67   18   19   27   68   34   39
      Gene47    38   37   65   28   68   54  160   81   29   32   30  107   32   22
      Gene87     8    4   13    2    9   19   29   28   13    5   11   17    8    6
      Gene100 1730 1661 1831 2046 3083 3352 5594 4167 2109 1991 1823 3346 1950 2058
      Gene169    7    4    7    6    9    5   24   25    3    3    3    5   12    4
      Gene171   49   27   36   31   50   45   84   97   43   37   27   77   27   41
      Gene240   20   14   20   28   17   32   45   50   18   15    8   16   23   14
      Gene243   98   93   53   56  146  178  205  155   56   66   71  117  114   73
      Gene264   41   36   14   21   43   53  111  108   33   44   22   45   26   31
      Gene286   13   19   20   37   32   34   66   51   24   10   27   39   29    8
      Gene322    7   12   10    3    4   17   31   27    7    3   19   24    4    1
      Gene345   40   14   51   81  111   55  143  129   32  101   16  135   59   60
      Gene360   21   19    4   13   22   37   70   41   13    5   15   23    6    4
      Gene362  167  100   80   96  190  146  398  358  145  131  125  257  134  157
      Gene379   16   20   17   17   20   25   41   21   14    2   13   21   14   20
      Gene497   39   12    2    9   16   46   43   25    9   19    7   26    5    6
      Gene15     1    1   12    8   11    4   11   12    .    8    .    5    5    9
      Gene61    51   35  111   82  157   52   75   39   54   78   50   34  118   89
      Gene69     7    2   10   10   19    4    4    5    7   10    .    1   17    5
      Gene106    1    3   16   11   10    7    1    2    8    1    5    7    3    6
      Gene120   15    8   14   17   46   39   16   26   24   34   37   18   39   13
      Gene182   14    1    6    8   36    5   27   14    4   14    6    5    7    .
      Gene200   53   62  254  366  413  103  125   85   46  311   89   68  439  308
      Gene208    7    2   28   33   40   15   23   22   13   39   13   12   40   21
      Gene213   94   60  141  163  159  133   94   88   75  164   84   35  141  143
      Gene219   27   30   81   67  106   13   32   14   14   67   18   36   46   46
      Gene275   32    4   70   69   95   18   24   32   14   59   15   14   64   52
      Gene284   71   28   66   75   92   73   99   41   39   91   34   49   57   66
      Gene313   18   22   57   86  145   29   41   20   33   47   35   30   67   57
      Gene324   83   69  135  164  312   86  173  150   90  143   83   65  154  106
      Gene327   21    5   20   28   40   28   10   13    8   41   10    6   42   20
      Gene339  101   80  291  133  235  147  202  108  101  134   95  107  258  179
      Gene343   91   73  185  122  236  203   77   36   69  169   48   29  159  129
      Gene348  186  121  207  129  320  350  174   79  195  237  170   71  211  218
      Gene382   19   27   70   56  121   23   65   52   24   58   20   36   77   66
      Gene411   18    4   67   74   73   26   25   12   14   54   23   19   45   55
      Gene428  249  160  332  238  530  273  180  112  139  298  143   80  319  271
      Gene437  213  189  459  371  756  347  255  263  271  353  258  166  423  294
      Gene462   42   63   68  138  116  110   68   65   42  106   59   60   97  104
      Gene469   35   22   90   92  148  109   80   59   53  119   36   56   99   83
      Gene470  259  232  519  528  756  392  389  302  280  556  373  319  423  652
      Gene481   43   30  163  135  188   53   63   49   44  106   38   28  129   90
      Gene499  264  294 1055  795 1233  366  474  369  256 1137  267  295 1192 1221
                                                                                   
      Gene4     11    8    3   20    7   10   20   10    .    8    4    4    5   15
      Gene27   202   96  128  310  138  208  184  312   81  312  138  130  246  251
      Gene38     6    7    9   16    5    9    7   13   11    9    6   12   19    6
      Gene52    38   11   14   44   20   31   28   32   10   43   13   32   43   32
      Gene66    20   12   10   18    4   15   14   13   10   11   12    9   14   16
      Gene73   135   92   78  221  101  130  113  137   62  214   48  132  149  118
      Gene76    65   11   29   41   11   17   26   17   11   25   34   32   24   34
      Gene90    21   10   18   31    8   14   16   15   11   23   16   12   19   19
      Gene121   50   33   30   75   42   54   37   59   19   46   19   34   47   61
      Gene274  166   96   89  175   79  113  184  182   65  208   58   98  106  177
      Gene389   19   21   12   34   19   23   31   23    9   21   25   17   69   27
      Gene396   56   33   29   42   20   36   37   56   26   67   35   30   61   57
      Gene416  103   74   63  124   49  137  121  113   39  106   80   35  168  113
      Gene421  106  115   95  135   94  127   72  146  106  263  106   61  170  177
      Gene425  363  231  204  511  143  333  369  336  177  446  225  208  507  426
      Gene463   80   45   62  113   24   79   67   88   67   82   75   44  104   51
      Gene12    90  129  161  138  231  156  123   59  119  121  139  310  129   84
      Gene37    32   12   19   25   27    9   18    8   12    9   18   29    5   24
      Gene43    56   38   48   86   89   37   44   42   35   79   38   64   54   33
      Gene47    46   39   65   81  155   49   43   47   25   38   62   93   40   40
      Gene87    18   13    7   10   26   17   17    1   14   14   14   25   18   12
      Gene100 2382 2150 2380 2739 3952 2506 2424 1873 1929 3188 3218 5049 2701 2441
      Gene169    3   11    4    8   20    2    6   13   18    6   26   15    5    6
      Gene171   66   36   42   46   67   45   27   75   29   36   58   75   31   43
      Gene240   32   37   15   17   38   17   17   23   30   10   18   46   35   14
      Gene243   92  106  120  133  196   92  158  142   95  109  104  179   81  124
      Gene264   47   52   23   72   71   45   35   42   26   55   19   55   38   48
      Gene286   28   35   17   40   60   25   14   27   19   35   17   43   23   31
      Gene322    7    4    9    9   21   24   18    8    8   27   11    6   28   23
      Gene345   40   80   72   38  111   51   38   18   96   49   96  102   36   51
      Gene360   50   19   13   22   27   36   24   24   16   42   29   51   11   19
      Gene362  164  118  158  235  353  178  216  206  108  180  162  344  148  157
      Gene379   16   20   17   15   37   26   18   26   24   12   29   40   29   17
      Gene497   33   16   30   26   33   28   23   25   11   27   15   18   20   23
      Gene15     1   11    8    4    2    2    1    1    3   12    9   14    3    8
      Gene61    67  119  111   49   58   53   76   91  116  105  109   95   67   76
      Gene69     9    5   11    .    8    6    2    5   22    6   25    1    8    6
      Gene106    5    4    3    6    6    6    1    3   10    3    8    3    5   13
      Gene120   34   47   38   27   27   26   23   25   49   25   66   12   28   12
      Gene182    3   37   20   12    7   12   13    5   13   10   22   11    6   11
      Gene200   70  201  296   96   97   78   90   84  295   94  319   93   78  137
      Gene208   12   24   27    4   12   11    8   13   20   15   42    9    7    2
      Gene213  105  153  169  144   29   74  131   90  146  159  217   53  112  124
      Gene219   26   86   89   40   29    5   19   28   68   21  108   26   27   24
      Gene275   22   68   81   67   37   13   30   25   68   10  110   38   21   27
      Gene284   59   72  122   91   53   84   80   90   88   53  101   47   53   56
      Gene313   22   80   57   37   36   23   50   21   35   53   81   11   18   28
      Gene324  103  283  102  131   85   80  118   61  138  104  215  100   79   83
      Gene327    8   34   49   35   13   10    7    4   39   14   54   13   18   16
      Gene339  155  229  352  152   80   99  126  162  209  189  298  193  128   81
      Gene343  112  219  225  146   52  113  120  114  185   92  170   80  108   93
      Gene348  274  210  208  282  110  206  130  134  226  216  271  131  226  167
      Gene382   27   78   98   38   65   16   30   38   82   26  103   48   29   21
      Gene411   26   58   69    5   21   11    4    9   68   10   58   27   14   20
      Gene428  259  324  355  336  129  247  339  246  241  307  437  139  289  274
      Gene437  240  472  514  301  274  211  229  329  292  301  405  242  321  268
      Gene462   43  163  171   77   46   66   47   46   98   89  142   54   71   49
      Gene469   28  132   93   60   49   44   46   71  125   53  116   29   68   50
      Gene470  325  792  466  342  330  311  339  277  528  502  938  362  332  329
      Gene481   26  125  154   64   50   52   55   24   64   72  223   38   34   45
      Gene499  457 1208 1159  410  426  459  336  367 1151  446 1514  466  280  485
                                                                                   
      Gene4      7    5   19    .    3    3    .   11    9    9    1    .    5    5
      Gene27   171  213  220  151  110   90  109  126  268   83  115   89  106   91
      Gene38     5    .    9    4    3    .    5    5   13    1    6    .    6   14
      Gene52    14   25   70   30   35   24   27   53   44   19   33   23   26   38
      Gene66    21   13   11    2   10    3    5   11   10    4    4    5    4    3
      Gene73    78   98  158   60  150  125  155  111  115  125   87  114  121   78
      Gene76    10   27   12   11   23   20   20   22   44   22    4   29   18   15
      Gene90    10    8   25    6   10    2   13   18   11   12    4    7    5    3
      Gene121   21   58   43   26   38   33   32   35   52   26   22   25   32   19
      Gene274   56   55  141   59  111   68   92  109  163   57   34   64  105   63
      Gene389   14   22   39   16   34   11   21   33   35    8   21   25   15   20
      Gene396   15   24   32   13   35   16   11   37   70   29   34   33   24   17
      Gene416   47   67   77   31   65   48   37   70  116   21   30   30   45   27
      Gene421   74   84  131   76   84   56  108  120  114  157   40   60  113   64
      Gene425  205  216  321  212  230  139  225  231  445  224  197  225  222  135
      Gene463   55   80   78   26   46   22   41   51   94   25   21   41   34   16
      Gene12   148  180   79  200  241  182  227  313  132  165  112  173  272  191
      Gene37     9    5    9   13   42   32   25   79    6   27   20   31   22   29
      Gene43    32   51   32   67  110   68  118  109   50  104   70   60  134   64
      Gene47    48   60   29  111  196   94  140  189   58  137   87  113  111  101
      Gene87     7    6    8   24   50   19   32   42   14   35   36   30   48   22
      Gene100 1913 2564 1726 3755 5785 3631 4597 6932 2143 4224 4072 4526 4631 3268
      Gene169    4   14    5   21   41   22   17   20    7    8    3   10   19    9
      Gene171   26   24   48   47   58   61   78  111   29  102   57   68   67   64
      Gene240   13   13   35   32   55   38   64   72   23   60   39   22   46   15
      Gene243  110   90  127  130  223  158  177  216  100  157  115  214  201  125
      Gene264   37   36   31   43  101   50   62  122   41   85   38   52   60   31
      Gene286   26   24   26   52   53   39   65   55   23   54   20   39   55   27
      Gene322   15   26   17   24   15   19   26   29   14   21   21   16   28   16
      Gene345  103  122   40  102  151   94  191  155   29  138   65   69   98  139
      Gene360   16   12   22   61   78   43   53   53   19   38   61   40   64   42
      Gene362  123   85  114  340  345  230  426  507  167  278  202  306  279  235
      Gene379   25    6   11   45   30   27   40   38   11   30   29   24   46   28
      Gene497    7   12   23   17   26   28   32   57   34   22   13   14   18   24
      Gene15     9    2    .    5   11   10    3   12    .   13   11    5    9   15
      Gene61   101  149   52   31   56   42   86   78   53   48   28   61   68   48
      Gene69    28    9    3    2    6    2    5    1    2    8   11    1    1    4
      Gene106    3    5    5    5    .    7    6    4    6    .    .    1    4    3
      Gene120   28   53   24   23   13   22   10   37   12   16    9   15   22   23
      Gene182   12    9    4    7    5   13    5    7   13    5    3    8    8    8
      Gene200  216  438   56   71   73   50   67  117   88   80   56   87   66   89
      Gene208   36   41    1   18   29   26   11   27    7   17   15   14   22   15
      Gene213  150  182   97   70   90   66   95   99   89   68   50   64   53   45
      Gene219   58  102    2   20   25   27   32   21   16   22   29   33   13   17
      Gene275   63   59   22   21   36   16   16   43   32   18   20   30   13   24
      Gene284   59   93   29   64  107   54   67   59   43   53   39   30   63   28
      Gene313   63   50   23   32   54   43   75   71   42   28   14   21   36   29
      Gene324  173  181   61   95  143   66  126  196   80   75   77   50   69   61
      Gene327   25   39    3   10   16   20   18   24   17   22    8    6   11    3
      Gene339  118  194  117  112  121   86  120  168  123  115  110   60  105   93
      Gene343  150  304   94   43   95   35  126   78  118   38   45   70   59   56
      Gene348  298  342  214   95  126   77  104  167  203  120   63   57  117   81
      Gene382   48   92   17   35   42   35   72   68   24   38   19   31   60   15
      Gene411   62  104    8   23   25   31   47   30   21   28   14   26   25   39
      Gene428  282  416  202  143  144  100  112  223  263  103  120   70  125   94
      Gene437  504  575  205  273  295  231  289  344  229  204  233  222  316  156
      Gene462  123  104   34   54   78   34   89   78   68   28   34   49   64   25
      Gene469   93  114   31   44   49   45   80   80   55   48   64   52   51   55
      Gene470  420  632  246  275  379  312  339  571  353  429  315  349  518  148
      Gene481  139  129   29   29   38   20   44   37   54   47   31   29   61   26
      Gene499 1053 1262  268  432  345  326  475  477  436  385  338  315  424  253
                                                                                   
      Gene4     14    4    3    9    2    2    6    1    5    7   21    4    7   13
      Gene27   278   96  219  293   98   91  148   58  263   89  290  321  214   76
      Gene38    15    4   11   10    5    5   14    .   28    .    1    8   10    1
      Gene52    55   29   31   33   26   27   52   27   51   22   53   51   34   36
      Gene66     5   15    5   14    8    .    7    3   18    8    7   16   11    9
      Gene73   148  105  179  234   41   63   93   60  232   64  106  176  147   87
      Gene76    29   36   33   23    5    8   13   10   55   14   55   36   45   13
      Gene90     9    7   26   26    2   14    9   12   19    8   15   23   21    1
      Gene121   38   29   35   69   28    9   52   26   71   16   71   60   54   29
      Gene274  164   98  122  182   42   63  112   47  262   70  223  137  172   79
      Gene389   29   10   31   31   14   14   27   31   81   33   36   25   56   14
      Gene396   45   28   52   56   16    6   51   16   62   30   52   41   43    9
      Gene416  115   55  111  184   23   26   45   19  233   77  144  109  171   31
      Gene421  187   71   96  114   40   51  102   40  249  129  123  120  130   60
      Gene425  316  272  399  474  134  131  258   96  549  202  418  355  368  215
      Gene463  105   69   71   99    9   42   40   20  122   65   80   65   98   31
      Gene12   106  206  103  139  299  205  276  122  188  134  116   81   74  244
      Gene37    29    9   14   18   11   31   60   10   19   17    7   19    5   23
      Gene43    56   55   35   74   45   46  167   54   67   24   43   29   52   56
      Gene47    45   71   71   64  148   65  163   60   65   43   51   76   39  105
      Gene87     7    6   11   16   20   30   42   20   42    2    2   10    6   39
      Gene100 1762 2992 1806 2788 2762 3642 6814 3450 4038 1783 2987 2646 2557 3821
      Gene169    4    9    1    6    6    8   25    7   13   18    6   10    2   19
      Gene171   42   42   28   42   56   39   67   54   76   23   42   50   25   71
      Gene240   29    9   14   15   38   33   49   45   35   24   20    9   18   25
      Gene243   76  162   93  116  111  144  179  170  168   94  134  133  109  154
      Gene264   51   48   32   40   41   52   66   62  104   30   45   40   36   62
      Gene286   29   27   16   24   46   63   63   24   46   31   28   16   20   33
      Gene322   26   16   10   16   11   14   14   34   11    4   14   15   15   29
      Gene345   24  100   47   33   71   72  133   74   47   94   44   30   49   66
      Gene360   13   11   15   18   34   25   60   39   42    8   28   26   35   36
      Gene362  211  157  172  182  198  189  358  221  259  144  253  175  118  313
      Gene379   19   14   20   22   21   28   37   18   23   26   14   13    7   32
      Gene497   24   21   27   33   26    9   23   25   37   16   52   15   31   19
      Gene15     7   27    1    .    5    7    4    5    6    9    3    .    1    8
      Gene61    47  196   47   66   32   44   68   40   52   82   61   71   68   47
      Gene69     6   18   10    7    7    4    6    4   11   18    2    5    6    1
      Gene106    9   12    8    7    3    7   11    2    9    4    4    7   10    3
      Gene120   15   41   22   20   11    2   32   12   18   41   16   13    4   17
      Gene182    5   28    3   17    4    5   11    .    7   32    8    5    8    5
      Gene200  108  436   70   97   69   55  130   76   98  280   98   62   77   89
      Gene208    8   31    7   12   15   13   22   14   12   34    5   15    5   19
      Gene213   98  142   86  195   39   62   45   25  144  127  125  103  107   56
      Gene219   23  109   13   10   18   27   20   12   48   79   23   20   16   16
      Gene275   36  118   36   20   12    8   19   11   41   67   28   46   30   42
      Gene284   51   88   47   51   41   18   39   25   90   89   71   63   49   26
      Gene313   18   95   19   25   20   43   54   40   33  101   15   29   38   58
      Gene324  124  250   61  112   57   55   92   50  156  211   89  103  104   74
      Gene327    9   30   15   17   11    5   11    9   18   39   29    8   18   14
      Gene339  117  341   69  148   74  115  148   99  180  219  125  124  146   98
      Gene343   75  261   85  137   37   26   67   46  159  227   68   87  100   58
      Gene348  220  393  195  149   52   86   93   85  250  326  193  213  171   66
      Gene382   24   98   20   22   37   43   64   43   23   54   27   23   20   58
      Gene411   29   91   22   21    6   27   20   18   28   50   19   14   23   21
      Gene428  282  386  173  302  116  101  121   83  361  383  291  298  316  120
      Gene437  257  562  242  375  128  180  387  143  416  540  313  223  187  193
      Gene462   70  182   67  134   34   35  116   38   87  142   71   53   93   55
      Gene469   51  126   41   45   36   68   79   35   49   88   50   59   89   55
      Gene470  335  811  257  475  190  201  382  227  669  514  387  351  288  266
      Gene481   55   68   31   33   36   21   31    7   62  132   37   52   31   51
      Gene499  366 1419  298  345  339  246  389  214  496 1110  311  413  245  307
                                                                                   
      Gene4      1    2    3    9   15    6    3    5    9    9    1    6    8    .
      Gene27    56   86  218  120  106  114  107  112  165   64   61   72  138  144
      Gene38     7    1   19    1    2    4    6    5   11    3    1    .    4    5
      Gene52    29    5   23   41   13   35   32   31   32   40   23   28   55   22
      Gene66     3   12   11    7    2    4   14    4    6    9    6    2    2   12
      Gene73    85   87   93   84   85   95   94   95  166   89   74   78   92   99
      Gene76    12   21   39   21   11   14   11   12   21   18    9   15   11   21
      Gene90     7    4    4    6   15   10    7    4   18    4    3    4    3   12
      Gene121   23   29   36   30   27   36   25   31   80   22   31   24   17   47
      Gene274   36  113  104   88   61  102   66   70   97   49   74   56   71   88
      Gene389   15   32   54   27   14   26   18   20   22   24   13   21   23   26
      Gene396   33   23   53   46    6   19   17   17   69   31   18   24   22   32
      Gene416   32   71   74   59   44   25   50   40   60   21   29   19   49   72
      Gene421   66   49  128   34   54   52   80  104   94   41   38   75  109  101
      Gene425  183  166  366  235  178  160  195  136  435  151  117  143  198  297
      Gene463   22   60  105   28   48   31   42   35   76   17    9   21   41  101
      Gene12   199  153   86  217  122  249  244  219   75  258  132  199  258  140
      Gene37    17   22   12   31   12   29   23   24   16   20   29   12   26   15
      Gene43    76   41   29   75   23   62   91   82   36   28   74   63   78   34
      Gene47    77   34   38  139   30   79  136   97   52  101   78   99  120   50
      Gene87    24    9   13   28    5   34   32   24    .   33   40   25   32   18
      Gene100 3840 2354 1930 4486 1457 4316 5112 3419 1787 3386 3237 3566 3778 2746
      Gene169    1   23    1   27    6   16   16   16    1   11   10   12   11   17
      Gene171   36   19   29  115   41   60   77   43   46   75   65   68   66   43
      Gene240   24    9   14   50    8   59   49   14   12   19   28   29   31    8
      Gene243  122  102   82  201   65  135  168  146   76  130  128  119  173  143
      Gene264   49   37   35   64   26   55   79   77   25   39   68   59   72   34
      Gene286   26   33   22   65   21   51   46   30   19   67   44   27   39   23
      Gene322   14    3   13   41   11   17   33   24   22   12    7   31   15    8
      Gene345   91   93   23   73   85   70  124   94   39   83   77   90  123  101
      Gene360   16   17   38   84   14   45   53   33   24   45   32   40   45   14
      Gene362  195  123  140  376   89  228  301  284  145  212  175  286  322  190
      Gene379   22   18   15   42   10   21   21   32   13   38   42   23   39   10
      Gene497   15   25   43   20   11   16   24   39   26    8   20   17   41   19
      Gene15     3   11    2   10    6    4    6    8    5   13    7    4   14    6
      Gene61    34  106   39   68   78   39   41   41   39   38   27   23   56  132
      Gene69     .    8   11    5   12   12   12    5   11    1    2    2    2   16
      Gene106    6    6   10    8   10    6    7    8    4    7    3    3    3   12
      Gene120    9   29   20   35   19   11   12   11    9    4    6   22    9   53
      Gene182   15   18    3   12   10    8    5   13    7    3    6    3   14    7
      Gene200   54  397   79   76  217   44  123   90   57   73   62   48   78  444
      Gene208    9   22   19   11   21    9   17    7    9   15    4   14   15   22
      Gene213   52  153   71   55  106   52   38   78   68   86   48   46   50  207
      Gene219   12   69   20   29   79   27   31    9    7   10   22   23   22  109
      Gene275   33   84    7   26   76   20   50   12   15   24   16   30   24   76
      Gene284   48   92   31   65   73   48   53   31   34   62   29   46   80   84
      Gene313   43   56   44   27   57   47   37   54   22   44   26   30   75   69
      Gene324   87  217   88   62  117   78   72   69   67   71   86   60   86  203
      Gene327    2   23   18    8   37   19   18    5    7    7   18    9    7   43
      Gene339   43  236   76  108  173  109  126   97  142  114   89  110   97  263
      Gene343   64  179   79   44  211   41   60   46   75   32   73   58   50  261
      Gene348   75  243  134  108  105   77   92  108  173   79   61  114  102  458
      Gene382   27   82   19   49   76   38   54   57   21   46   45   37   49   75
      Gene411    7   59   21   32   44   31   44   26   24   30   21   10   20   68
      Gene428  110  350  278  135  246  130   96  122  187  117   75  125  119  455
      Gene437  191  437  174  321  282  191  232  330  229  170  194  265  216  461
      Gene462   97   69   60   70   78   59   92   56   68   82   49   42   66  125
      Gene469   54   93   50   47   71   48   63   47   41   27   57   48   70  119
      Gene470  222  415  258  373  583  251  312  189  271  290  260  193  421  752
      Gene481   17   95   39   52   75   27   27   33   29   37   29   50   53  209
      Gene499  258 1078  355  558  782  308  403  369  185  210  266  340  360 1259
                                                                                   
      Gene4      3    7    3   12    4    9    2    9   13    8    1   12    4    8
      Gene27    68  113  116  398  329  143  123  245  291  142  186  206  199  200
      Gene38     2    5    2   37   13    3   13    8    9    7    6   16    3   10
      Gene52     5   17   16   38   34   16   52   42   36   37   36   32   26   38
      Gene66     7   10    2   17    7   13    9   17   20   10    7   23   14   10
      Gene73    67  121  107  174  151   87  147  157  226   78   89  181  117  186
      Gene76     7   26   17   33   43   21   30   26   43    9   12   43   14   39
      Gene90     9   14    1   34   20   19   16   21   21   11    7   27   13   21
      Gene121   20   27   28   56   56   28   19   46   64   56   28   56   51   58
      Gene274   40   92   59  237  137   82  100  165  205   66   62  180   62  201
      Gene389   14   28   13   45   65   31   32   38   66   19   29   51   16   20
      Gene396   11   31   16  100   90   38   30   60   63   30   18   76   14   74
      Gene416   41   50   53  166  141   68   50  119  119   80   43  115   84   93
      Gene421   50   64   79  216  197   86   50  136  187  101   87  151  112   97
      Gene425  141  259  137  633  524  303  213  361  487  279  193  422  284  445
      Gene463   44   71   35  135  108   75   35   82   85   87   45   84   61  106
      Gene12   116  145  231  167  114   86  310  143  136  129  246  125  211  162
      Gene37    15    8   25   20   16   13   28   27   13   29   24   29   20   11
      Gene43    32   40   72  103   56   31   98   46   36   41   65   36   57   47
      Gene47    44   69  108   97   67   60  131   53   40   75  109   55   63   54
      Gene87    16    5   35   14   12   14   48    4    6   11   30   18   16   16
      Gene100 1413 2952 3418 3581 3281 1480 4517 1883 3068 2705 4528 2719 2244 2498
      Gene169    4   10   19    3    3   10   16   14    6   14    5    5    1    2
      Gene171   22   34   69   47   26   21  104   30   28   24  106   30   33   40
      Gene240   11   16   30   38   22   13   36   12   27   22   33   21   14   14
      Gene243   57   81  122  156  134   67  242  117  108  115  183  114  122  118
      Gene264   29   42   63   65   43   16   69   55   58   29   54   43   37   61
      Gene286   22   49   49   43   44   18   44   19   26   17   41   31   21   20
      Gene322    7   15   24   21   14    4   25   17   23    3   27   31    6   16
      Gene345   61  113  119   66   59   34   89   49   49   90  139   63   79   44
      Gene360   19   13   40   28   42   17   63   29   16   15   36   34   16   30
      Gene362  100  166  385  309  288  120  407  101  228  132  280  197  133  223
      Gene379    8   28   42   20   20   11   40   12   37   17   16   15   16   21
      Gene497    8    7   21   45   32   10   14   17   33    7   36   47   18   36
      Gene15     3    5    5    2    2    1    6    1    3    3    9    6    5    1
      Gene61   110  116   28  117   73   57   84   45   62  105   45   40  105   50
      Gene69    10   26    3   24    4   12    2   11    7   18    .    9    6    4
      Gene106   11   10   12   11   11    4    6    4    5   12    1    6    8    9
      Gene120   39   39   15   23   16    9   23   23   36   40    9   28   22   27
      Gene182   13   19    7    8   12    5    7    5    8   20    6   11   18    5
      Gene200  279  375   81   93  104   52  137  125  107  450   75  120  478   90
      Gene208   33   43   13   18   21    5   22    7    9   40   12   20   30   12
      Gene213  104  155   55  193  214   54   78   84  148  174   61   90  191  124
      Gene219   66   80   31   26   30   24   11   32   18   71   24   15   63   32
      Gene275   25   67   25   37   27   25   23   27   31   83   36   44  111    8
      Gene284   74   85   38   63   42   28   34   56   59   92   42   49   66   72
      Gene313   42   66   17   47   29    9   27   23   47   70   28   20   77   50
      Gene324  127  241   79  125   86   52   68   62  146  177   96  117  235  122
      Gene327   24   28   10   28   29    9    9   20   31   53   24    5   44   19
      Gene339  188  223  124  148  148   92  123  128  193  258   92  166  280  129
      Gene343  132  169   58  156  132   74   52   89  121  333   83  111  209  123
      Gene348  212  348   63  285  269  129   98  151  211  304   91  196  333  147
      Gene382   36  105   45   38   41   20   52   23   51  148   36   42   80   42
      Gene411   47   68   31   37   12   10   27   29   24   88   23   22   73   16
      Gene428  278  350  140  480  320  216  113  317  240  329  131  214  271  315
      Gene437  355  490  197  493  413  209  331  278  396  594  250  314  638  326
      Gene462  132  170   51   76   86   39   90   46   77  148   87   62  128   86
      Gene469   76   86   59  112   55   29  101   34   45  106   64   66  167   78
      Gene470  378  756  263  554  521  237  471  343  505  670  284  423  511  422
      Gene481   73  118   23   42   66   44   42   42   62  135   54   75  129   44
      Gene499  682 1323  277  474  492  195  355  366  402 1080  311  341 1219  392
                                                                                   
      Gene4      1    4    7   17   14   15    7    7    3    6    5    7   12   20
      Gene27    53  122  104  313  152  247  240  261  119  104   81   63  114  245
      Gene38     4   10    9    9    7    9    4   13    2    3   11    5    3   15
      Gene52    17   36   16   66   17   36   47   61   65   10   32   33   46   44
      Gene66    22    6   18   16   16    8   10    8    3    5    1    8    6   10
      Gene73    49  150  131  239   65  149  148  119   97   47   96  100   83  182
      Gene76     7   25   20   59   13   54   16   44   16   14   13   23   24   26
      Gene90     4    5    7   41   16   14   18   24   11    6    7   13   12   21
      Gene121   18   17   49   68   34   46   42   34   18   32   39   28   35   78
      Gene274   38   64   80  206   99  204  122  157   64   63   67   87   45  169
      Gene389   16    6   14   61   10   36   33   48   18   20    9   43   38   52
      Gene396    8   18   22   74   50   37   52   44   14   33   29   17   34   53
      Gene416   42   45   45  132   77  124  129   86   43   67   36   36   58  116
      Gene421   64   87   76  261  103  164  144  109   77   69   75   41   97  158
      Gene425  123  215  250  536  306  412  281  372  142  195  176  169  210  315
      Gene463   56   34   59   89   52   67  104   76   17   74   14   22   43   98
      Gene12   140  331  135  146  161  109   88  134  135  156  175  178  367  126
      Gene37    18   26   29   28   29   17   28   30   13   15   35   32   35   18
      Gene43    36   97   39   62   66   77   53   47   53   23   64   78   92   50
      Gene47    41  115   40   84   84   51   50   51   90   20  107  110  189   65
      Gene87     7   39   17   10   13    8   13    9   35   15   29   19   36    8
      Gene100 1383 3762 2758 3629 3111 2997 1833 1774 4204 1874 3398 3999 5984 2462
      Gene169   12   12    7    2   14    8    1    2   15    7    9    5   16    7
      Gene171   37   73   32   42   39   25   27   41   29   26   83   89   99   42
      Gene240   29   36   19   55   32   43   34   20   29    7   37   33   45   25
      Gene243   91  168  159  147   92   80   82   97  134   64  144  167  246  100
      Gene264   29   48   26   71   31   49   62   29  119   28  109   72   84   41
      Gene286   24   27   33   36   34   19   20   31   16    9   41   72   37   15
      Gene322    1   22    7   51    7   18   19   16    8    5   23   43   49   16
      Gene345   85  142   60   33  140   46   41   27   99   59  107   96  150   36
      Gene360   11   42   13   53   21   27    8   20   35    6   23   41   66   24
      Gene362   95  266  135  258  151  154  111  124  222  121  261  357  436  193
      Gene379   15   22   12   14   19   16   12   20   47   28   30   20   67   13
      Gene497   14   30   12   37   12   22   22   15   24   10   21   18   36   21
      Gene15     5    8   13    6    9    2    2    6   17   10    9    4    8    4
      Gene61    95   47  104   75  112   90   59   43   38   89   58   45   74   46
      Gene69     7    3    7   10   20    5    3    2    .    7    2    8    8    6
      Gene106    4    1    9   13   10   15    3   13    4    2    8    4    2    2
      Gene120   24   20   45   17   39   20   22   29   13   20   15   22   19   17
      Gene182   19   10   12   11   19    7   13    9    2   16    .    6    7    4
      Gene200  203   68  443  110  394   58   65   92   64  373   48   86   91   92
      Gene208   33   16   29   14   41    7    6    6   26   29   16    7   19   10
      Gene213  118   74  147  143  209  106  102  107   65  132   54   73   59  115
      Gene219   53    8   61   26   80   31   22   22   19   35   34   49   34   20
      Gene275   69   13   55   21   80   29   19   16   15   59   18   17   32   39
      Gene284   69   44   82   85   81  105   33   31   38   54   55   72   44   57
      Gene313   98   30   49   33   81   37   27    6   26   37   38   49   39   22
      Gene324  150   88  152  147  197  140  136  102   67   96   90   72  119   74
      Gene327   17   39   37   23   31   18   16    9   22   30   29   14   16   13
      Gene339  195   94  200  175  304  169   82  128  108  221  139   64  191   92
      Gene343  145   81  183  173  250  147   89   95   42  135   85   40   70   66
      Gene348  146  104  233  389  259  185  150  156  109  219   99   90  197  189
      Gene382   68   53   47   70   60   25   43   16   21   74   43   42   59   23
      Gene411   33   16   52   33  109   20   29    4   22   32   12   21   49   28
      Gene428  264  153  328  442  415  232  252  255  123  284  104  110  184  234
      Gene437  421  256  423  381  580  312  268  220  239  369  238  203  336  244
      Gene462   62   80  128   69  128   86   66   65   49   81   57   51   80   54
      Gene469  116   60  131   83   83   87   56   38   35   64   80   44   81   53
      Gene470  463  360  883  597  715  361  271  338  259  487  313  223  341  336
      Gene481   69   48  112   59  155   58   36   52   40   68   31   44   62   40
      Gene499  687  351  999  584 1646  484  318  384  392  753  268  418  499  372
                                                                                   
      Gene4      2   18   13    4    8    1   11    1   12    2    3   10    2   14
      Gene27   128  200  170  128   99  133  271  154  112  278  118  223  116  104
      Gene38     4    7   12    3   16    2   10    4    2    9    1   17    .    3
      Gene52    21   17   42   37    2   25   53   46   26   14   25   38   30   26
      Gene66     8    8    7    3    6   17   23    5   10    8    4   12   14   11
      Gene73   150  105  173   72   71   75  180  134   68   86   95  176   94   66
      Gene76     8   13   29   13   17   15   49   18   28   18   15   26   19   12
      Gene90    10    6   26    6   10    5   20   17   26   18    2   14   13   11
      Gene121   21   39   65   29   21   31   57   37   17   32   21   44   42   38
      Gene274   56  145  111   67   67   42  158   53   58  130   49  140   74   51
      Gene389   11   28   37   15    7   28   55   14   12   32   14   41    6    2
      Gene396   20   48   45   13   25   18   74   24   24   46   34   42   20   12
      Gene416   46   88  130   41   67   44   98   54   62   73   39  121   72   68
      Gene421   79  171  119   65   76   87  153  111   63  133   63  150   84   58
      Gene425  157  302  434  185  205  208  431  262  211  231  152  387  255  207
      Gene463   32   51  106   22   54   80   84   42   66   87   49   76   54   64
      Gene12   213  105  109  267  115  193  108  198  248   87  257  119  170  125
      Gene37    16   11   10   22   17    5   27   28    9   15   19   17   34   35
      Gene43   112   50   69   78   43   38   60   88   43   31   58   55   23   39
      Gene47   122   48   36  122   27   48   43  154   56   43  126   50   48   51
      Gene87    31    9   22   35   16    3   13   34   10    4   39    6   11   12
      Gene100 3616 2132 2156 4963 1821 2963 2075 4222 2338 1854 4240 2862 2743 2397
      Gene169    5    5    3    6   12   24    1   19    2    2   17   11   12    6
      Gene171   91   33   34   50   25   43   44   75   40   23   67   30   33   24
      Gene240   47   31   19   22   18   33   30   34   27   11   25   12   32   19
      Gene243  162  101  156  109  122  113   86  169   83   66  167  159   89   97
      Gene264   81   51   54   64   23   53   52   64   37   19   72   53   32   32
      Gene286   50   26   41   67   31   24   31   66   30   26   71   17   32   23
      Gene322   28   15    9   20    5   20    7   36    8    9   39   29    8   10
      Gene345  127   19   26   95   60  104   50   98   90   34  113   33  112   54
      Gene360   63   13   15   48    9   12   29   41   14   27   47   21   12   23
      Gene362  280   97  180  333  135  113  120  382  137   77  303  163  169  153
      Gene379   20   16    5   12   15   27   20   28    8   17   22   22   18   21
      Gene497   37   23   17   36   10   12   19   28    9   14   34   37   13    5
      Gene15     8    2    4    5    6    5    2    4    8    4    4    5    7    .
      Gene61    37   66   44   69  109  144   73   84  125   56   31   37   91  116
      Gene69     2    5    4    5    3   18   13    1    6    6   17    7   17    9
      Gene106    9    4    8   16    4    7    2    5    5    7    .    5   11   10
      Gene120   12   10   25   30   45   39    5   15   23   17   13   18   33   35
      Gene182   17    7    3    3   10   25   12    7   11    2    3   10   17    7
      Gene200   71   87   71  113  360  351   76   80  371  133   99   90  446  430
      Gene208   13    6   11    7   17   36    7   12   25    9    7    8   30   30
      Gene213   31   92  129   76  173  160   73   70  167  112   52   72  165  187
      Gene219   10   27   17   21   59   97    4   45   80   18   28    8   84   26
      Gene275   48   16   25   35   87   72   24   22   79   26   18   21   59   77
      Gene284   61   37   54   43   66  104   74   45   59   54   62   41   99   72
      Gene313   47   14   36   31   88  123   32   44   87   12   42   24   57   67
      Gene324   77   53   67  111  150  197  105  138  322  111   74  108  239  163
      Gene327   18   19    7    4   42   37    9    9   61    2   10   27   47   28
      Gene339  164  146   69  146  191  265  119  125  199   92   66  142  262  182
      Gene343   70   62   66   55  212  260   91   94  244   68   42   90  202  131
      Gene348  113  134  138   98  190  174  208   93  277  150  111  200  244  257
      Gene382   48   27   26   53   80   97   35   50  112   25   42   59   72   88
      Gene411   26   20    5   16   48   67   33   30   75   22   22   28   42   46
      Gene428  115  248  212   97  353  393  306  126  382  281  106  222  299  330
      Gene437  259  226  226  291  476  730  352  311  470  212  259  352  613  500
      Gene462   82   35   33   41  111  131   98   80  167   92   55   66  133  130
      Gene469   64   47   64   80   76   98   63   65  111   69   50   42  104  108
      Gene470  416  308  296  314  612  656  356  355  838  322  187  220  755  611
      Gene481   26   38   48   23  122  117   56   35  162   37   39   47  122  100
      Gene499  348  338  451  433  891 1241  328  557 1229  285  299  305 1139 1014
                                                                                   
      Gene4      8   19    5   16    6    9    7    .    4    3   27    6   11    8
      Gene27   277  278  160  130  175  117  112  103  121  157  149  141  137  211
      Gene38    18    2    4    3    4    1    1    3    2   13   10   10    1    6
      Gene52    47   23   35   22   21   14   28   41   16   40   58   50   15   82
      Gene66    14   14    6   13   18   11    6    5   15    8   12   30   11    3
      Gene73   195  146  118  134   75   89   92  113   58  122  173  162  150  147
      Gene76    39   39   22   36   30   24    6   13   10   21   35   23   19   16
      Gene90    25    4   23   15    3   18   10    8    8   12    9   17   11   17
      Gene121   61   56   56   29   39   36   19   39   41   51   34   30   45   51
      Gene274  194  155  135   90   93   88   36   59   70   89  112  139   83  116
      Gene389   26   23   17   12   26   11   33   20    7   22   34   35   11   33
      Gene396   43   39   29   46   35   22   27   23   17   29   49   29   34   47
      Gene416  158   87   73   69  102   70   46   32   66   64   68   79   75   77
      Gene421  228  138  117   95   86  108   43   85   74  103   70  105  153  108
      Gene425  386  331  295  197  250  269  159  194  204  159  352  326  259  290
      Gene463  155   81   62   84   81   69   32   40   47   31   78   55   81   59
      Gene12   146   76  105  189  205  149  173  163   98  298   93  128  175   79
      Gene37    18   16    9   16   45    5   28   15   17   21    1   14    9   19
      Gene43    64   42   51   70   38   53   75   88   35  158   41   52   50   36
      Gene47    57   32   39   52   70   63   91  110   29  175   35   50   66   22
      Gene87    11   10   10    5    4    3   24   26    4   41    5   10    6   18
      Gene100 2125 2006 2249 2408 3347 2719 3093 3644 1685 4179 1907 1575 3113 1644
      Gene169    7    7    1    8    9    6   15    5    4   19    3    7    9    3
      Gene171   20   27   39   35   29   44   98   72   41   93   31   35   53   23
      Gene240   29   17   12   26   13   26   44   38   21   52   12   22   27   13
      Gene243  140   89   90  123   87   80  139  103   61  150   98  102  127   60
      Gene264   51   34   60   33   57   24   64   79   31   95   31   24    9   29
      Gene286   32   23   13   17   25   19   46   35   18   39   10   24   29   10
      Gene322   24   20   15   12    3   11   25   12    3   44   27   28   16    9
      Gene345   21   61   14  128   97   58  114   81   55  111   23   40  112   35
      Gene360   18   30   21    7   21   20   62   63   17   67   11   20   11    8
      Gene362  194  150  146  128  150  117  199  285  128  414  124  110  179  145
      Gene379   23   13    5   19   12   11   45   21   17   33   12   16   25   15
      Gene497   24   17   18   17   15   11   10   37    8   33   10   16    8   11
      Gene15     1    4    3   18    3    5    6    5    6   10    4    2   17    3
      Gene61   116   51   42  161  187  121   67   40   87   85   42   50  134   32
      Gene69     4    9   10   20    9   13    3    7   22    5   14    4    5   21
      Gene106    5    .    6    6    7    9    3    2    3   13    9    8   12   11
      Gene120   30    9   14   31   49   20    6   14   38   35   15   16   58    9
      Gene182   19    5    8   36   14   16   13    6   24   13    9    6   15    9
      Gene200  120   55   76  381  474  358   74   98  328  174   71   56  613   65
      Gene208   16    5    7   22   35   47    9   17   31   20    7    6   51    4
      Gene213  200   91   69  248  209  126   56   48  155   81  106  104  285   82
      Gene219   50   23   18  105   96   69   19   20   67   36   11   21   88   25
      Gene275   35   26    9  133  111   92   19   20   51   32   23   34   72   27
      Gene284   65   38   27  145   73   97   28   56   76   64   62   53   64   50
      Gene313   32   18   11   61   52   94   32   28   70   36   38   15   51   22
      Gene324   85   81   95  225  173  189   71   90  180  142   64   81  206   47
      Gene327   12   33    7   38   39   32   16    4   25   10   10    9   44    8
      Gene339  162   73   96  333  235  207  155   96  137  170   83   60  304   68
      Gene343  131   70   55  163  266  250   54   72  146  123   72   80  250   72
      Gene348  291  155  124  344  270  244   96   74  213  136  133  129  312  107
      Gene382   24   20   30   75  117   75   39   30   77   56   24   13   84   28
      Gene411   28   15   18   80   86   43   31   23   37   56   14   17  102   17
      Gene428  285  243  202  321  388  437  134  105  265  157  259  287  464  239
      Gene437  354  285  282  707  585  476  145  259  415  257  234  229  485  194
      Gene462   72   53   70  138  133  132   44   63  130   54   30   55  126   43
      Gene469   57   58   48   91  107  106   46   41   89   59   63   31   99   26
      Gene470  447  340  230  670  866  532  368  294  514  427  285  213  733  298
      Gene481   50   28   29  136  180  104   45   49  119   58   20   52  122   27
      Gene499  496  251  348 1258  898  982  296  397  818  388  330  243 1210  253
                                                                                   
      Gene4      8   13    5   13    .    9   11    6   10   11    2    1    8    7
      Gene27   292  225  113   90   91  128  171  128  120   55  153   96   90  126
      Gene38    10   14    .    5    5    2    9    9    3    .    8    .    5    2
      Gene52    55   41   18   12   12   19   11   32   10   22   37   29   17   30
      Gene66    17   10    4   16    7   10   13    5   20    4   23    7    8    3
      Gene73   195  100   42   47  126  130   83  108   89   56  113   96   59   69
      Gene76    33   30   10   14   17   14   38   24   10    9   14   19   10   13
      Gene90    16    8    5   14   15    8    8    5   12    8   21    9    5   17
      Gene121   78   40   24   25   38   39   33   23   35   21   31   36   28   30
      Gene274  117  125  101   70   82   80   81   60   54   40  131   90   74   73
      Gene389   50   33   14   19   10   49   17   11   16   13   21   16   10   23
      Gene396   38   26   19    6   21   18   24   16   23    8   42   19   30   10
      Gene416  126   93   58   58   48   37   92   36   54   27   92   43   86   49
      Gene421  115  117   69   76   66  106  116   77   93   50   79  104   56   51
      Gene425  475  405  178  207  212  246  258  215  217  112  298  183  229  180
      Gene463   74   77   65   37   53   40   75   40   68   20   85   32   65   46
      Gene12    95   74  112   78  138  214  178  235  169  106  203  310  176  249
      Gene37    17   12   13   24   13   29   23   41   17   21   16   23   25   13
      Gene43    53   26   24   29   40   94   37   90   44   37   35   42   59  115
      Gene47    56   53   27   48   44  121   77  118   55   85   54  143   45   93
      Gene87    10   12    6    5    5   41   13   16   15   30   12   50    5   53
      Gene100 3043 2041 2052 2044 2785 6187 3434 4113 2455 2983 3667 5328 2428 3323
      Gene169   12    5    3   17    8   19   27    3   21    8    4   15   25   11
      Gene171   34   39   30   39   34  105   78   68   41   39   41   79   68   68
      Gene240   39   13   32   34   16   65   20   45   13   25   56   52   11   34
      Gene243   98  105   74   98  121  213  144  207  116   53  138  193  108  178
      Gene264   59   31   14   30   27   66   32   44   29   35   24   64   24   65
      Gene286   25   21   29   39   19   60   39   40   32   25   26   58   50   59
      Gene322   22   13    2    2    1   26   18   19   17   14    8   14   17   27
      Gene345   46   39   94   83   82  141  122  132   96   49  139  135   86  130
      Gene360   15   14   14   13   19   64   18   44   12   46   25   31   11   52
      Gene362  197   95   98  155  103  413  186  266  145  172  226  351  176  326
      Gene379   31   20   16   21   17   58   22   29   25   20   26   28   22   34
      Gene497   20   13   11    8   15   26   23   28   12   11    7   24   14   39
      Gene15     .    1   10    6    6    8   10    7    1    2   13    9    5    2
      Gene61    71   55   87  122   87   59  127   37  135   46  111   71  103   37
      Gene69    11    .   10    6   17    5   18    3   12    4   16    6   13    9
      Gene106    4    3    3   10   11    5   21    7    7   13   13    5   11    2
      Gene120   10   20   36   52   57   27   28    7   23   17   46   16   28   11
      Gene182   13    2   10   14   13   11   23    7   16   12   24    1   14    6
      Gene200   76   91  391  399  363   81  524   75  308   41  533   98  281  100
      Gene208   13    5   19   23   29    4   27    9   45    9   56   18   27    8
      Gene213  115   78  119  124  100   64  274   37  177   65  182   67  163   74
      Gene219   23   10   79   51   60   79  131   24   61    7  121   24  102   30
      Gene275   30   27   89   96   69   33  121   29  127   15   90   16   46   35
      Gene284   44   48   46  105   71   73  108   23   85   36   98   87   99   42
      Gene313   29   24   30   40  113   48   51   43   93   16  128   38   68   60
      Gene324   83   63  143  171  168  104  234   82  167   87  263   63  155   96
      Gene327   28    6   20   35   51   16   51   19   33    9   56   17   25   16
      Gene339   98  114  153  213  268  168  274  108  256  134  406   75  200  104
      Gene343  125   70  237  164  143  109  243   56  260   35  285   57  220   67
      Gene348  187  136  201  217  308  101  299   62  233   72  313  128  384  177
      Gene382   28   20   66   59   84   66   85   33  107   20  117   55   78   57
      Gene411   12    5   56   61   58   37   76   21   76   20   71   39   63   28
      Gene428  378  183  274  331  392  161  491  106  367   73  583  143  428  174
      Gene437  261  213  351  382  512  276  654  297  522  154  562  221  503  309
      Gene462  108   64  106   89  177   64  148   76  136   22  145  111  139   46
      Gene469   56   79   90  133   95   82  121   41  150   48  149   99  107   67
      Gene470  351  374  571  471  535  501  984  268  536  195  944  260  821  445
      Gene481   40   15  102  127   97   72  142   34  145   19  108   38  161   54
      Gene499  374  251  893  926 1036  331 1455  350 1260  228 1408  410 1323  378
                                                                                   
      Gene4      4    7    9    2   13    2    3    7    8    8    5    5    1    6
      Gene27    95   61  197   99  259  218  125  122  102   95   84   79   59  137
      Gene38     .    9   17    .   13    3    2    7   10   11    2    4    2    1
      Gene52    36   12   30   33   64   33   18   10    7   11    9    3   40   41
      Gene66     8   10    6    9   20    8    9   16   17    8   18   11    5    8
      Gene73    84   67  113   66  163  160   45   93   47  131   51   21   69  111
      Gene76    17   13   40    9   41   23   14   16    8   15   14   19   17   22
      Gene90    12    4   19    2   21   28   11   10    3    7   14    .   16    4
      Gene121   28   18   67   19   59   50   27   41   23   33   16   20   17   44
      Gene274   72   53  102   46  171  119   57   88  103   92   40   77   58   67
      Gene389   17    8   20   21   39   40   11   14   14   28   12    6    6   29
      Gene396   10   22   29   23   68   63   13   32   34   35   17   29    7   17
      Gene416   45   31  113   27   98  116   87   73   96   83   49   36   23   41
      Gene421   96   36  154   54  225  124   58   81   35   81   55   88   47   88
      Gene425  172  125  310  117  445  378  189  253  133  219  189  160  124  149
      Gene463    6   41   96   28  108   57   50  115   55   70   65   30   27   34
      Gene12   202   90  126  173  108  109  108  124  191  143   91   85  145  181
      Gene37    22   17    7   26   21   14   17    7   29   10    5    4   16   25
      Gene43    75   29   27   68   49   48   45   56   20   55   30   28   29   77
      Gene47   135   28   47  102   55   52   24   42   28   61   26   31   61   96
      Gene87    18    1   12   22   15   10    7   17    7    6    4    7   31   37
      Gene100 3826 1994 2308 2972 3227 2437 1825 2646 2035 2566 1994 1675 2869 4105
      Gene169    4   11    3   12    3   16   12   25    2    9    4    6    9    9
      Gene171   74   36   27   47   49   37   34   28   27   35   44   32   42   49
      Gene240   37   34   20   28   35   19    9   10   16   17   18   12   32   47
      Gene243  155   61  110  140  155  115   68  101   71   89  114   60  123  132
      Gene264   61   17   28   38   62   31   27   63   39   40   23   36   54   87
      Gene286   31   22   36   51   35   20   20   34   15   27   27   21   36   40
      Gene322   22    7   23   13   28   23    3   14    6    3    3    3   28   18
      Gene345   83   61   45   71   39   27   78  108   69   55   80   39   77   94
      Gene360   48    .   11   35   26   26   22    7   17   19    3   21   39   38
      Gene362  257   82  135  292  222  128   92  121   86   99  121  106  183  288
      Gene379   25   13   15   43   16   13   10   26   15   16   19   31   26   23
      Gene497   23    4   19   12    9   17   14   13   20   16   13    3   16   30
      Gene15     2    5    2   13    2    2    5    2    7    4    6    5    1    7
      Gene61    46  114   29   39   79   53  121  178   90  136   80   48   34   79
      Gene69     4    4    7    6    4   12   13   22   17   25    8    4    2    1
      Gene106    6    2    2    .    7    1    6    6    5    3    4    7    6    1
      Gene120   13   27   22    9   16   19   50   45   41   10   25   20   17   12
      Gene182    4    6    2    6    6    9   11   18   10    6   14    9    1    7
      Gene200  112  230   92   61  106   60  314  557  266  404  303  264   43  104
      Gene208   24   20   12    8   19   11   23   37   18   43   22   32    6   17
      Gene213   39  127  119   50  155   85  189  174  176  153   91  112   41   16
      Gene219   17   94   34   12   27   12   82   80   96   73   67   75   28   30
      Gene275   11   78   22   25   42   39   58   99   59   96   65   49   13   19
      Gene284   32   86   33   42   69   57   47  117   67   77   63   63   26   52
      Gene313   14   86   10   57   23   30   46   57   73  104   54   47   22   49
      Gene324   79  152   91   52  128   72  128  209  186  235  136  145   85   65
      Gene327   12   18   10    2    8   14   31   35   36   31   28   22    5   13
      Gene339  115  151  118   75  146  147  251  293  293  249  133  179  102   79
      Gene343   43  170   70   32  106   82  193  185  163  227  154  134   24   39
      Gene348   98  170  234   64  211  210  210  302  324  240  199  187  108   71
      Gene382   34   63   26   39   36   33   74  105   48  107   71   64   41   24
      Gene411   34   71   26   18   17   23   66   66   32   61   64   47   26   37
      Gene428  122  285  123  111  302  220  313  368  209  283  332  304   82   83
      Gene437  269  389  247  178  304  266  412  456  376  487  363  353  194  180
      Gene462   63   85   56   58   76   41   98  138  146  103  102   96   52   54
      Gene469   49   69   41   44   41   61   84  113  104  143   89   73   55   81
      Gene470  293  385  273  248  366  417  430  604  509  537  495  389  218  296
      Gene481   47   68   30   35   46   40   87  178  104   94   98   40   43   37
      Gene499  260  838  268  234  406  506  894  997  960  900  941  613  233  428
                                                                                   
      Gene4      4   10    1    2    4    5    4    2   11    5    9   12    4    2
      Gene27    82  261  118  124   94   83  139  108  241  191  279  116  109  183
      Gene38     5    8    4    3    3    7    1    5    9   17    8    5    2    4
      Gene52    19   43   24   32   44   41   17   47   37   31   42   29   10   70
      Gene66    15   15   12   13    8    1   17    3    9   13   20    1   25    3
      Gene73    56  147   73   50   63   85  108  154  134  140  184  189  115  121
      Gene76    13   38   16   18   16   17   12   19   41   28   34   13   11   30
      Gene90     2   16    3   13   13   14   14   21   24   20   18    8   11    7
      Gene121   12   41   38   25   25   45   27   21   51   48   59   19   24   38
      Gene274   65  114   83   35   57   71   74   83  182  141  184  108  102   82
      Gene389   14   59   18    7   10   24    5   25   38   33   73   11   23   28
      Gene396   25   83   25   16   28   27   16   24   83   45   89   19   26   31
      Gene416   27  123   24   69   43   43   41   41  169  150  129   39   61   57
      Gene421   41  134   82   56   73   77   63  101  179  177  195   69   88  121
      Gene425  216  474  159  224  155  190  202  148  486  338  495  210  151  266
      Gene463   35   72   62   63   34   37   77   27  142   83   90   45   84   43
      Gene12   112  100  148  108  190  267  141  220  108  107  153  185  150  252
      Gene37    14    7   10    9   14   39   25   19   38    6   23   17   17   32
      Gene43    29   89   46   39   64   71   38   69   42   50   60   81   49   98
      Gene47    34   66   42   55   90  121   58  109   46   58  101  106   44  134
      Gene87     9   29    9    6   27   12    2   38   31   12   20   22   14   58
      Gene100 2218 2165 2114 2509 2896 4431 2716 3868 2133 1791 3565 5386 2248 4895
      Gene169   12    4    4    3   16   34    4   15    8    1   10   10    8   10
      Gene171   37   34   50   43   71   61   25   49   51   22   33   49   53   86
      Gene240   21   20   13   22   50   57    8   42   16   42   27   31   30   44
      Gene243   95   94  118  101  174  245  113  183   94  109  157  217   97  209
      Gene264   36   35   16   39   49   85    8   49   53   26   56   99   31   86
      Gene286   19   14   17   25   28   41   32   47   33   19   31   40   30   78
      Gene322    3   26    5    2   45   36    .   17   20   19   27   24    9   32
      Gene345   51   28   75   69   82  106   89   92   36   51   68  101   86  120
      Gene360   11   19   16   15   34   39   16   78   25   16   15   52   24   50
      Gene362   65  137   85  119  247  256  108  313  147  135  207  286  133  365
      Gene379   15   17   10   18   27   31   21   30   31   17    6   37   13   54
      Gene497   18   21   16    8   24   14   27   20   17   10   31   33    5   23
      Gene15     9    3    4    6    8    4    7    5    4   12    5    2    6    5
      Gene61    56   93   63   99   39   56  143   32   75   64   72   92  135  109
      Gene69     9   10   10    8    2    2   25    4    5    5   10    8    7    .
      Gene106   10    .    8   11    4    2    4    7   10    7    2    7    5    5
      Gene120   29   28   31   42   16   11   33   25   27   28   44   15   41   12
      Gene182   11    4   14    6   10    2   16   10    7    6   10   11   16    3
      Gene200  256   90  262  363   53   65  258   85   92   59  112   63  289  117
      Gene208   25   12   26   41   18    8   43   11   11    9    6   10   20   13
      Gene213  167  135  163  149   56   82  147   44   86   79  167   81  133   62
      Gene219   50   36   89  116   27   30   85   29   23    6   38   15   57   42
      Gene275   54   41   57   87   17   18  123   19   19   21   30   14   79   23
      Gene284   66   54   59   73   27   62   78   39   61   80   60   51   82   54
      Gene313   40   35   40   47   33   35   66   33   30   30   13   41   33   26
      Gene324  141   97  123  141   55   67  170   88  108   97  114   55  258  108
      Gene327   40   11   31   37    6    6   46   15   12    9   37   22   34   10
      Gene339  138  176  180  194   98  163  226  139  129   84  123  133  178  164
      Gene343  236  104  206  177   25   48  233   66  131   94  109   58  177   63
      Gene348  186  204  305  227   98   77  233  105  219  182  167  115  235  103
      Gene382   73   25   54   45   32   53   82   38   31   28   37   41   64   71
      Gene411   69   11   41   78   32   36   70   22   18   22   24   33   62   50
      Gene428  243  282  350  247  131  167  275  115  294  310  311   97  261  111
      Gene437  382  174  473  591  176  281  445  188  264  269  332  232  375  240
      Gene462  102   62   78   86   72   51  180   41   62   26   56   81   66   70
      Gene469   95   40   94   88   28   51  125   37   63   42   46   54   69   60
      Gene470  597  297  751  684  312  373  572  331  448  375  308  379  710  419
      Gene481   97   42   71  150   29   43   92   54   46   37   65   38  129   53
      Gene499  758  290  846 1222  340  404  912  384  421  312  350  390  881  530
                                                                                   
      Gene4      7    5   11    2    8    1   20    7   11   14    7    3    9    3
      Gene27   158  157  150   92  160   73  118  247  211  280  115  107  121  242
      Gene38     9    7    6    8   14    6   11    7    4    6    1    4   19    9
      Gene52    46    6   38   18   23   33   24   44   76   41   22   30   35   66
      Gene66     9    8    4   18   14    3   19   28    7    5   10   15   22   13
      Gene73   107   55  144  128  105   93  112  245  224  224   53  111  141  144
      Gene76    16   17   26   28   21   21   14   29   43   32   13    8   22   30
      Gene90     9   10   18   11    7    9    9   26   20   29    2   15    7   15
      Gene121   39   27   39   30   57   21   25   92   55   41   31   28   43   55
      Gene274   73   68  160   64   71   66  100  150  169  110   48  111   48  146
      Gene389   22    8   46   12   18   17   36   60   31   20    7    9   20   72
      Gene396   28   23   57   28   32   21   32   55   28   20   30   34   15   39
      Gene416   91   53   82   70   84   39   82  134  134   98   55   97   29  144
      Gene421  124   75  120   68  104   52   89  141  167  164   92  186   61  143
      Gene425  253  137  352  211  239  142  268  472  489  392  155  276  168  507
      Gene463  101   70   71   80   39   24   69   91   79   94   74   64   33   83
      Gene12   165  171  106  157  121  261   69   76   92  100  165  215  278  122
      Gene37     9    3   26    4   18    9    9   20   22   40   22    8   20   10
      Gene43    63   62   85   30   17   49   13   45   36   47   22   19   81   59
      Gene47    41   39   38   54   58   96   19   74   57   36   22   36  114   44
      Gene87     8    6   11   12    4   33   11   21   13    4   14    7   36   10
      Gene100 3283 2435 2514 2658 2649 3155 1726 2396 2904 2136 1760 1695 3651 4214
      Gene169    9   10    2   10    9    8    2    3    6   17    5   21   10    7
      Gene171   38   41   17   52   27   50   29   40   56   42   22   50   77   70
      Gene240   34   18    8   10   20   50   14   37   14    8    7   40   25   30
      Gene243  128  126   62  110   71  132   48   99  157   93   59  131  164  240
      Gene264   15   13   54   43   28   63   30   64   63   53   21   21   40   71
      Gene286   30   16   31   28   27   54   12   23   29   24   21   15   45   36
      Gene322   15    5   32    9   11   21   11   37   22   19    4   10   32   30
      Gene345  102   70   44   54   81   81   20   53   37   44   61  103  109   52
      Gene360   19   24   31   13   11   26   13   32   20   15   33   26   41   49
      Gene362  159   99   96  192  111  261  116  230  162  188  149  102  274  235
      Gene379   22   15    4   12   19   24   14   18   15   27   13   23   31   27
      Gene497   22    2   17   14   15   39    6   26   36   15   14    8   24   49
      Gene15     2    5    4    7   10    1    .    7    9    4    9    9   23    6
      Gene61   129  107   48  145  114   40   26   68   47   51   97  102   27   72
      Gene69    11   18    4    5   22    9    2    2   13   11    5   11    4    5
      Gene106    9   10    5   12    8    .    2    3    3    2   12   14   14    3
      Gene120   37   11   23   47   69   14    4   16   17   22   32   62   25   37
      Gene182   21   40    3   21   15    9    4   11    7    2   17   33    8   14
      Gene200  398  356   97  462  391   55   48  109   86   81  268  347  117  173
      Gene208   43   15    5   11   44    7    4   16    3   22   19   34   16    9
      Gene213  302  137  130  191  168   53   59  121  151   87  169  185   65  129
      Gene219  111   74   13   92   84   40   10   25   18   19   45   56   10   34
      Gene275   92   84   21   80   56   32    8   27   24   32   32   72   28   45
      Gene284  162   70   40   88   98   46   32   27   40   99   62  106   51   81
      Gene313   64   69   48  103   62   44   15   31   38   13   57   71   25   29
      Gene324  222  187   41  276  199  120   42  113  143   47  110  272   57  137
      Gene327   46   37   28   20   51    7    5   16   24    9   38   46   13   20
      Gene339  250  190   93  237  269   90  108  205  131   65  146  268   90  189
      Gene343  265  221   78  182  187   49   30  118   91   80  148  282   46  102
      Gene348  271  239  108  199  339  105  126  241  239  165  227  236  115  262
      Gene382  123   73   24   72   98   51   33   39   28   28   92   99   49   39
      Gene411   74   38   12   40   35   20    8   24   18    7   76   76   22   44
      Gene428  409  305  189  406  347  118  183  320  365  201  242  398  114  423
      Gene437  728  454  320  317  476  190  249  253  277  230  469  496  234  412
      Gene462   81   83   51  121  141   87   36   99   78   76   78  123   86   67
      Gene469  122  112   33  128  115   66   32   56   72   68   86   99   84   92
      Gene470  795  567  458  511  685  321  222  381  383  231  433  701  354  460
      Gene481  210  142   45   66   93   25   17   62   29   35  104  104   49   42
      Gene499  964 1081  256 1086 1415  300  198  486  434  369  744 1129  412  488
                                                                                   
      Gene4      6    8    6    1    4    .    2    1    7    8    3   11    8    2
      Gene27   292  136  161   63  172  100   89  130  151  247  274  270  146  147
      Gene38     9   13   14    8    8    3    .    5    6   11   17   35    3    7
      Gene52    29   57   22   14   20   11   26   33   26   31   29   34   11   33
      Gene66     3    4   17    4   13   12    4    5   14   14    8   13   19   11
      Gene73   164  182  168  125  126   72   42  113  115  219  156  216  135  165
      Gene76    21   12   34   14   31   16   18   26   32   37   54   44   23   32
      Gene90    24   13   12    5   19    3   10   18   12   26   15   15    6   31
      Gene121   32   42   20   12   29   31   19   15   55   51   60   84   41   35
      Gene274  152  105  101   40  105   67   39   60  110  212  120  225   83  104
      Gene389   36   47   28   15   17   16   17   20   19   37   45   18   12   45
      Gene396   19   33   29   18   37   25    8   17   41   56   58   72   35   38
      Gene416   56   88   77   34   92   48   29   46   64   98  117  158   83   65
      Gene421  186  143   82   48  143   81   66  100   97  214  173  147   91  165
      Gene425  340  316  296  124  370  280  167  121  256  543  364  418  217  293
      Gene463   77   58   81   40   51   75   18   19   80   86   91  132   70   36
      Gene12   100  413  192  199   67  156  174  179  176  181  119   97  137  409
      Gene37    15   59   23   22    5   15   17   64    5   16   14    6   24   53
      Gene43    47   98   61   76   44   42   42   64   60   57   51  113   51  137
      Gene47    28  179   93  121   52   79   96  139   48   45   44   55   75  177
      Gene87     4   36    7   33    9   20   17   19    7   12   13   12    6   31
      Gene100 2158 6223 3656 3106 1843 2188 3110 5176 2631 2818 2351 2975 2693 5889
      Gene169    2   14   26   10    5    4   20    5   16    8    3    4   12   19
      Gene171   30   95   46   58   35   43   51   58   41   62   51   55   45  123
      Gene240   17   47   12   20   11   19   29   42   20   15   28   20   23   46
      Gene243   77  334  141  136   94  160   96  156  131  144  119  177   81  228
      Gene264   31  122   53   36   47   22   40   50   25   72   54   84   46  117
      Gene286   29   45   46   25   22   17   26   36   17   27   24   26   19   73
      Gene322   13   31   16   20   13    8   15   17   13   17    7   18    3   36
      Gene345   28  198  114   87   30   88   74   99   79   45   32   25  106  147
      Gene360   20   59   33   35    5   13   32   49   21   19   15   27    4   68
      Gene362   90  372  195  213  122  105  173  282  152  239  147  163  137  412
      Gene379   30   73   24   31   10   34   36   18   18   21   25   24   23   42
      Gene497   28   77   16   23   37    9   10   35   12   28   20   30    7   47
      Gene15     7   13    8    1    3   12    5    4    7    2    2    3   14   17
      Gene61    46   56  145   43   59  114   40   37  107   47   54   74  127   85
      Gene69    11    3   15    5   12    1    .    5   18    6    2    1    6    4
      Gene106   12    1   13    4    5    2    3    5   17    1    5    6   14   11
      Gene120   22   22   52   17   11   24   13   22   22   21   24   36   72   42
      Gene182    3    6   16    .    5    6    9    3   27    3    7   16   17   24
      Gene200   30   98  413   81   62  344   44   72  400  108   81   53  459  112
      Gene208    6   35   46   12    9   24   11   33   30   22   11   20   37   28
      Gene213   96   87  189   59   93  112   22   83  252  115  114  134  220   93
      Gene219    8   15  133   28   18   76   20   20   81   33   29   42   57   23
      Gene275   12   26   97   21   24   67   13   22  109   40   38   27   95   43
      Gene284   79   98  119   35   46  105   29   42  100   66   41   67  116   99
      Gene313   17   59  117   48   22   80   16   31   74   43   45   40   43   70
      Gene324   96  142  253   62   71  215   67   63  183   96   98  115  205  107
      Gene327   18   12   32   24   11   45   12   14   52   19    7    7   31   13
      Gene339   97  206  294   55   89  190   77  119  317  155  101  155  224  259
      Gene343   39   88  273   56   90  223   28   41  243  141   79  141  293   62
      Gene348  199  114  320  108  120  287   55   66  299  303  246  303  345  178
      Gene382   25   86   91   50   24   52   35   44   87   39   21   47   77   63
      Gene411   15   40  134   16   16   56   18   44   60   12   12   26   91   41
      Gene428  225  200  563  125  211  286   92  122  321  267  375  253  323  175
      Gene437  262  371  548  255  187  493  158  194  441  410  265  321  537  233
      Gene462   45  105  240   46   36  111   60   67  129   86   75  118  149  103
      Gene469   76   72  204   75   53   76   55   58  117   92   57   72   84   94
      Gene470  369  425  882  202  293  713  218  267  611  546  396  463  540  396
      Gene481   24   52  155   17    9   91   40   31  114   35   36   41   95   40
      Gene499  335  482 1501  282  298 1115  275  311 1328  561  413  398  854  564
                                                                                   
      Gene4      2    2    1    3    6   20    2    1    4   14   12    4    1    6
      Gene27    59  315   87  236  103  124   69   75   70   98  132   84   64  243
      Gene38    12   19    1   14    6    4    3    7    3    .    9    9    5   10
      Gene52    16   48   14   70   26   17   28   27   23   13   10   13   14   38
      Gene66    12   20   13   11   14   13    7    5    6    6   15    3   12   15
      Gene73    74  233   71  135  110  111  110   65  101   63   68   92   78  146
      Gene76    13   60   37   54   13   23   22    9    6   13   12   12   12   45
      Gene90    12   11   10   20   23   11   11   12   16    8   16   12    1   25
      Gene121   10   53   22   50   31   37   22   26   17   31   27   37   23   37
      Gene274   64  149   83  174   69   66   63   63   53   51  123   55   53  194
      Gene389   26   52   17   70    4    9   37    5   21   13   19   11    7   29
      Gene396   19   47   45   47   40   12   37   15   27   21   30   21   13   59
      Gene416   37  133   93  121   52   70   28   52   22   50   81   54   44   92
      Gene421   57  238   93  111   48  152   78   82   60  113   81   70   43  170
      Gene425  126  474  196  385  202  270  239  195  166  169  228  281  100  427
      Gene463   36  142   79   86   65   89   33   28   28   49   73   60   45   79
      Gene12   121  135  161  156  180  164  262  170  165  149  207  163  115  104
      Gene37    40   10   13   11    3   13   10   32   11    9   18   22   19   17
      Gene43    53   70   51   32   53   33   64   87  114   35   53   31   18   47
      Gene47   100   74   38   55   44   64  106  105  111   24   34   31   37   44
      Gene87    27   13    5   19    8   26   27   17   22    5    7   14    5   24
      Gene100 3964 3269 2452 2096 1953 2954 4702 2918 3504 1749 2579 2374 1914 2344
      Gene169   17   13    4    6    1   11    9   10    9    2   12   18   10    9
      Gene171   53  101   35   40   31   43   76   59   59   31   43   35   24   42
      Gene240   23   17    6   20   22   32   44   25   41   11   26   23   24   19
      Gene243  148  192  135   89   82  104  156  142  154   86  150   92   97  107
      Gene264   87   80   16   33   31   30   57   61   75    9   43   20   20   63
      Gene286   51   19   33   21   41   25   53   44   55    7   20   11   11   21
      Gene322   35   40   15    9    9   12   36   25   18    7   15    7    8   19
      Gene345   67   57   82   22   69   84   86   74  112   51  104   67   28   49
      Gene360   54   37   25   16   10   23   33   43   24   20   35    8   12   22
      Gene362  192  215  118  210   79  136  352  245  216  157  237  129   81  169
      Gene379   31   23   22   29   24   18   24   36   27   16   24   26    4   33
      Gene497   19   27    4   20    9   11   42   14   14    8    9   15   11   25
      Gene15     2    5   11    4    4   10    3    1   12    3   14    .    .    3
      Gene61    56   87   87   44  144  159   59   35   61  100  197  116   54   62
      Gene69     1    3   12    8   11   15    6    1    9   11    9   10   18    2
      Gene106    2   10   17    6   14    7    2    3    1   14    4   11    1    5
      Gene120   15   40   36   24   26   34   20   15   28   52   59   18   24   16
      Gene182    1   11   18    9    8   18    7    3    2   15   25   21   17    8
      Gene200  126  155  370   83  316  445   86   61   61  244  378  382  229  107
      Gene208    4   27   30   28   19   38   22   11   16   23   51   27   20   19
      Gene213   35  171  179  113  181  205   68   57   70  167  202  145  102  115
      Gene219   16   40   87   16   88   90   43   29   21   56  115   68   74   23
      Gene275   17   35   86   27   72   88   16    9   21  102   57   79   55   25
      Gene284   24   90  102   42   55   98   62   71   69   88  114   82   43   90
      Gene313   44   40   94   27   51   75   46   31   30  101   97   42   27   31
      Gene324   65   95  197  138  201  175   92   65   67  162  275  148  131  125
      Gene327   11   17   36   14   25   45   11   11    8   21   55   28   18   11
      Gene339   77  211  182  108  173  261  127   84  173  181  201  255  154  112
      Gene343   40  151  149  134  222  221   61   28   49  246  219  252  137   98
      Gene348  126  267  303  252  224  294   83  125  106  255  304  273  159  181
      Gene382   32   27   70   22   81   83   30   44   30   74   96   86   55   31
      Gene411   10   36   64   21   58   75   13   35   12   49   89  100   39   27
      Gene428   86  337  301  283  266  357  155  103  148  258  426  333  279  221
      Gene437  136  369  559  242  491  758  214  165  182  463  574  361  280  296
      Gene462   49   85  103   66   91  145   52   78   53  101  133  104   74   51
      Gene469   47   66   85   63   98  130   86   83   66   40  127  117  106   44
      Gene470  253  411  584  297  347  807  303  177  343  506  769  533  380  419
      Gene481   35   66  135   64  104  171   20   31   44  119  125  157   77   53
      Gene499  323  506  991  403  985 1518  323  320  432 1021 1440  971  692  408
                                 
      Gene4      1   13    6    5
      Gene27    82  209   96   96
      Gene38     4    4    .    4
      Gene52     7   22    8    8
      Gene66    12   11   30   18
      Gene73    72  187   65   73
      Gene76     9   35   11    8
      Gene90    10   23   11    9
      Gene121   33   47   18   18
      Gene274   61  140   74   77
      Gene389   11   45   37    5
      Gene396   23   63   21   30
      Gene416   42  103   68   81
      Gene421  111  113   85  109
      Gene425  165  451  175  353
      Gene463   48   88   57   53
      Gene12   103  110  115  166
      Gene37    15   20   19   21
      Gene43    34   40   14   30
      Gene47    63   60   36   46
      Gene87     1   10    5    9
      Gene100 1917 2650 1749 1587
      Gene169    1    8    3   12
      Gene171   41   22   32   33
      Gene240   13   29    7   36
      Gene243   74   99   76   97
      Gene264   23   43   22   42
      Gene286    8   34   31   37
      Gene322    1    4    7   14
      Gene345   44   50   28   95
      Gene360   22   21   11    8
      Gene362  112  108  131   96
      Gene379   12   31   14   14
      Gene497   10   15   10   15
      Gene15     5    1    1    8
      Gene61    88   54   71  114
      Gene69     8    3   13   15
      Gene106    2    1   10   12
      Gene120   22   24   31   40
      Gene182    4    4    9   11
      Gene200  264   64  233  364
      Gene208   16    9   29   18
      Gene213  161   88  124  165
      Gene219   61   29   40   70
      Gene275   76   19   87   35
      Gene284   60   91   57   65
      Gene313   44   18   75   55
      Gene324  142   86  139  235
      Gene327   39   17   14   40
      Gene339  156  125  150  203
      Gene343  176   60  174  206
      Gene348  174  150  260  237
      Gene382   58   34   45   70
      Gene411   42   21   66   47
      Gene428  304  219  250  312
      Gene437  293  237  437  374
      Gene462  122   74  134  135
      Gene469   96   36   99  114
      Gene470  547  322  392  596
      Gene481   73   23   72  103
      Gene499  938  292  924  887
      
      Slot "nUMI":
              CGTAGCTAAATAATGAGCTATATAAATA         ACTAAGTAAATAATGAACTAGATAAATA 
                                     68141                                61294 
              TCTAGATAAATAATGAACTACGTAAATA         AGTAACTAAATAATGAACTACGTAAATA 
                                     64970                                58399 
          CATATATAGATAAATAATGAACTACGTAAATA         TATAGCTAAATAATGAGATAAGTAAATA 
                                     53773                                65803 
              AGTAACTAAATAATGACATAACTAAATA         TATAGCTAAATAATGAACTACGTAAATA 
                                     93800                                41724 
              AGTAACTAAATAATGAGATAAGTAAATA         TCTAGATAAATAATGAGATACATAAATA 
                                     57378                                73713 
              GCTAAATAAATAATGAACTACGTAAATA         AGTAACTAAATAATGAGCTATATAAATA 
                                     50950                                60841 
          CATATATAGATAAATAATGATCTAAATAAATA         GCTAAATAAATAATGAACTAGATAAATA 
                                     81737                                81689 
                  GCTAAATAAATAATGATCTAAATA         TATAGCTAAATAATGATATACCTAAATA 
                                     55237                                79196 
              TATAGCTAAATAATGATCTAAATAAATA         AGTAACTAAATAATGATATACCTAAATA 
                                     41475                                76230 
                  CGTAGCTAAATAATGATCTAAATA         CGTAGCTAAATAATGAGATAAGTAAATA 
                                     59983                                47591 
              CATAGATAAATAAATAATGATCTAAATA         CATAGATAAATAATGAGCTATATAAATA 
                                     80026                                72493 
              TATAGCTAAATAATGAGATACATAAATA         CATAGATAAATAATGAACTACGTAAATA 
                                     62455                                63733 
                  AGTAACTAAATAATGATCTAAATA         GATAACTAAATAATGAACTACGTAAATA 
                                     52244                                72424 
              ACTAAGTAAATAATGACCTAGCTAAATA     CATAAATAAGTAAATAATGAGATACATAAATA 
                                     66764                                65142 
              CATATATAGATAAATAATGATCTAAATA         TCTAGATAAATAATGATCTAAATAAATA 
                                     90168                                50412 
          CATATATAGATAAATAATGAGATACATAAATA             TCTAGATAAATAATGATCTAAATA 
                                     51330                                59957 
          CATAGATAAATAAATAATGATATACCTAAATA         GCTAAATAAATAATGAGCTATATAAATA 
                                     76040                                44520 
              GATAACTAAATAATGAGATACATAAATA     CATAGATAAATAAATAATGAGATAAGTAAATA 
                                     59336                                72555 
          CATATATAGATAAATAATGACCTAGCTAAATA         CATAGATAAATAATGATATACCTAAATA 
                                     57244                                46885 
          CATAGATAAATAAATAATGACCTAGCTAAATA         GCTAAATAAATAATGACCTAGCTAAATA 
                                     64990                                72429 
              CATAGATAAATAATGACCTAGCTAAATA         CATAGATAAATAATGAACTAGATAAATA 
                                     45741                                76172 
              ACTAAGTAAATAATGAACTACGTAAATA     CATAGATAAATAAATAATGAACTACGTAAATA 
                                     49507                                43939 
              GCTAAATAAATAATGATCTAAATAAATA     CATAGATAAATAAATAATGAGCTATATAAATA 
                                     62253                                43417 
              CGTAGCTAAATAATGAACTACGTAAATA         TCTAGATAAATAATGACCTAGCTAAATA 
                                     81722                                58964 
              CGTAGCTAAATAATGACCTAGCTAAATA         CGTAGCTAAATAATGAGATACATAAATA 
                                     80256                                60646 
              CGTAGCTAAATAATGATATACCTAAATA         CATAGATAAATAATGAGATACATAAATA 
                                     65628                                49272 
              CGTAGCTAAATAATGACATAACTAAATA         ACTAAGTAAATAATGATATACCTAAATA 
                                     43101                                46716 
          CATATATAGATAAATAATGATATACCTAAATA     CATAGATAAATAAATAATGAACTAGATAAATA 
                                     72440                                61871 
              TATAGCTAAATAATGACATAACTAAATA         TATAGCTAAATAATGAGCTATATAAATA 
                                     52890                                38559 
              TATAGCTAAATAATGACCTAGCTAAATA         GATAACTAAATAATGAACTAGATAAATA 
                                     53415                                53647 
              TCTAGATAAATAATGAGATAAGTAAATA         ACTAAGTAAATAATGAGATAAGTAAATA 
                                     82902                                74384 
          CATAAATAAGTAAATAATGACATAACTAAATA         CATAGATAAATAATGATCTAAATAAATA 
                                     83407                                59207 
              GCTAAATAAATAATGATATACCTAAATA             TATAGCTAAATAATGATCTAAATA 
                                     51028                                53408 
                  CATAGATAAATAATGATCTAAATA     CATATATAGATAAATAATGAACTAGATAAATA 
                                     46114                                45304 
              CATAGATAAATAATGAGATAAGTAAATA     CATAAATAAGTAAATAATGAGCTATATAAATA 
                                     55502                                51207 
          CATAAATAAGTAAATAATGAACTACGTAAATA     CATAAATAAGTAAATAATGATCTAAATAAATA 
                                     61337                                65978 
              AGTAACTAAATAATGAGATACATAAATA         TCTAGATAAATAATGAACTAGATAAATA 
                                     63925                                76925 
              ACTAAGTAAATAATGAGATACATAAATA     CATATATAGATAAATAATGAGCTATATAAATA 
                                     61165                                60913 
          CATAGATAAATAAATAATGACATAACTAAATA         GCTAAATAAATAATGAGATACATAAATA 
                                     57681                                60166 
              AGTAACTAAATAATGAACTAGATAAATA     CATAAATAAGTAAATAATGAGATAAGTAAATA 
                                     53512                                70467 
              GATAACTAAATAATGATATACCTAAATA         AGTAACTAAATAATGATCTAAATAAATA 
                                     72631                                65862 
              CATAGATAAATAATGACATAACTAAATA         ACTAAGTAAATAATGACATAACTAAATA 
                                     62462                                59232 
              ACTAAGTAAATAATGATCTAAATAAATA             ACTAAGTAAATAATGATCTAAATA 
                                     57385                                69995 
                  GATAACTAAATAATGATCTAAATA         CGTAGCTAAATAATGATCTAAATAAATA 
                                     49926                                58140 
              GATAACTAAATAATGACATAACTAAATA         TCTAGATAAATAATGACATAACTAAATA 
                                     77186                                52515 
          AGTAACTAAATAATGACATACATAGATAAATA     CATAGATAAATAATGACATACATACGTAAATA 
                                     73058                                86138 
          GCTAAATAAATAATGACATACATAGATAAATA     ACTAAGTAAATAATGACATATATATATAAATA 
                                     61186                                60668 
          CATAGATAAATAAATAATGAAGTAACTAAATA     CATAGATAAATAATGACATAAATACCTAAATA 
                                     49052                                55268 
              AGTAACTAAATAATGAAGTAACTAAATA     CATATATAGATAAATAATGAAGTAACTAAATA 
                                     68558                                47420 
              GATAACTAAATAATGAAGTAACTAAATA CATATATAGATAAATAATGACATAAATACCTAAATA 
                                     62546                                78302 
          TCTAGATAAATAATGACATAACTAAATAAATA         GCTAAATAAATAATGAAGTAACTAAATA 
                                     50197                                67856 
      CATATATAGATAAATAATGACATAGATAGCTAAATA         AGTAACTAAATAATGACGTACATAAATA 
                                     41544                                47842 
          ACTAAGTAAATAATGACATAGATAGCTAAATA         CATAGATAAATAATGACGTAAGTAAATA 
                                     80113                                43433 
              AGTAACTAAATAATGATCTATCTAAATA     CATATATAGATAAATAATGATCTATCTAAATA 
                                     93988                                58682 
          GATAACTAAATAATGACATAACTAAATAAATA     CGTAGCTAAATAATGACATAGATAGCTAAATA 
                                     63604                                58518 
      CATAAATAAGTAAATAATGACATACATACGTAAATA     ACTAAGTAAATAATGACATACATAGATAAATA 
                                     59931                                56629 
          CATAAATAAGTAAATAATGACGTACATAAATA         GATAACTAAATAATGACGTAAGTAAATA 
                                     47911                                57957 
      CATAAATAAGTAAATAATGACATACATAGATAAATA     TATAGCTAAATAATGACATACATAGATAAATA 
                                     49296                                69072 
      CATAGATAAATAAATAATGACATAGATAGCTAAATA         ACTAAGTAAATAATGATCTATCTAAATA 
                                     46387                                52109 
          TCTAGATAAATAATGACATACATACGTAAATA         GCTAAATAAATAATGACGTACATAAATA 
                                     62141                                51453 
              ACTAAGTAAATAATGACGTACATAAATA     CGTAGCTAAATAATGACATAACTAAATAAATA 
                                     44997                                46775 
          GATAACTAAATAATGACATACATAGATAAATA     AGTAACTAAATAATGACATACATACGTAAATA 
                                     43901                                49858 
              TCTAGATAAATAATGACGTACATAAATA     GATAACTAAATAATGACATAGATAGCTAAATA 
                                     62900                                74386 
              TCTAGATAAATAATGACGTAAGTAAATA     TCTAGATAAATAATGACATACATAGATAAATA 
                                     43570                                68415 
      CATAGATAAATAAATAATGACATAAATACCTAAATA     GATAACTAAATAATGACATACATACGTAAATA 
                                     55584                                94305 
          CATAGATAAATAATGACATAGATAGCTAAATA         CGTAGCTAAATAATGACGTACATAAATA 
                                     77783                                40463 
          GCTAAATAAATAATGACATATATATATAAATA     TCTAGATAAATAATGACATATATATATAAATA 
                                     71584                                53973 
          AGTAACTAAATAATGACATAGATAGCTAAATA     GCTAAATAAATAATGACATAACTAAATAAATA 
                                     74777                                71903 
          GCTAAATAAATAATGACATACATACGTAAATA CATATATAGATAAATAATGACATATATATATAAATA 
                                     60838                                67731 
          GATAACTAAATAATGACATATATATATAAATA CATAAATAAGTAAATAATGACATAGATAGCTAAATA 
                                     70450                                68597 
              CATAGATAAATAATGACGTACATAAATA         CGTAGCTAAATAATGATCTATCTAAATA 
                                     47139                                62828 
      CATATATAGATAAATAATGACATAACTAAATAAATA         CGTAGCTAAATAATGACGTAAGTAAATA 
                                     60917                                92896 
              TATAGCTAAATAATGAAGTAACTAAATA     TATAGCTAAATAATGACATAACTAAATAAATA 
                                     77284                                66497 
          CATAGATAAATAATGACATATATATATAAATA CATAAATAAGTAAATAATGACATAACTAAATAAATA 
                                     51961                                52708 
      CATAGATAAATAAATAATGACATACATAGATAAATA     AGTAACTAAATAATGACATAACTAAATAAATA 
                                     49479                                45594 
          CATAAATAAGTAAATAATGATCTATCTAAATA         GATAACTAAATAATGATCTATCTAAATA 
                                     53970                                55497 
          TATAGCTAAATAATGACATAGATAGCTAAATA         TCTAGATAAATAATGAAGTAACTAAATA 
                                     83973                                61696 
      CATATATAGATAAATAATGACATACATACGTAAATA         ACTAAGTAAATAATGAAGTAACTAAATA 
                                     64595                                52660 
              ACTAAGTAAATAATGACGTAAGTAAATA     CGTAGCTAAATAATGACATACATAGATAAATA 
                                     58416                                61615 
              GATAACTAAATAATGACGTACATAAATA     CATAAATAAGTAAATAATGACGTAAGTAAATA 
                                     57551                                69349 
      CATAGATAAATAAATAATGACATACATACGTAAATA     CATAGATAAATAAATAATGACGTACATAAATA 
                                     63458                                69367 
      CATAGATAAATAAATAATGACATAACTAAATAAATA     CATAAATAAGTAAATAATGAAGTAACTAAATA 
                                     70163                                50744 
              AGTAACTAAATAATGACGTAAGTAAATA     CGTAGCTAAATAATGACATACATACGTAAATA 
                                     55348                                57024 
          TCTAGATAAATAATGACATAGATAGCTAAATA     GATAACTAAATAATGACATAAATACCTAAATA 
                                     66164                                61866 
      CATAGATAAATAAATAATGACATATATATATAAATA     CATAGATAAATAAATAATGATCTATCTAAATA 
                                     73838                                51343 
              GCTAAATAAATAATGATCTATCTAAATA         TATAGCTAAATAATGACGTACATAAATA 
                                     48151                                73712 
          GCTAAATAAATAATGACATAGATAGCTAAATA     ACTAAGTAAATAATGACATACATACGTAAATA 
                                     74351                                63861 
      CATAAATAAGTAAATAATGACATAAATACCTAAATA     ACTAAGTAAATAATGACATAACTAAATAAATA 
                                     51157                                56443 
              CATAGATAAATAATGAAGTAACTAAATA     TATAGCTAAATAATGACATACATACGTAAATA 
                                     52539                                77765 
          CGTAGCTAAATAATGACATATATATATAAATA         TATAGCTAAATAATGATCTATCTAAATA 
                                     51299                                48861 
          CATAGATAAATAATGACATAGCTAAGTAAATA     TATAGCTAAATAATGAGATACATATCTAAATA 
                                     76351                                47562 
          CGTAGCTAAATAATGACATACGTAGCTAAATA     TATAGCTAAATAATGACATACGTAGCTAAATA 
                                     65403                                47736 
      CATATATAGATAAATAATGACATAAGTAGATAAATA CATAAATAAGTAAATAATGAGATAAATATATAAATA 
                                     52212                                54634 
      CATATATAGATAAATAATGAGATAAATATATAAATA     CGTAGCTAAATAATGACATACCTAACTAAATA 
                                     64153                                79582 
          TCTAGATAAATAATGACATAGCTACATAAATA CATATATAGATAAATAATGAGATACATAAATAAATA 
                                     79861                                64054 
      CATAAATAAGTAAATAATGAGATACATATCTAAATA     TATAGCTAAATAATGAGATAAATATATAAATA 
                                     64562                                38252 
          GATAACTAAATAATGACATACCTAACTAAATA CATAAATAAGTAAATAATGACATAGCTAAGTAAATA 
                                     83462                                64148 
          CATAGATAAATAATGACATACGTAGCTAAATA CATAAATAAGTAAATAATGACATAGCTACATAAATA 
                                     67698                                63604 
      CATATATAGATAAATAATGACATAGCTAAGTAAATA     CGTAGCTAAATAATGACATAAGTAGATAAATA 
                                     56489                                43657 
          GCTAAATAAATAATGAGATACATAAATAAATA     ACTAAGTAAATAATGAGATAAATATATAAATA 
                                     51746                                46927 
          GATAACTAAATAATGACATAAGTACGTAAATA     GATAACTAAATAATGACATAGCTACATAAATA 
                                     76870                                57678 
          ACTAAGTAAATAATGAGATACATAAATAAATA     TATAGCTAAATAATGACATACCTAACTAAATA 
                                     54186                                73506 
          AGTAACTAAATAATGACATACGTAGCTAAATA     CATAGATAAATAATGAGATACATAAATAAATA 
                                     52488                                61152 
      CATATATAGATAAATAATGACATATCTACCTAAATA CATAAATAAGTAAATAATGACATACCTAACTAAATA 
                                     50249                                46765 
          ACTAAGTAAATAATGACATACCTAACTAAATA     GCTAAATAAATAATGACATACCTAACTAAATA 
                                     42787                                57691 
          CATAGATAAATAATGACATACCTAACTAAATA CATAGATAAATAAATAATGACATAGCTACATAAATA 
                                     53480                                58970 
          GCTAAATAAATAATGAGATAAATATATAAATA     TCTAGATAAATAATGACATACGTAGCTAAATA 
                                     52679                                58393 
          AGTAACTAAATAATGACATAGCTACATAAATA     CATAGATAAATAATGACATAGCTACATAAATA 
                                     52233                                64115 
          ACTAAGTAAATAATGAGATACATATCTAAATA     AGTAACTAAATAATGAGATACATATCTAAATA 
                                     60460                                56695 
          CATAGATAAATAATGACATAAGTACGTAAATA CATATATAGATAAATAATGACATAGCTACATAAATA 
                                     65815                                60831 
          GATAACTAAATAATGAGATACATAAATAAATA     CGTAGCTAAATAATGAGATAAATATATAAATA 
                                     76898                                64240 
          CGTAGCTAAATAATGAGATACATATCTAAATA     GCTAAATAAATAATGACATAAGTACGTAAATA 
                                     59169                                70876 
          TCTAGATAAATAATGAGATACATATCTAAATA CATATATAGATAAATAATGACATACGTAGCTAAATA 
                                     79606                                56503 
          CGTAGCTAAATAATGACATAAGTACGTAAATA CATAAATAAGTAAATAATGACATAAGTAGATAAATA 
                                     56058                                65493 
          CGTAGCTAAATAATGACATAGCTAAGTAAATA     TATAGCTAAATAATGACATATCTACCTAAATA 
                                     63216                                54179 
          GCTAAATAAATAATGACATAGCTAAGTAAATA CATAAATAAGTAAATAATGACATACGTAGCTAAATA 
                                     36867                                69673 
      CATAAATAAGTAAATAATGACATATCTACCTAAATA CATATATAGATAAATAATGAGATACATATCTAAATA 
                                     65094                                59836 
          GATAACTAAATAATGACATATCTACCTAAATA     CGTAGCTAAATAATGACATAGCTACATAAATA 
                                     50030                                69721 
          CGTAGCTAAATAATGAGATACATAAATAAATA     ACTAAGTAAATAATGACATAGCTAAGTAAATA 
                                     62007                                79084 
          GATAACTAAATAATGACATAAGTAGATAAATA     AGTAACTAAATAATGACATACCTAACTAAATA 
                                     53144                                91032 
          TATAGCTAAATAATGACATAAGTAGATAAATA     CATAGATAAATAATGAGATACATATCTAAATA 
                                     91211                                49330 
          TATAGCTAAATAATGACATAAGTACGTAAATA     GCTAAATAAATAATGAGATACATATCTAAATA 
                                     46976                                61229 
      CATATATAGATAAATAATGACATAAGTACGTAAATA     TCTAGATAAATAATGACATAGCTAAGTAAATA 
                                     42976                                54959 
          GCTAAATAAATAATGACATAGCTACATAAATA     TCTAGATAAATAATGACATAAGTACGTAAATA 
                                     70291                                70853 
      CATAGATAAATAAATAATGACATAAGTACGTAAATA     AGTAACTAAATAATGACATAAGTACGTAAATA 
                                     61330                                76587 
          GCTAAATAAATAATGACATAAGTAGATAAATA     TATAGCTAAATAATGACATAGCTACATAAATA 
                                     69929                                91127 
          CGTAGCTAAATAATGACATATCTACCTAAATA CATAGATAAATAAATAATGAGATACATATCTAAATA 
                                     51694                                84232 
          TCTAGATAAATAATGACATAAGTAGATAAATA CATAGATAAATAAATAATGACATATCTACCTAAATA 
                                     61248                                61859 
          CATAGATAAATAATGACATATCTACCTAAATA     GATAACTAAATAATGAGATAAATATATAAATA 
                                     55349                                73586 
      CATATATAGATAAATAATGACATACCTAACTAAATA CATAGATAAATAAATAATGAGATACATAAATAAATA 
                                     61827                                48692 
      CATAGATAAATAAATAATGACATAAGTAGATAAATA     GATAACTAAATAATGACATACGTAGCTAAATA 
                                     54922                                57149 
          TCTAGATAAATAATGAGATAAATATATAAATA     CATAGATAAATAATGACATAAGTAGATAAATA 
                                     76670                                59905 
      CATAGATAAATAAATAATGACATACGTAGCTAAATA CATAGATAAATAAATAATGACATACCTAACTAAATA 
                                     42085                                63716 
          TATAGCTAAATAATGAGATACATAAATAAATA     GATAACTAAATAATGAGATACATATCTAAATA 
                                     47590                                60327 
          AGTAACTAAATAATGAGATACATAAATAAATA     TATAGCTAAATAATGACATAGCTAAGTAAATA 
                                     52425                                59732 
      
      
      Slot "originalSpatialRNA":
      An object of class "SpatialRNA"
      Slot "coords":
                                              x    y
      CGTAGCTAAATAATGAGCTATATAAATA          960  630
      ACTAAGTAAATAATGAACTAGATAAATA          480  420
      TCTAGATAAATAATGAACTACGTAAATA          720  490
      AGTAACTAAATAATGAACTACGTAAATA          840  490
      CATATATAGATAAATAATGAACTACGTAAATA     1320  490
      TATAGCTAAATAATGAGATAAGTAAATA          360  280
      AGTAACTAAATAATGACATAACTAAATA          840  140
      TATAGCTAAATAATGAACTACGTAAATA          360  490
      AGTAACTAAATAATGAGATAAGTAAATA          840  280
      TCTAGATAAATAATGAGATACATAAATA          720  210
      GCTAAATAAATAATGAACTACGTAAATA          600  490
      AGTAACTAAATAATGAGCTATATAAATA          840  630
      CATATATAGATAAATAATGATCTAAATAAATA     1320  700
      GCTAAATAAATAATGAACTAGATAAATA          600  420
      GCTAAATAAATAATGATCTAAATA              600   70
      TATAGCTAAATAATGATATACCTAAATA          360  350
      TATAGCTAAATAATGATCTAAATAAATA          360  700
      AGTAACTAAATAATGATATACCTAAATA          840  350
      CGTAGCTAAATAATGATCTAAATA              960   70
      CGTAGCTAAATAATGAGATAAGTAAATA          960  280
      CATAGATAAATAAATAATGATCTAAATA         1200   70
      CATAGATAAATAATGAGCTATATAAATA          120  630
      TATAGCTAAATAATGAGATACATAAATA          360  210
      CATAGATAAATAATGAACTACGTAAATA          120  490
      AGTAACTAAATAATGATCTAAATA              840   70
      GATAACTAAATAATGAACTACGTAAATA          240  490
      ACTAAGTAAATAATGACCTAGCTAAATA          480  560
      CATAAATAAGTAAATAATGAGATACATAAATA     1080  210
      CATATATAGATAAATAATGATCTAAATA         1320   70
      TCTAGATAAATAATGATCTAAATAAATA          720  700
      CATATATAGATAAATAATGAGATACATAAATA     1320  210
      TCTAGATAAATAATGATCTAAATA              720   70
      CATAGATAAATAAATAATGATATACCTAAATA     1200  350
      GCTAAATAAATAATGAGCTATATAAATA          600  630
      GATAACTAAATAATGAGATACATAAATA          240  210
      CATAGATAAATAAATAATGAGATAAGTAAATA     1200  280
      CATATATAGATAAATAATGACCTAGCTAAATA     1320  560
      CATAGATAAATAATGATATACCTAAATA          120  350
      CATAGATAAATAAATAATGACCTAGCTAAATA     1200  560
      GCTAAATAAATAATGACCTAGCTAAATA          600  560
      CATAGATAAATAATGACCTAGCTAAATA          120  560
      CATAGATAAATAATGAACTAGATAAATA          120  420
      ACTAAGTAAATAATGAACTACGTAAATA          480  490
      CATAGATAAATAAATAATGAACTACGTAAATA     1200  490
      GCTAAATAAATAATGATCTAAATAAATA          600  700
      CATAGATAAATAAATAATGAGCTATATAAATA     1200  630
      CGTAGCTAAATAATGAACTACGTAAATA          960  490
      TCTAGATAAATAATGACCTAGCTAAATA          720  560
      CGTAGCTAAATAATGACCTAGCTAAATA          960  560
      CGTAGCTAAATAATGAGATACATAAATA          960  210
      CGTAGCTAAATAATGATATACCTAAATA          960  350
      CATAGATAAATAATGAGATACATAAATA          120  210
      CGTAGCTAAATAATGACATAACTAAATA          960  140
      ACTAAGTAAATAATGATATACCTAAATA          480  350
      CATATATAGATAAATAATGATATACCTAAATA     1320  350
      CATAGATAAATAAATAATGAACTAGATAAATA     1200  420
      TATAGCTAAATAATGACATAACTAAATA          360  140
      TATAGCTAAATAATGAGCTATATAAATA          360  630
      TATAGCTAAATAATGACCTAGCTAAATA          360  560
      GATAACTAAATAATGAACTAGATAAATA          240  420
      TCTAGATAAATAATGAGATAAGTAAATA          720  280
      ACTAAGTAAATAATGAGATAAGTAAATA          480  280
      CATAAATAAGTAAATAATGACATAACTAAATA     1080  140
      CATAGATAAATAATGATCTAAATAAATA          120  700
      GCTAAATAAATAATGATATACCTAAATA          600  350
      TATAGCTAAATAATGATCTAAATA              360   70
      CATAGATAAATAATGATCTAAATA              120   70
      CATATATAGATAAATAATGAACTAGATAAATA     1320  420
      CATAGATAAATAATGAGATAAGTAAATA          120  280
      CATAAATAAGTAAATAATGAGCTATATAAATA     1080  630
      CATAAATAAGTAAATAATGAACTACGTAAATA     1080  490
      CATAAATAAGTAAATAATGATCTAAATAAATA     1080  700
      AGTAACTAAATAATGAGATACATAAATA          840  210
      TCTAGATAAATAATGAACTAGATAAATA          720  420
      ACTAAGTAAATAATGAGATACATAAATA          480  210
      CATATATAGATAAATAATGAGCTATATAAATA     1320  630
      CATAGATAAATAAATAATGACATAACTAAATA     1200  140
      GCTAAATAAATAATGAGATACATAAATA          600  210
      AGTAACTAAATAATGAACTAGATAAATA          840  420
      CATAAATAAGTAAATAATGAGATAAGTAAATA     1080  280
      GATAACTAAATAATGATATACCTAAATA          240  350
      AGTAACTAAATAATGATCTAAATAAATA          840  700
      CATAGATAAATAATGACATAACTAAATA          120  140
      ACTAAGTAAATAATGACATAACTAAATA          480  140
      ACTAAGTAAATAATGATCTAAATAAATA          480  700
      ACTAAGTAAATAATGATCTAAATA              480   70
      GATAACTAAATAATGATCTAAATA              240   70
      CGTAGCTAAATAATGATCTAAATAAATA          960  700
      GATAACTAAATAATGACATAACTAAATA          240  140
      TCTAGATAAATAATGACATAACTAAATA          720  140
      AGTAACTAAATAATGACATACATAGATAAATA      840 1120
      CATAGATAAATAATGACATACATACGTAAATA      120 1190
      GCTAAATAAATAATGACATACATAGATAAATA      600 1120
      ACTAAGTAAATAATGACATATATATATAAATA      480 1330
      CATAGATAAATAAATAATGAAGTAACTAAATA     1200  840
      CATAGATAAATAATGACATAAATACCTAAATA      120 1050
      AGTAACTAAATAATGAAGTAACTAAATA          840  840
      CATATATAGATAAATAATGAAGTAACTAAATA     1320  840
      GATAACTAAATAATGAAGTAACTAAATA          240  840
      CATATATAGATAAATAATGACATAAATACCTAAATA 1320 1050
      TCTAGATAAATAATGACATAACTAAATAAATA      720 1400
      GCTAAATAAATAATGAAGTAACTAAATA          600  840
      CATATATAGATAAATAATGACATAGATAGCTAAATA 1320 1260
      AGTAACTAAATAATGACGTACATAAATA          840  910
      ACTAAGTAAATAATGACATAGATAGCTAAATA      480 1260
      CATAGATAAATAATGACGTAAGTAAATA          120  980
      AGTAACTAAATAATGATCTATCTAAATA          840  770
      CATATATAGATAAATAATGATCTATCTAAATA     1320  770
      GATAACTAAATAATGACATAACTAAATAAATA      240 1400
      CGTAGCTAAATAATGACATAGATAGCTAAATA      960 1260
      CATAAATAAGTAAATAATGACATACATACGTAAATA 1080 1190
      ACTAAGTAAATAATGACATACATAGATAAATA      480 1120
      CATAAATAAGTAAATAATGACGTACATAAATA     1080  910
      GATAACTAAATAATGACGTAAGTAAATA          240  980
      CATAAATAAGTAAATAATGACATACATAGATAAATA 1080 1120
      TATAGCTAAATAATGACATACATAGATAAATA      360 1120
      CATAGATAAATAAATAATGACATAGATAGCTAAATA 1200 1260
      ACTAAGTAAATAATGATCTATCTAAATA          480  770
      TCTAGATAAATAATGACATACATACGTAAATA      720 1190
      GCTAAATAAATAATGACGTACATAAATA          600  910
      ACTAAGTAAATAATGACGTACATAAATA          480  910
      CGTAGCTAAATAATGACATAACTAAATAAATA      960 1400
      GATAACTAAATAATGACATACATAGATAAATA      240 1120
      AGTAACTAAATAATGACATACATACGTAAATA      840 1190
      TCTAGATAAATAATGACGTACATAAATA          720  910
      GATAACTAAATAATGACATAGATAGCTAAATA      240 1260
      TCTAGATAAATAATGACGTAAGTAAATA          720  980
      TCTAGATAAATAATGACATACATAGATAAATA      720 1120
      CATAGATAAATAAATAATGACATAAATACCTAAATA 1200 1050
      GATAACTAAATAATGACATACATACGTAAATA      240 1190
      CATAGATAAATAATGACATAGATAGCTAAATA      120 1260
      CGTAGCTAAATAATGACGTACATAAATA          960  910
      GCTAAATAAATAATGACATATATATATAAATA      600 1330
      TCTAGATAAATAATGACATATATATATAAATA      720 1330
      AGTAACTAAATAATGACATAGATAGCTAAATA      840 1260
      GCTAAATAAATAATGACATAACTAAATAAATA      600 1400
      GCTAAATAAATAATGACATACATACGTAAATA      600 1190
      CATATATAGATAAATAATGACATATATATATAAATA 1320 1330
      GATAACTAAATAATGACATATATATATAAATA      240 1330
      CATAAATAAGTAAATAATGACATAGATAGCTAAATA 1080 1260
      CATAGATAAATAATGACGTACATAAATA          120  910
      CGTAGCTAAATAATGATCTATCTAAATA          960  770
      CATATATAGATAAATAATGACATAACTAAATAAATA 1320 1400
      CGTAGCTAAATAATGACGTAAGTAAATA          960  980
      TATAGCTAAATAATGAAGTAACTAAATA          360  840
      TATAGCTAAATAATGACATAACTAAATAAATA      360 1400
      CATAGATAAATAATGACATATATATATAAATA      120 1330
      CATAAATAAGTAAATAATGACATAACTAAATAAATA 1080 1400
      CATAGATAAATAAATAATGACATACATAGATAAATA 1200 1120
      AGTAACTAAATAATGACATAACTAAATAAATA      840 1400
      CATAAATAAGTAAATAATGATCTATCTAAATA     1080  770
      GATAACTAAATAATGATCTATCTAAATA          240  770
      TATAGCTAAATAATGACATAGATAGCTAAATA      360 1260
      TCTAGATAAATAATGAAGTAACTAAATA          720  840
      CATATATAGATAAATAATGACATACATACGTAAATA 1320 1190
      ACTAAGTAAATAATGAAGTAACTAAATA          480  840
      ACTAAGTAAATAATGACGTAAGTAAATA          480  980
      CGTAGCTAAATAATGACATACATAGATAAATA      960 1120
      GATAACTAAATAATGACGTACATAAATA          240  910
      CATAAATAAGTAAATAATGACGTAAGTAAATA     1080  980
      CATAGATAAATAAATAATGACATACATACGTAAATA 1200 1190
      CATAGATAAATAAATAATGACGTACATAAATA     1200  910
      CATAGATAAATAAATAATGACATAACTAAATAAATA 1200 1400
      CATAAATAAGTAAATAATGAAGTAACTAAATA     1080  840
      AGTAACTAAATAATGACGTAAGTAAATA          840  980
      CGTAGCTAAATAATGACATACATACGTAAATA      960 1190
      TCTAGATAAATAATGACATAGATAGCTAAATA      720 1260
      GATAACTAAATAATGACATAAATACCTAAATA      240 1050
      CATAGATAAATAAATAATGACATATATATATAAATA 1200 1330
      CATAGATAAATAAATAATGATCTATCTAAATA     1200  770
      GCTAAATAAATAATGATCTATCTAAATA          600  770
      TATAGCTAAATAATGACGTACATAAATA          360  910
      GCTAAATAAATAATGACATAGATAGCTAAATA      600 1260
      ACTAAGTAAATAATGACATACATACGTAAATA      480 1190
      CATAAATAAGTAAATAATGACATAAATACCTAAATA 1080 1050
      ACTAAGTAAATAATGACATAACTAAATAAATA      480 1400
      CATAGATAAATAATGAAGTAACTAAATA          120  840
      TATAGCTAAATAATGACATACATACGTAAATA      360 1190
      CGTAGCTAAATAATGACATATATATATAAATA      960 1330
      TATAGCTAAATAATGATCTATCTAAATA          360  770
      CATAGATAAATAATGACATAGCTAAGTAAATA      120 1680
      TATAGCTAAATAATGAGATACATATCTAAATA      360 2170
      CGTAGCTAAATAATGACATACGTAGCTAAATA      960 1960
      TATAGCTAAATAATGACATACGTAGCTAAATA      360 1960
      CATATATAGATAAATAATGACATAAGTAGATAAATA 1320 1820
      CATAAATAAGTAAATAATGAGATAAATATATAAATA 1080 2030
      CATATATAGATAAATAATGAGATAAATATATAAATA 1320 2030
      CGTAGCTAAATAATGACATACCTAACTAAATA      960 1540
      TCTAGATAAATAATGACATAGCTACATAAATA      720 1610
      CATATATAGATAAATAATGAGATACATAAATAAATA 1320 2100
      CATAAATAAGTAAATAATGAGATACATATCTAAATA 1080 2170
      TATAGCTAAATAATGAGATAAATATATAAATA      360 2030
      GATAACTAAATAATGACATACCTAACTAAATA      240 1540
      CATAAATAAGTAAATAATGACATAGCTAAGTAAATA 1080 1680
      CATAGATAAATAATGACATACGTAGCTAAATA      120 1960
      CATAAATAAGTAAATAATGACATAGCTACATAAATA 1080 1610
      CATATATAGATAAATAATGACATAGCTAAGTAAATA 1320 1680
      CGTAGCTAAATAATGACATAAGTAGATAAATA      960 1820
      GCTAAATAAATAATGAGATACATAAATAAATA      600 2100
      ACTAAGTAAATAATGAGATAAATATATAAATA      480 2030
      GATAACTAAATAATGACATAAGTACGTAAATA      240 1890
      GATAACTAAATAATGACATAGCTACATAAATA      240 1610
      ACTAAGTAAATAATGAGATACATAAATAAATA      480 2100
      TATAGCTAAATAATGACATACCTAACTAAATA      360 1540
      AGTAACTAAATAATGACATACGTAGCTAAATA      840 1960
      CATAGATAAATAATGAGATACATAAATAAATA      120 2100
      CATATATAGATAAATAATGACATATCTACCTAAATA 1320 1750
      CATAAATAAGTAAATAATGACATACCTAACTAAATA 1080 1540
      ACTAAGTAAATAATGACATACCTAACTAAATA      480 1540
      GCTAAATAAATAATGACATACCTAACTAAATA      600 1540
      CATAGATAAATAATGACATACCTAACTAAATA      120 1540
      CATAGATAAATAAATAATGACATAGCTACATAAATA 1200 1610
      GCTAAATAAATAATGAGATAAATATATAAATA      600 2030
      TCTAGATAAATAATGACATACGTAGCTAAATA      720 1960
      AGTAACTAAATAATGACATAGCTACATAAATA      840 1610
      CATAGATAAATAATGACATAGCTACATAAATA      120 1610
      ACTAAGTAAATAATGAGATACATATCTAAATA      480 2170
      AGTAACTAAATAATGAGATACATATCTAAATA      840 2170
      CATAGATAAATAATGACATAAGTACGTAAATA      120 1890
      CATATATAGATAAATAATGACATAGCTACATAAATA 1320 1610
      GATAACTAAATAATGAGATACATAAATAAATA      240 2100
      CGTAGCTAAATAATGAGATAAATATATAAATA      960 2030
      CGTAGCTAAATAATGAGATACATATCTAAATA      960 2170
      GCTAAATAAATAATGACATAAGTACGTAAATA      600 1890
      TCTAGATAAATAATGAGATACATATCTAAATA      720 2170
      CATATATAGATAAATAATGACATACGTAGCTAAATA 1320 1960
      CGTAGCTAAATAATGACATAAGTACGTAAATA      960 1890
      CATAAATAAGTAAATAATGACATAAGTAGATAAATA 1080 1820
      CGTAGCTAAATAATGACATAGCTAAGTAAATA      960 1680
      TATAGCTAAATAATGACATATCTACCTAAATA      360 1750
      GCTAAATAAATAATGACATAGCTAAGTAAATA      600 1680
      CATAAATAAGTAAATAATGACATACGTAGCTAAATA 1080 1960
      CATAAATAAGTAAATAATGACATATCTACCTAAATA 1080 1750
      CATATATAGATAAATAATGAGATACATATCTAAATA 1320 2170
      GATAACTAAATAATGACATATCTACCTAAATA      240 1750
      CGTAGCTAAATAATGACATAGCTACATAAATA      960 1610
      CGTAGCTAAATAATGAGATACATAAATAAATA      960 2100
      ACTAAGTAAATAATGACATAGCTAAGTAAATA      480 1680
      GATAACTAAATAATGACATAAGTAGATAAATA      240 1820
      AGTAACTAAATAATGACATACCTAACTAAATA      840 1540
      TATAGCTAAATAATGACATAAGTAGATAAATA      360 1820
      CATAGATAAATAATGAGATACATATCTAAATA      120 2170
      TATAGCTAAATAATGACATAAGTACGTAAATA      360 1890
      GCTAAATAAATAATGAGATACATATCTAAATA      600 2170
      CATATATAGATAAATAATGACATAAGTACGTAAATA 1320 1890
      TCTAGATAAATAATGACATAGCTAAGTAAATA      720 1680
      GCTAAATAAATAATGACATAGCTACATAAATA      600 1610
      TCTAGATAAATAATGACATAAGTACGTAAATA      720 1890
      CATAGATAAATAAATAATGACATAAGTACGTAAATA 1200 1890
      AGTAACTAAATAATGACATAAGTACGTAAATA      840 1890
      GCTAAATAAATAATGACATAAGTAGATAAATA      600 1820
      TATAGCTAAATAATGACATAGCTACATAAATA      360 1610
      CGTAGCTAAATAATGACATATCTACCTAAATA      960 1750
      CATAGATAAATAAATAATGAGATACATATCTAAATA 1200 2170
      TCTAGATAAATAATGACATAAGTAGATAAATA      720 1820
      CATAGATAAATAAATAATGACATATCTACCTAAATA 1200 1750
      CATAGATAAATAATGACATATCTACCTAAATA      120 1750
      GATAACTAAATAATGAGATAAATATATAAATA      240 2030
      CATATATAGATAAATAATGACATACCTAACTAAATA 1320 1540
      CATAGATAAATAAATAATGAGATACATAAATAAATA 1200 2100
      CATAGATAAATAAATAATGACATAAGTAGATAAATA 1200 1820
      GATAACTAAATAATGACATACGTAGCTAAATA      240 1960
      TCTAGATAAATAATGAGATAAATATATAAATA      720 2030
      CATAGATAAATAATGACATAAGTAGATAAATA      120 1820
      CATAGATAAATAAATAATGACATACGTAGCTAAATA 1200 1960
      CATAGATAAATAAATAATGACATACCTAACTAAATA 1200 1540
      TATAGCTAAATAATGAGATACATAAATAAATA      360 2100
      GATAACTAAATAATGAGATACATATCTAAATA      240 2170
      AGTAACTAAATAATGAGATACATAAATAAATA      840 2100
      TATAGCTAAATAATGACATAGCTAAGTAAATA      360 1680
      
      Slot "counts":
      500 x 270 sparse Matrix of class "dgCMatrix"
    Message
        [[ suppressing 33 column names 'CGTAGCTAAATAATGAGCTATATAAATA', 'ACTAAGTAAATAATGAACTAGATAAATA', 'TCTAGATAAATAATGAACTACGTAAATA' ... ]]
    Output
                                                                                   
      Gene1     31   67   48   48   59   41   70   19   49   58   45   36   53   53
      Gene2    100  121   66   42   65   83   71   87   80  139   41  126  172  101
      Gene3     26   64   62   42   50   42   57   48   53   35   51   45   78   57
      Gene4      9    6    3    7    3    2   10    7    5    9    5    7    3    1
      Gene5   1061 1283 1777 1479 1015  876 2984  972  875 1485 1339 1346 2181 1257
      Gene6     57   55   40   51   28   76   94   61   47   85   21   86   89   96
      Gene7    116   74   35   31   48   55  103   52   63   75   37   77   90   77
      Gene8      .    2    1    .    .    .    1    .    1    .    .    .    1    .
      Gene9     22   37  109   44   57   38  124   33   42   21   57   40   71   50
      Gene10    38   19   22    4   29   15   16    9   14   14   16   14   17   19
      Gene11     .    .    1    .    .    3    2    1    2    2    1    3    1    2
      Gene12    80  173  122  143  182  349  218   60  244  103   95  125  360  249
      Gene13     3   16    8    9    5    5   19    1    5   15   11    .   10   13
      Gene14  1607 1274  683  596 1134 1204 1188  839 1318 1689  583 1230 1552 1510
      Gene15     1    9   11    8    4    5   29    2    8    2   11   10    4   14
      Gene16     7   13    4    7    4    3   18    8    7    9   11    5   11    8
      Gene17    41   28   22   33   36   28   30   17   15   40   18   19   28   25
      Gene18    14   17   36   25   10   24   25   11   11    7   19   18   28   28
      Gene19    33   46   35   24   33   42   57   17   18   33   32   27   42   31
      Gene20    35   23   23   20   12   45   26    9   15   27   18   29   20   38
      Gene21     .    4    9    7    .    .    5    4    3    6    1    2    1    .
      Gene22  1354 1274 1531 1148 1572 2105 1831 1139 1732 1596 1052  998 2026 2186
      Gene23    16    8   16    9    6   13   31    1    4    8    6    8   16    7
      Gene24     1    1    .    .    .    2    2    .    .    .    .    .    .    .
      Gene25     9    3    1    4    .    5    .    .    1    1    .    2    1    2
      Gene26    47   40   26   42   61   25   22   34   28   58   28   56   61   45
      Gene27   315  357  114  123   58  139  139  126   67  246   82  176  114  179
      Gene28   816  585 1431 1289 1388 1586 2105  400 1170  765 1270  633 1673 1898
      Gene29    70   64   97   76   40   61  143   50   51   70   52   83   58   85
      Gene30    11   13    7    6    9    6   11    1    3   15    6   10   20   21
      Gene31   194  114  107  117   96  134  185   82  165  152  102  129  132  137
      Gene32    86   29   54   24   32   48   79   33   29   48   36   73   68   52
      Gene33     .    .    .    .    .    .    .    .    .    .    .    2    .    .
      Gene34    31   79   99   47   61   95  114   51   61   85   40   58  102   94
      Gene35    17   12   46   16   37   43   32   14   41   27   20   21   42   60
      Gene36    95  116  113   81   91  144  148  100  117   98   71   75  117  115
      Gene37    12   14   12   36   38   36   31   10    8   12   12   33   46   39
      Gene38    14   12    6    .    5    3    9    6    6   14    3   17    2    4
      Gene39    29   27   20    9    9   34   31   12   31   46   24   22   40   39
      Gene40   296  275  479  406  308  548  897  187  449  398  456  242  569  477
      Gene41     .    .    4    .    1    1    5    .    2    .    .    3    5    3
      Gene42    35   15   56   14   11   33   54   22   34   28   20   25   15   34
      Gene43    49   74   32   41   69   47   63   51   88   64   36   49  106  129
      Gene44   235  286  207  237  228  251  337  164  225  308  130  277  238  265
      Gene45    83   69   79   61  102   84  126   52   91   97   58  119  136  148
      Gene46    97   86   42   38   72   82   83   56   93   93   35   95  105  145
      Gene47    58   61   52   34   81  117   76   21  100   88   48   37  169  143
      Gene48   223  158  124  160  108  188  301  128  118  179  159  136  147  251
      Gene49     4    1    .    .    .    1    1    .    1    .    .    .    2    .
      Gene50     7   17   18   13    7   12   18    8   17   10   13   11   12    9
      Gene51  1647 1099 1045 1311  834 1222 1634  608 1016 1304  913 1036 1376 1251
      Gene52    49   32   15   21   20   36   18   22   19   37   17   45   32   47
      Gene53  1096  863 1039 1007  877  799 1382  736  773  876  825  635 1217 1281
      Gene54    26   27   18   23   29   24   58   12   21   51   28   32   35   37
      Gene55    83   63   57   84   44   72  115   54   84   67   48   68   65   83
      Gene56     .    1    4    2    3    .    .    2    .    1    .    4    5    .
      Gene57    25   18   15   12   23   28   41   28   11   26   28   12   29   23
      Gene58    35   26   19   29   15   20   27   11   27   26    7   46   28   30
      Gene59    59   48   44   37   65   49   46   53   43   51   32   52   67   78
      Gene60     5   11   11   13    3    7   10    1    7    4    7    9    8    1
      Gene61    74   42  138  106   50   46  212   29   66   53  116   35   81  111
      Gene62    20   24   26   13   15   27   22   18    8   18   41   11   32   35
      Gene63    24   14    3   20   16   35   37   20   31   24   14   11   22   27
      Gene64   136  239  133  167  191  144  207   97  121  183   87  172  235  184
      Gene65     3    5    8    5    8    4    2    4    2    2    .    4    3    4
      Gene66    26   17    8   11    .    3   32    5    1    7    6   24    7    7
      Gene67    15   26   17   17    .   13   32   17    6   16   14   31    6   14
      Gene68    33   22   18   21   31   52   35   24   19   13   19   27   27   17
      Gene69     9    7    8   20    4    3   11    1    3   23    5    4    3    4
      Gene70    32   35   15   25   14   13   28    7   18   25   19   20   27   36
      Gene71     2    9    7   22    5    8   16    .    2    5    3    3   19   18
      Gene72   156   94  116  124   62  109  156   84   84  129  129   92  141  129
      Gene73   131  227   69   83   85  139  116  141   97  129   56  133  168  139
      Gene74    10   11    4    6    7    4   15    2    8    6   12    2    4    9
      Gene75   101  117   51   54   45  142   96   58   88  154   83  106  175  126
      Gene76    36   22   11   13   15   22   15   23   13   56   15   35   22   17
      Gene77   440  415  268  285  363  308  549  224  297  358  269  281  381  381
      Gene78    25   43   32   27   17   26   29   21   17   44   25   41   37   51
      Gene79     3    4    4    5   13    4    3    4    4   18   10    4    3    3
      Gene80   121  207  143  109  146  170  298  197  101  229  110  206  197  138
      Gene81    38   31   12   14   27   25    9   10   21   33    3   12   30   41
      Gene82    73   84   44   57   76   94  105   75  101  104   48   86   64   74
      Gene83    93   48  128   85   44  108  173   35  105   78   46   52  155   99
      Gene84   250  315  222  173  254  314  321  127  298  351  255  262  478  310
      Gene85   146  162   77  162  104  158  162  113  146  208  126  143  177  245
      Gene86   243  175  159  124  120  169  180   82  120  204  100  171  184  168
      Gene87    11    2    7    3   31   43    3    5   25    3    6   17   60   38
      Gene88    15   17   16    6    4   13   17    7    7   17   17   20   12   29
      Gene89     4    5    4    .    1    3    9    3    4   10    2    2    7    3
      Gene90    14   23    6    6   16   11   18   14    8   37    8   18   15   16
      Gene91   274  126  139  113   85  136  204   92  118  192   80   90  174  147
      Gene92    17   26    6    4    9   16    4    4    8   20   20   10   12   21
      Gene93     .    .    .    .    .    .    .    .    .    .    .    1    .    .
      Gene94    69   95  101   74   27   95  104   64   53  103   68   45   81   83
      Gene95   114  128  233  168  112  154  278   70  144  225  170  158  116  187
      Gene96    11    6    6    2    1    7   11    4   13    1   20    3   25   13
      Gene97   115  108   76   97  126  121  187   72   53  110   77   78  127  121
      Gene98     .    .    1    1    .    .    .    .    .    1    .    .    .    .
      Gene99    94  121  108  122  112  144  215   64  100  110   92  109  131  121
      Gene100 3273 2208 2126 1855 3950 3740 2915 1831 4678 2471 1673 2466 6553 7317
      Gene101  158  174  199  108  180  243  347  112  178  171  164  156  215  140
      Gene102  331  247  241  153   98  157  350  238  117  228  138  179  186  143
      Gene103    .    .    .    .    .    .    .    .    .    .    .    .    1    .
      Gene104    .    3    4    2    1    .    5    .    2    .    .    1    1    3
      Gene105   74   90   64   58   10   21  108   33   17   87   68   73   74   90
      Gene106    7    4   16    4    5    9    3    4    3    4    3    6   13    .
      Gene107  198  157  191  197  129  108  213  116  124  339  100  212  139   88
      Gene108   74   55   63   39   60   39   75   32   28   66   85   29   45   67
      Gene109    2    1    1    .    1    6    2    1    .    .    1    .    .    6
      Gene110 2539 2667 3061 2454 2046 3145 4226 1803 2773 2676 1785 2868 3281 3879
      Gene111    7    2    3    4    2    2    3    .    3    2    1    .   12    5
      Gene112    .    .    .    1    2    .    .    .    .    1    .    .    .    .
      Gene113   37   20   19   24   22   37   32   30   34   18   15   33   33   19
      Gene114   23   11   12   34   16   10   37   11   25   27   24   21   24   38
      Gene115   25   30   26   51   62   57   50   30   22   61   41   43   66   58
      Gene116    5    6   12   10    8    9    7    1    5    6   10    9    8   11
      Gene117   13   28   73   71   71   83  130   31   95   47   64   23   83   95
      Gene118   36   46   46   70   37   35   81   20   37   43   49   51   48   38
      Gene119  303  209  183  228  250  465  216  244  239  440  176  294  365  518
      Gene120   18   35   45   26    8   17   53    7   17   37   36   15   25   23
      Gene121   53   86   37   31   28   22   49   46   25   77   21   38   41   34
      Gene122   98   84   88  101   62   38  110   73   51  125   50   76   88   92
      Gene123   11   17   21   30   14   25   21    8   18   14    5    8   34   36
      Gene124   41   16   54   26   31   39   29   28   38   53   10   43   39   55
      Gene125   53   34   54   62   50   82  110   29   82   82  113   35   68  112
      Gene126    5    5    4    8    3    4   20    1    7   28   21   11    9   19
      Gene127   95   70  102   57   56   44   66   36   52   62   66   60   48   71
      Gene128   13   12    1    3    8    4   20    2   10   16   13    4   23   35
      Gene129    3    9    .    .    4    3    4    4    6    7   13    2    2   13
      Gene130    8    9    .    3   24    8    4    9   15   25    1   24   17   17
      Gene131    .    .    2    6    2    2    1    .    2    .    .    .    2    .
      Gene132   77   45   61   60   66   68   93   52   54   97   67   67   97   80
      Gene133  141  213  153  161  206  197  260  130  101  167  139  234  282  241
      Gene134   78   87  114  154   90  105  232  104  136   87  124   59  169  122
      Gene135   33   18   27   23   42   28   58   22   32   64   26   32   39   33
      Gene136    .    .    .    2    .    .    .    .    .    .    .    .    .    .
      Gene137    .    .    4    2    .    .    .    .    .    2    .    1    .    2
      Gene138    7   13    4   11   13    .   13    3    2    3    7   12    4    5
      Gene139  106  125  139  155   84   86  170   79   47  205   89  115  147  152
      Gene140    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene141   34   33   25   12   47   30   30   24   20   46   13   29   31   44
      Gene142  273  272  185  193  218  208  482  154  117  334  131  299  402  303
      Gene143   25   29    4    6    8    4    8   12   10   17   14   37   19   15
      Gene144 1082  877  599  607  759  814 1054  788  867 1221  520 1023 1404  628
      Gene145    9    5    4   10   10   11    2    .   11    5    2    8   13   10
      Gene146   53   35   26   35   35   46   53   38   42   27   24   40   60   67
      Gene147   62   28   53   50   29   29   76   27   39   53   36   52   52   37
      Gene148   12   20   13    7   11   24   23   21   21   27    6   19   33   17
      Gene149 1346 1430 2615 1975 2090 2556 3173 1192 1897 1795 2083 1343 2818 2542
      Gene150   62   39   51   15   63   32   63   21   45   59   43   43   68   58
      Gene151   28   26   38   19   13   26   53   22   40   25    7   16   28   38
      Gene152    2    1    8    2   10   11    4    1   11    6    5    4    6    5
      Gene153   68   84   55   35   98  126   71   45   68   84   33   73   96   76
      Gene154   30   50   47   37   40   35   78   22   28   46   44   43   24   34
      Gene155    9    4   10    7    2    2    5    6    3   11    5    6    7   13
      Gene156    3    3    5    2    1    4    1    5    .    4    .    1    .    .
      Gene157   38   12   18    9   33   32   25   27   26   50   32   25   29   22
      Gene158   47   42   34   33   25   32   50   38   28   23   34   46   19   52
      Gene159    .    .    .    .    1    .    .    .    .    .    .    .    4    .
      Gene160   32   17   37   18   19   38   55   24   16    6   16   27   16   54
      Gene161   43   43   58   85   36  110   95   36   80   41   72   33   95   85
      Gene162    2    2    .    1    2    4    .    .    .    1    .    3    1    5
      Gene163  100   64   98   66   48   85  122   54   47   61   39   82  101  108
      Gene164   16    7   23   23    8   19   28    7   23   31   22   23   36   51
      Gene165   79   57   40   27   35   30   92   24   56   77   53   84   38   68
      Gene166    4    3    2    4    1    6    1    2    2    3    1    2    3    2
      Gene167    4    2    1    3    3    3    3    .    .    4    2    3    3    8
      Gene168    6    3    6    6    .    3    9    1    .    5    .    3    .    9
      Gene169    7    3   14   20    4   12   16    4    8   11   11    8   13   15
      Gene170   36   38   40   34   17   33   69   26   17   49   31   47   45   49
      Gene171   59   29   45   25   47   53   54   27   76   48   59   35   78  116
      Gene172 1406 1440 1724 1336 1030 1350 1922  873 1343 1697 1244 1182 1700 1730
      Gene173  234  213  206  164  156  290  237  127  171  324  103  254  284  396
      Gene174  256  183  176  246  138  183  494  223  167  338  224  240  194  267
      Gene175   24   41   52   41   13   29   47    8   18   23   51   14   43   46
      Gene176  125   82  128   69   55   67  129   68   99   52   63   54   89   98
      Gene177   16   12   22   16   11    8   16    7    7   14    4   12   12    7
      Gene178 1520 1521 1732 1489 1166 1226 2640 1064 1213 2112 1215 1508 1857 1547
      Gene179  354  259  135   60  177  283  154  151  218  216   77  253  289  336
      Gene180   29   21   26   22   23   30   41   12   16   31   15   26   33   28
      Gene181   20   36   36   66   18   66   65   12   61   36   47   11   75   53
      Gene182   18   19    5   10    3    6   18    3    6   12   12    5   16   11
      Gene183   88   87   29   21   70   67   93   43   48   57   31   60   73   98
      Gene184    .    1    .    .    .    .    .    1    .    .    1    .    1    .
      Gene185  174  198  111   85  211  317  211  170  164  175  119  167  347  278
      Gene186   91  116   95  116   62   89  113   51   67  141   83  121  111  127
      Gene187  335  309  392  265  234  309  387  209  255  338  188  259  286  309
      Gene188    8    9    4    .    2    5    9    3    3    1    5    3    3   10
      Gene189    4    .    4    6    2   11    5    .    4    5    7    3    7    8
      Gene190  682  545  692  664  352  511 1003  499  361 1038  505  964  581  478
      Gene191   46   27   25   33   55   23   78   50   22   71   34   50   39   45
      Gene192   14    4   11    9    8   14    4    4    8    9    5    4   11   12
      Gene193  148  100  162  142  138  184  219   72  168  133  105  150  225  199
      Gene194   44   24   22   13   26   33   39    7   31   35   17   37   34   25
      Gene195    1    .    .    .    1    1    .    .    .    .    .    1    2    .
      Gene196   20   30   43   31   36   34   28   11   22   31   18   13   31   35
      Gene197   31   27   51   37   15   13   51    7   25   27   35   33   38   42
      Gene198   24   38   21   28   14   15   35   29   21   26   16   22   39   22
      Gene199   18   10   10   18   17   13   30   10    9   16   13   16   30   16
      Gene200   72  113  442  315   69  115  542   71   83   91  284  108  129   90
      Gene201    .    7    2   10    1    3    2    4    1    8    7    5    2    5
      Gene202    3    .    9    4    2    4   11    3    3    1    2    3    7    9
      Gene203   54   47   99   69   42   56  100   43   43   63   45   75   93   93
      Gene204   53   28   45   23   46   56   73   26   80   57   31   26   75   83
      Gene205    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene206    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene207    5   11   10    6    7    7   13    9    1   10    5   18   14    8
      Gene208    8   12   55   29   20   31   58    4    7   16   18   14   22   10
      Gene209    .    .    .    .    .    .    5    1    1    2    .    2    .    .
      Gene210   18   21   17   17    7   33   38    8   22   22   15   24   19   26
      Gene211  125  165   86  121   99   97  245   81  191  172  116   93  153  219
      Gene212   22   14   14   21    5    9   38   24   11   23   16   14   16   27
      Gene213  171  141  155  146   56   83  230   94   50  167  131   83  105   53
      Gene214   43   11   24   15   26   12   26   14   19   32   18   31   23   40
      Gene215   12    9   11    6    7   23   17   13    6    6    5    9   11   13
      Gene216    .    2    3    .    1    .    1    .    1    2    .    .    .    5
      Gene217   41   81   42   44   17   43   55   38   35   69   31   51   50   48
      Gene218  114  107  112  104  107  118  120   59   84  117   50   93  108  100
      Gene219   25   21   72   65   33   18  101   10   32   27   92   16   42   30
      Gene220   44   29   21   23   23   17   30   24   19   12   25   26   28   29
      Gene221   31   23   42   19   37   22   77   32   25   40   23   38   33   32
      Gene222  300  401  322  367  316  643  638  288  615  402  293  504  722  813
      Gene223    3    1    7    9    4    2    8    .    2    2    1    2    6    7
      Gene224   13    4    1    7    4    6   13    7    2   18    2    3    9   18
      Gene225   25   26   28   10   22   30   35   23   28   26   24   22   21   15
      Gene226    5    7    .    2    7    8    7    1    3    2   11    4    6   18
      Gene227    2    .    1    1    .    1    2    1    5    1    2    2    .    1
      Gene228    2    .    2    .    7    1    2    .    3    6    .    .   10    3
      Gene229   36   13   39   29   12   15   69   17   21   37   15    8   44   25
      Gene230 2254 1980 1442 1100 1070 1475 1668 1160 1460 2589  876 2118 1868 1779
      Gene231   20   25   25   30    9   13   55   30   10   30   22   28   23   11
      Gene232   56   24   52   35   18   24   34   28   22   34   33   34   26   26
      Gene233   36   49   42   56   41   36   57   28   52   45   39   25   48   76
      Gene234   47   54   38   37   27   53   50   32   53   55   30   31   66   83
      Gene235   35   35   23   29   21   38   26   16   21   51   16   26   63   42
      Gene236   39   69   33   56   51   74   90   30   50   81   41   70  114   92
      Gene237    8   10    2    9    .    3    9    6    7    7    5    .    4    5
      Gene238   40   50   28   40   25   49   54   22   12   39   51   43   54   53
      Gene239   28    7    8    4    7   13   25   16    5   16    8   20   14   16
      Gene240   36   14   50   20   29   69   39   16   49   25   19    8   90   66
      Gene241   67   63   80   80   39   99  150   32   52   69   56   78  179   87
      Gene242  419  480  391  286  280  333  538  249  249  394  400  428  468  625
      Gene243  112  101   75   80  115  184  197   82  134  171   79  114  221  190
      Gene244   34   19   48   23   28   14   42   46   23   28   32   24   37   38
      Gene245   59   66   49   43   50   31   52   24   27   38   17   44   58   37
      Gene246   90   68   81   70   49   53   78   32   82   81   48   87   94  101
      Gene247    4    5    5    3    5    8    4    4    4    4    7    6   13   11
      Gene248  113  118  188  168   91  119  305   69   87   83  150   99  174  167
      Gene249 2764 2311 2436 2350 2246 2173 3503 1197 1838 3134 1917 2333 2643 2494
      Gene250    7   11   16    5    3    9   38   14    5   17   13   25   21   21
      Gene251    1    3    .    .    .    .    6    .    6    1    .    2    2    3
      Gene252   37   30    8   15   16    6   19   11   15   31   10   13   13   14
      Gene253   40   33   56   99   31   34   98    7   37   65  100   52   99  113
      Gene254    8    7    7    2    9    5    8    4    .    3    6    5    9    4
      Gene255   17   12   24   21   21   23   37   16   22   48   20   30   26   31
      Gene256   14   34   25   29   23   13   22   11   17   38   12   23   29   24
      Gene257    .    1    .    1    1    4    .    1    .    1    .    .    4    1
      Gene258   17   11    8   16   27   24   37    8   13    7   11   12   21   21
      Gene259    2    .    .    .    1    .    .    .    .    2    .    .    .    .
      Gene260  186  131   74   87  117  118  119   94  166  141   60  124  143  164
      Gene261    9    8    8   12   12   15   20   13   10    9    8    2   18   32
      Gene262  126  115   81   96   96  104  153   50   72  103   61  103  139  131
      Gene263   23   50   20   30   29   44   41   22   18   52   31   40   85   47
      Gene264   40   43   29   24   68   86   68   28   85   64   31   76   98   68
      Gene265   21   12    7    7    5   17    7   15   19   21    3    7   17   23
      Gene266  115   90  117  121  103  109  174   90   85  168   61  118  132  100
      Gene267   68   81   39   24   41   43   60   48   36   83   29   54   56   63
      Gene268 1801 1801 2083 2310 1780 2383 3860 1263 1998 2232 1631 1370 3058 3222
      Gene269   31   18   73   58   43   57  102   14   39   34   58   24   68   68
      Gene270   54   56   71   41  112   65   96   26   94   59   29   33   86  100
      Gene271   41   25   40   21   30   55   65   15   29   19   25   25   57   68
      Gene272    5    1   11    7    4    4   11    4   14    2    2    4    8    8
      Gene273   43   30   35   49   79   43   64   19   28   26   32   25   54   51
      Gene274  190  173  101   97   62   75  141   82   52  228   71  155  107   82
      Gene275   13   12  133   67   26   35  134   12   19   31   68    8   23   15
      Gene276   21   25   51   37   19   22   68   12   20   26   27   17   16   40
      Gene277   60   50   70   59   36   42   38   28   86   36   30   30   63   73
      Gene278  133  111  127  102  124  122   98   65  110   88   66  103  145  183
      Gene279    9    4    5    4    8   22    8    6    6   14    3   15    5    7
      Gene280   68   41   57   75   61   39   73   43   38   45   28   42   72   87
      Gene281    4    1    3    7    3    .    7    .   12    6    3    4    4    5
      Gene282   22   31   13   12    8   21    7    4   21    9    3    9   17   22
      Gene283  368  468  472  505  536  878  660  270  611  420  390  399  818 1046
      Gene284   47   39   85  105   32   57  111   38   51   61   84   55   51   40
      Gene285   12   29   19   19   27   23   31   16   10   21   17   27   26   35
      Gene286   47   45   28   32   50   46   28   17   45   39   20   36   73   58
      Gene287   15    6   25   21   41   26   36   12   14   23   24   12   25   33
      Gene288   59   27   50   30   26   14   77   37   51   66   34   42   39   36
      Gene289    3   11   32    7   16    6   16    3    7   18   10   10   21   21
      Gene290 2580 2249 2358 1646 1648 2149 3000 1415 1770 2383 1704 2426 2399 2421
      Gene291   15   13   13   10   12    9    8    1    3   15    5    5    7    9
      Gene292   50   35   72   39   36   38   71   40   79   62   72   26   80  115
      Gene293   29   35   51   18   31   41   49   12   31   52    7   32   41   41
      Gene294   19    7    9    5    9    7   10    .    5   10    6    8    4    7
      Gene295    2   13    3    1    4    6   16    2    6    3    1    3    5    6
      Gene296  158  200  166  135   91   99  271  111   84  158  116  137   99  141
      Gene297  165  210  200  162   87  167  288   86  188  182   98  154  148  208
      Gene298  301  304  264  225  279  285  415  255  269  418  154  364  375  316
      Gene299    .    .    1    3    4    7    6    3    2    3    2    1    2    2
      Gene300    .    4    1    .    2    5   12    1    8    5    4    4    4    8
      Gene301   35   16   31   27   15   21   42   23   20   36   23   27   30   32
      Gene302   15   17   27    7    9   40   44    5    9   16   12   15   34   21
      Gene303 4034 2906 2434 2470 1937 2434 3477 1941 2132 3894 2383 2894 2840 3052
      Gene304  150  199  145  132  119  190  242   92  124  166  116  199  206  194
      Gene305   10   20   29   42   26   37   29    9   18   10   15   21   47   27
      Gene306  878  750  878  877  551  732 1151  466  511  781  708  685  886  816
      Gene307    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene308    .    .    .    .    .    1    .    .    .    .    .    .    .    .
      Gene309  100  106   99   71   82  118   88   53  140   97   71   81  165  189
      Gene310    .    2    1    2    3    5    3    1    .    4    2    .    2   10
      Gene311   13    9    4    8    7    7    8    3   12    6    3    4   14    3
      Gene312  354  389  318  385  389  418  665  312  400  644  297  538  599  502
      Gene313   19   29   83   65   46   46  146   22   39   49   64   31   60   59
      Gene314   39   50   35   31   65   67   82   23   53   40   32   49   39   43
      Gene315    1    2    .    .    .    2    1    .   10    3    .    .    7    1
      Gene316  208  152  256  280  134  130  247   82  104  202  121  145  195  181
      Gene317  214  121  150  114  123  126  206  126   82  141  111  134  111  139
      Gene318    4    4   15    9   12   10   35    5   12    2   14    6    6    8
      Gene319   34   31   60   51   22   50   61   25   37   70   43   50   43   41
      Gene320   21   12   23    6   15   21   24   12   18   27   14   31   26   21
      Gene321    .    .    .    .    2    .    .    .    .    .    2    .    .    .
      Gene322   19   16    2    6   38   34   24   18   11   14    2   15   33   20
      Gene323   64   63   41   51   48   68   74   35   36   42   44   66   38   50
      Gene324   69   68  236  171   54   76  330   64   68   94  159   77  115   62
      Gene325   89  108   75   66   94   87  145   78   81  106   80  107  163  110
      Gene326   44   52   11   21   19   21   20   12   38   30    7   25   22   20
      Gene327   14    9   63   40   40   11   59    6   16    4   31    8   22   15
      Gene328  142   88   98   45  116  167   94   74   85  135   78   65  109  155
      Gene329   28    8   27   20   33   44   39    8   35   21   27   22   33   35
      Gene330    .    .    .    .    .    3    3    .    .    .    .    .    2    .
      Gene331   31   36   27   13   16   26   26   23   25   21   13   25   44   37
      Gene332  242  142  219  180  101  208  370  120  209  208  151  171  201  234
      Gene333   10   11    4    .    1    3    6    9    2   11    4   12    1    1
      Gene334   42   68   71   50   33   53   93   30   35   62   41   71   90   64
      Gene335    .    .    3    2    1    .    3    1    1    1    .    2    5    3
      Gene336   12   13   25   25   13   16   41   16   18   29   25   15   13    8
      Gene337   29    7   18   13    8   10    8   12    2   11   10    8   20    7
      Gene338   28   21   55   45   39   24   72   19   25   44   29   30   55   44
      Gene339  115  138  204  173  121  153  374   65   65  133  178  110  139  178
      Gene340    7   17   18    7    7   14   11    8   13   16    6    8   13   13
      Gene341  134  140  132  169  109  126  219  101   80  198   88  137  198  173
      Gene342  193  127  107  154  169  112  145  136  215  196  112  125  144  149
      Gene343   79  108  192  200   50   70  276   79   50  101  202  114   74   83
      Gene344   22    6   11   28    9   18   47    6   21   25   17   16   18    8
      Gene345   37   29   65   54  115  110  126   32   76   40   80   29  157  145
      Gene346   39   52  115  128   98   99  113   17   56   67   59   67  140  127
      Gene347   19   26   24   20   13   33   24   14   25   21   13   27   27   19
      Gene348  232  222  238  281   64  121  349  129   82  259  184  140  140  114
      Gene349  120   78   64   58   74   91  112   73   72   85   65  113  125  120
      Gene350  132   77   95   61   61   54  158   60  110  126   84   98  160  103
      Gene351    5    .    .    2    2    1    3    2    2    6    1    .    1    .
      Gene352   12    7    3   14    2    5    9    7    5    9    .   15   23    5
      Gene353  162  120  124  114   79   81  150   77   69  175  102  121  103  143
      Gene354   42   64   52   59   51   57   39   13   20   48   52   42   52   67
      Gene355   13    7   15   17    4   18   18    7   17    7   13   34   23   23
      Gene356   17   26   19   18   20   31   27    9   13   26   11   12   46   23
      Gene357 1535 1181 1448  889 1051 1416 1610  638 1198 1800  967 1501 1252 1453
      Gene358    1    5    2    5    5    .   14   11    4   21    3    2    8    7
      Gene359   95  106   94  111  128  205  128   81  108  174   87  138  260  201
      Gene360   26   19   16   12   38   82   25    9   49   31   11   32   79   40
      Gene361 1032  906 1271 1325  763  935 2051  557  817 1210 1071 1046  954 1191
      Gene362  184  145   94  125  298  384  184  105  332  152  121  160  534  442
      Gene363   79   51   90  105   57   68  114   46   60   85   54   68   66  154
      Gene364    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene365   39   38   26   20   11   29   24   13   18   22   34   25   34    9
      Gene366   15   11   18   15   31   25   21    7   24   20   19   21    9   21
      Gene367   21   11    7    .    .   12    5    5    2   13    2   10    6   10
      Gene368    .    1    .    .    .    .    1    .    2    .    1    .    .    2
      Gene369   11   27   13   23   21   29   24   13   22   22   11   21   33   42
      Gene370    6    1    7    6    6    9    4    7    4    6    4    4    4    7
      Gene371  145  164  109  157  142  161  270   99  187  167  155  103  218  243
      Gene372   38   38   53   25   35   51   76   17   26   45   51   37   44   47
      Gene373    7   13   14    8   17   17   14    7   15   14    5    7   10   16
      Gene374   27   34   33   12   27   28   36   20   31   31   14   28   42   36
      Gene375    7    7   11   18   12    6   20    9    6   11   12    7    8   13
      Gene376    2    5    5   11    7    4    6    7    2    4    1    3    4    3
      Gene377   39   60   29   19   17   23   25   16   29   18   32   25   35   32
      Gene378   24   13   12    2   15   20   10    3   13   27    2   14   21   28
      Gene379   23   17   19   25   29   41   16    4   51   28   12   10   45   34
      Gene380   48   34   28   13   11   24   27   20   31   26   24   24   29   31
      Gene381   55   45   83   72   60   61   96   37   49   80   39   72  105   81
      Gene382   21   50  100   69   30   38  139   19   29   37   61   38   57   60
      Gene383    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene384  181  172  139  149  110  125  228  100  143  315  133  193  173  155
      Gene385   54   51   93   83   67   97  106   62  116   37   89   74  170  122
      Gene386    2    3    2    9    5    2    7    7    1   11    7    3    6   10
      Gene387   47  109   43   52   41   52   99   42   49   67   47   59   53   79
      Gene388    6    6    9    1    9    9    7    1    2    6    2    5    1    2
      Gene389   59   31    4   27   13   11   27   30   21   50   19   18   43   26
      Gene390  142   70   59   84   59  102  127  101   48   84   82   78  107   80
      Gene391  251  216  248  221  293  207  523  172  253  253  204  247  358  307
      Gene392   45   60   46   28   42   40   98   19   43   59   30   67   45   47
      Gene393    .    .    .    .    .    .    .    .    1    .    .    .    .    .
      Gene394   35   11   26   21   23    6   35   22   17    6   13   22   37   11
      Gene395   31   24   23   10    9   16   30    6   16   32   15   27   24   28
      Gene396   36   58   14   19   15   22   40   28   30   65   16   79   30   38
      Gene397    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene398  132  109  121   71   53   59  156   47   38  120   81   95   51   85
      Gene399  405  307  238  216  185  260  294  273  167  404  123  368  260  286
      Gene400   25   33   39   28   20   17   86   30   22   37   17   35   23   33
      Gene401  497  411  252  203  216  261  401  211  199  515  237  317  332  353
      Gene402    9    9   13    6    6   22   20    5   10   18   18    6   22   10
      Gene403    .    3    1    .    1    .    7    1    .    .    .    1    .    .
      Gene404    6    3    .    .    3    3    4    4    1    1    .    8    .    1
      Gene405   25   21   26   30   28   35   28   20   32   29   22   11   28   38
      Gene406   39   34   12   27   26   65   36   16   22   50   20   43   59   71
      Gene407   26   20   40   41   30   42   58   12   27   32   16   17   39   59
      Gene408   48   73   92   66   39   86  103   30   53   63   62   48   69   50
      Gene409    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene410   22   42   29   28   16   24   46   18   21   29   21   23   22   27
      Gene411   23   36   31  105   42   24  166   20   24   35   46    5   43   37
      Gene412    6    1    1    2    1    .    4    .    .    .    3    2    1    2
      Gene413   70   65   72   53   35   51   54   39   52   53   29   63   30   29
      Gene414   12    8   19    3    7    7    8   11    8    2    5   13   19   10
      Gene415    .    .    1    .    .    .    .    .    1    .    .    1    .    .
      Gene416  111   86   51   73   38   49  101   60   50  116   71  130   47   45
      Gene417    .    1    5    5    3    1    1    1    1    .    .    1    1    5
      Gene418    .    .    .    4    5    3    5    4    3    .    .    .    .    1
      Gene419   38   69   37   41   51   85   81   30   31   90   33   81   96   65
      Gene420   43   39   20   41   30   29   56   45   27   50   27   28   57   14
      Gene421  118  102   72  110   84  105  129  132   64  229   55  165  109  107
      Gene422    .    .    1    1    3    1    3    .    .    .    2    .    .    6
      Gene423   50  100   89   83   44   74  107   33   64   81   58   58   64   69
      Gene424  119  145  191  231  115   90  208   72   75  179  115  154  205  114
      Gene425  445  330  174  221  107  210  422  182  193  423  179  442  243  249
      Gene426   84   71   44   32   69   73   56   31   68   80   45   47   91   90
      Gene427   58   42   42   67   28   49   81   28   50   59   38   42   62   45
      Gene428  249  320  341  374   98  133  422  207  102  365  253  210  157  146
      Gene429  315  272  188  188  116  200  285  153  178  310  147  206  206  232
      Gene430    1    3    1    1    .    2    8    1    .    4    .    1    .    1
      Gene431   36   23    9   24   11   27   25    3   12   25   16   19   21   13
      Gene432   12    8   28   22   23   43   43    5   23   18   27   15   78   47
      Gene433   85   81  123   92  111  107  101   55  102   83   48   92  199  123
      Gene434   10    1    9    4    8   17   13    4   14   27   29    2   19   19
      Gene435   12    1   14   24   22   25   13    4    9    2    1    5   24   41
      Gene436   64  106   80   72   64   77   84   51   58  128   71  106   95   89
      Gene437  355  282  587  464  219  195  877  157  169  251  510  394  213  375
      Gene438    .    .    .    2    2    .    .    .    .    .    2    .    .    .
      Gene439   20   13   20   11   13   24   27   14   28    8    5    6    9   20
      Gene440    .    .    2    .    .    .    6    .    .    .    .    .    2    .
      Gene441  325  323  403  316  247  340  490  270  305  382  301  327  428  427
      Gene442    .    2    .    4    3    6    8    2    1    2    .    2    3    2
      Gene443  216  199  142   94  185  146  321  170  164  214  146  233  235  190
      Gene444   15   28   19   22   13   14   70   21   18   20   17   14   32   46
      Gene445  270  351  298  294  330  478  466  244  258  342  420  287  605  520
      Gene446   19    4   23    6   11   14   26    9   19   12    3    6   13    3
      Gene447   66   60   23   23   12   26   36   27    9   59   27   44   63   57
      Gene448   29   32   39   22   25   28   47   28   53   35   40   22   62   46
      Gene449    1    3    4    9    7    8   10    2   12    8   10    9    3   11
      Gene450   55   41   71   54   51   60   83   30   34   86   56   53  103   75
      Gene451    .    .    .    2    .    5    3    .    .    .    .    .    .    .
      Gene452   68   61  153  124   60   72  148   31   58   65  113   71   94  129
      Gene453   55   57   22   35   26   42   29   30   33   51   23   32   49   71
      Gene454    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene455   31   26   23   14    4   11   20   10   17   33    5   15   36   38
      Gene456   15   18   12   14   14    5   30    9   17    9    6   19   31   33
      Gene457   10    8    .    5    1   11   13    6    .   12    2    7   13    9
      Gene458    .    .    .    .    1    2    1    1    .    .    .    .    .    .
      Gene459   39   41   34   35   45   31   28   22   43   57   21   70   38   31
      Gene460   25    8   60   32    5   20   66   26   21   31   27   14   39   22
      Gene461  114   73  200  104   89  143  186   85  110  138   87  153  103  142
      Gene462   87   74  128  137   33   61  186   44   53   61  106   72   54   59
      Gene463  102   88   88   86   23   27   88   63   23  102   44   99   39   53
      Gene464   27   27   28   21   39   20   60   12   25   50   31   47   44   28
      Gene465   24   22   46   16   16   17   31   17   12   23   16   30   15   43
      Gene466   31   24   13   19    9   15   16   10   16   22    9   23   34   14
      Gene467  214  259  197  156  205  155  266  101  146  240  155  201  259  245
      Gene468   47   44   66   69   52   50  100   38   47   46   40   50   39   48
      Gene469   60   67   73   79   55   75  181   32   53   60   75   75   53   61
      Gene470  439  395  530  683  344  546  822  298  240  448  596  197  404  485
      Gene471   45   49   71   20   18   64   65   28   37   51   28   29   44   43
      Gene472    1    9    7    .    .    3    2    .    1    .    3    3    1    5
      Gene473   81   94   90  101   34   38   57   36   48  100   45   97   65   53
      Gene474    6    8    2    6    3    9   11    3   11   24    7    5   24   12
      Gene475   41   33   39   33    4   23   91   10   11   35   30   18   21   34
      Gene476    9   11    1   16    6    6   11   11    8    7    8   11    1    9
      Gene477  433  509  292  280  345  417  295  293  364  426  197  509  634  447
      Gene478  120   61   72   95   57   78   86   55   69  116   32   84  188   98
      Gene479    5    4   12   15    4    6   10   11    3    4    8    3    9    8
      Gene480   84   52   44   50   14    9   77   48   17   59   32   47   21   41
      Gene481   44   51  114   97   32   32  190   34   38   65   66   59   45   21
      Gene482   10    8    9    3    4   16   10    3    3   18    8    9    5    5
      Gene483  183  233   77   73   83  121  206  124  150  246  107  114  241  134
      Gene484   55   28   39   21   26   61   56   30   39   45   29   57   39   37
      Gene485    9    6   27   11   23   25   40    7   24   11   21   19   30   37
      Gene486    .    .    .    2    .    2    .    .    .    .    .    .    .    .
      Gene487   32   22    8   23   16   25   40   21   12   17   12   21   14   26
      Gene488    .    .    .    .    .    2    .    .    .    .    .    2    .    1
      Gene489    8    9    1    1    2    6    4    .    .    3   10    1    5    5
      Gene490   97   96   94   71   33   71  113   63   61   69   73  102  125  118
      Gene491   36   94   56   73   39   39   91   55   48   50   71   54   82   43
      Gene492 2036 1708 1594 1425 1817 1971 1879 1590 1681 2210 1248 1907 2273 2997
      Gene493  151  113  162  165  134  128  312  149  123  178  120  180  213  252
      Gene494    .    .    .    .    .    .    1    .    .    .    .    .    .    .
      Gene495   83   58   62   51   23   32   75   46   41   93   83   41   58   40
      Gene496  128   95  158   98   88   69  184   47   84  150   80  134  119  198
      Gene497   17   17   15   19   24   13   25   22   17   23   16   10   33   25
      Gene498    .    .    .    .    .    .    .    .    .    .    .    .    .    1
      Gene499  404  352  881  802  302  405 1419  234  301  476  941  283  463  442
      Gene500   10   12    7    4    2    4   14   18    .    4   10   12   10    .
                                                                                   
      Gene1     53   61   43   44   57   46   66   47   35   45   17   55   31   40
      Gene2     73  120   79  104   63   74  162   94   73   73   66  146  138   73
      Gene3     63   53   52   65   55   38   73   71   73   42   60   99   44   86
      Gene4      4   18    5   10    6    2    4    .   19    3   12    8   14    3
      Gene5    774 1072  894 1053 1984 1419 1601 1310 1817 1255 1396 1439 1308 1728
      Gene6     75   83   33   78   28   27   66   96   41   66   64   49   90   64
      Gene7     40   79   34   67   60   46   89   65   60   49   42   70   82   53
      Gene8      .    .    .    .    .    .    .    .    .    1    .    .    .    .
      Gene9     49   52    9   68   42   41   31   54   39   64   41   20   18   51
      Gene10     8   15    9   24   18   14   13    7   12   24   27   35   17   19
      Gene11     .    3    .    1    .    .    .    7    .    6    .    .    8    2
      Gene12   210  324   57  385  196   74   94  257  136  290  112  117  119  163
      Gene13    10    8    6   20    7    4    .    4   10    8    3   10   17   14
      Gene14  1207 1471  805 1734  749  582 2193 1805  430 1033  614 1798 1367  741
      Gene15     6    9    2    5   12    5    3    7    8    5    5    5    2    8
      Gene16     3   16    8    7    2    9   16    7    8   11    3   14    4   11
      Gene17     5   22   26   19   19   20   49   14   22   10   10   29   60   38
      Gene18    16   28    4   19   13   22    6   37   30   18   21   16   12   12
      Gene19    25   37   16   29   38   18   27   23   17   11   31   29   20   26
      Gene20    29   21   17   35   12   26   45   19   30   31   29   38   42   31
      Gene21     1    2    .    2    1    4    7   11   10    1    3    1    5    3
      Gene22  1307 2053 1005 1938 1152 1070 1933 2259 1036 1451 1329 1594 1362 1083
      Gene23    17    5    3    7   16    8    6    1    9    6    3   21    6   10
      Gene24     .    .    .    .    .    .    .    .    .    .    .    .    .    3
      Gene25     .    4    3    2    1    2    3    1    2    .    .    1    .    5
      Gene26    32   31   15   30   59   17   62   44   30   20   40   34   46   32
      Gene27   138  192  174  180  126   59  303  154  133  162   75  344  253  119
      Gene28  1281 1888  519 2153 1223 1271  724 1947 1431 1661 1109  611  645 1667
      Gene29    46   56   42   70   93   53   72   85   59   68   53   64   51   77
      Gene30     2   11   15   24    6    2   10   15    6    4    4   15    3   14
      Gene31    59  165   39  170  147  122  159  122  144  103  129  113  173  153
      Gene32    60   32   14   49   29   21   93   21   56   36   39   42   70   33
      Gene33     .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene34    58   73   71   74   62   37   69   86   74   48   45   82   77   50
      Gene35    34   40   14   50   34   14   22   23   28   43   34   15   23   37
      Gene36    57  139   63  100   88   88  147  162  138  107  106  134  108  108
      Gene37    24   36   11   43   13   18   22   29   18   43   25   19    6   20
      Gene38     3    7    7   10    3    4    8    4    9    5    7    7   21    9
      Gene39    14   45   17   29   25   15   34   40   25   28   23   39   27   16
      Gene40   349  410  200  514  479  466  391  435  607  469  332  401  238  682
      Gene41     3    2    2    1    1    7    .    4    1   15    6    7   12    .
      Gene42    22   16   15   24   20   11   17   22   28   26   20   44   33   17
      Gene43    73  139   47   89   38   26   47  106   47   78   34   64   37   29
      Gene44   191  282  196  359  234  173  344  228  180  243  205  283  238  240
      Gene45    81   98   49   90   70   42   83  102  114   98   98   85   98   41
      Gene46    60  151   90  143   46   32  172  108   65  146   32  126   96   58
      Gene47   110  181   36  183   57   48   74  133   42  115   60   72   57   50
      Gene48   164  242  122  190  140  111  215  141  228  201  125  212  179  183
      Gene49     7    1    .    .    .    .    .    .    .    2    .    2    2    .
      Gene50    16   12   12   19   18   12   12    8   11    9   14   26    5   14
      Gene51   944 1724  752 1301 1119  872 1474 1401 1249 1024  922 1380 1257  816
      Gene52    14   53   30   57   15   12   63   46   20   37   20   36   33   18
      Gene53   805 1382  553 1190  844  876  851  968 1013  994  978 1153  966 1322
      Gene54    14   26    6   29   11   21   71   27   25   21   26   33   20   16
      Gene55    40  104   44   77   68   42   88   91   74   76   58   76   75   61
      Gene56     3    1    2    .    4    3    1    5    .    .    4    1    .    .
      Gene57    23   24   20   27   33   18   16   24   14   39   18   56   19   22
      Gene58    13   34    6   34    9   20   25   29   29   37   18   45   33   29
      Gene59    54   82   76   66   44   52   84   87   33   57   30   93   92   73
      Gene60     1    9    2    3    7    3    7    6   11    3    .    1   19    6
      Gene61    48   78   61   70  134   66   80   68   93   62  104   69   65  117
      Gene62    28   33   19   29   25   14   21   17   28   29   25   35   24   29
      Gene63    44   45   12   32   32   16   36   25   20   20   13   23   27   40
      Gene64   179  247   86  293  138   99  213  294  205  198  127  238  152  170
      Gene65     1    3    3   11    2    4    4    5    1    2    7    2    4    1
      Gene66     7   14    8   11    8    9   11    8   10    5    9   17   18   12
      Gene67    11   15    9   11   30   18   26   12   11   10   22   32   30   20
      Gene68    16   34   17   40   23   27   29   26   27   29   15   25   28   22
      Gene69     3   22    9    2   20    7   10    7   23    3   14    8    1   15
      Gene70    11   30   14   19   14    8   27   12    5   25   13   33   27   35
      Gene71    10    9    2   13   12    1    4   31   18   10    5    7   10    9
      Gene72   100  144   51   87  114   88  152  183  110   96  118  121  127  134
      Gene73    76  171  159  114   86   40  196   88   63   78   66  127  171   72
      Gene74    10    9   10    9    3    6    4   10    5    3    3    5   12   14
      Gene75    74  110   68   84   73   67  125  115   77   54   67  114   93   76
      Gene76    18   10   18    8   12   11   47   19   10    9   14   36   31   22
      Gene77   316  517  278  380  390  268  454  465  314  364  216  615  377  430
      Gene78    20   48   18   23   53   18   25   42   38   44   34   25   48   33
      Gene79     4   13    5   10    2    2    8    8    7   16    5   10    8    7
      Gene80   145  205  117  153  172   80  282  142  135  169  104  295  169  116
      Gene81    18   37   16   19    3    7   29   54   20   40   12   32   32    8
      Gene82    45   86   41   74   48   44   89   77   65   60   41   89   70   57
      Gene83    95  105   68  102   72   38  102   96   89   75   90   74   48   71
      Gene84   207  450  197  409  334  208  453  245  330  298  237  392  296  323
      Gene85   106  168  153  229  101   92  238  135  113  116  104  196  149  137
      Gene86   124  209   63  242  149   96  229  201  152  147   89  184  123  130
      Gene87    34   30   11   42    4    6   12   33    6   36    9    5    4    2
      Gene88    11   20   10   11    7    6   29   22    5    4    5   23   23   21
      Gene89     1   13    3    6    6    .    5    4   10    4    2   12   10   10
      Gene90     9   11   11   15   10   18   18    7   11   18   12   30   16   17
      Gene91    70  111   64   98  117   72  177   88  121   95   57  150   93  140
      Gene92    13   21    1   27   13   14   24   15    8   10   20   19   17   15
      Gene93     .    .    .    1    .    .    .    .    .    .    .    .    .    .
      Gene94    61   63   56   58   64   74  150   60   61  130   69   93   71   65
      Gene95   120  206  123  138  203  119  145  162  168  183  199  167  174  163
      Gene96     1   12    1    8    7    6   13    8    5   11   11    3    8    2
      Gene97    77  110   39   95   83   54   97  100  106  118   88   91  122  119
      Gene98     .    .    .    .    .    .    .    1    1    1    .    .    6    1
      Gene99   100  104  100   94  123  128  117  144   93   74  101  124  161  130
      Gene100 4217 6255 1409 4151 2168 1874 2202 4633 2394 3570 1960 2949 2683 2508
      Gene101  191  203  158  224  198  188  216  254  179  241  126  221  182  251
      Gene102  119  235  204  169  152  176  314  168  237  137  177  272  227  136
      Gene103    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene104    1    2    2    .    4    7    1    .    4    1    .    2    4    2
      Gene105   41   45   31   32   96   42   68   57   88   37   47   68   73   65
      Gene106    2    3    3    1   13    6    8    4   22    3    6    6   10   12
      Gene107  104  147  103  134  188   95  229  193  165  124  146  207  232  131
      Gene108   27   48   53   42   61   58   59   61   47   47   49   42   48   73
      Gene109    .    3    1    2    5    .    1    6    3    4    2    1    .    3
      Gene110 2568 2786 1893 3611 2513 1937 3464 2599 2252 2101 2270 3437 2968 2349
      Gene111    2    6    5    .    1    1    .    9    1    9    2    .    1    1
      Gene112    .    .    .    .    .    .    .    .    .    .    1    .    .    .
      Gene113   18   34   12   27   23   19   26   33   31   28   16   29   31   13
      Gene114   27   23   16   30   22   10   26   23   14   18   14   19   22   20
      Gene115   54   71   29   79   33   44   40   32   59   67   40   38   39   52
      Gene116    3    8    3    6   17    5    9   11    .    .    8    2   22    8
      Gene117   78   78   15   98   59   80   36   75   57  106   53   22   30   62
      Gene118   42   28   22   36   34   34   78   48   43   61   38   52   62   27
      Gene119  252  365  189  454  241  120  352  391  218  338  161  310  312  225
      Gene120   36   15   11   33   10   34   21   25   57   24   30   15    9   23
      Gene121   35   35   38   19   16   25   55   21   24   44   20   30   69   49
      Gene122   60   62   48   72   73   64   86  102   73   64   63   81  113   79
      Gene123   18   22    8   10    4    4   41   17   15   17   27   26   32   16
      Gene124   52   43   20   35   43   12   64   44   88   49   22   44   69   39
      Gene125   49   97   20   82   80   40   99   74   65   51   84   55   56  112
      Gene126   12    5    5    9    7    9   18   13    7    3   26    5   11   14
      Gene127   35   77   38   44   68   85   82   44   82   71   60   31   59  107
      Gene128    7    .    4   12    .   14   14    3    2   20   16    8    6   15
      Gene129    5    2    1    5    1    .    4   10    2   12    4    2    8    6
      Gene130   13   14    8   13    1    3   19   25    .    7    2   18   15    5
      Gene131    1    .    2    3    1    .    .    1    1    4    .   11    1    5
      Gene132   95   80   44   98   88   37   79   93   51   85   47   95   85   80
      Gene133  124  254   99  242  171  119  277  185  174  172  162  156  182  139
      Gene134   91  148   65  115  164  131  128  125  150  140  106  165   51  123
      Gene135   37   23   21   61   32   21   39   59   33   43   19   45   25   41
      Gene136    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene137    .    1    .    .    .    .    .    1    .    1    .    .    3    .
      Gene138    4    2    4    2   10    4   13   10   10    1    4    8    7    4
      Gene139  116  137   77  186  103   79  171  174  179   81   73  181   98  148
      Gene140    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene141   21   20   14   25   32   35   45   25   24   21   29   42   41   26
      Gene142  255  256  158  266  237  200  391  281  237  231  165  230  372  358
      Gene143    7   11   21   11   15    3   30   20   23    3   12   21   18    9
      Gene144  697 1182  736 1327  603  557 1404 1516  603 1160  497  951 1230  655
      Gene145    5    2    3    3    4    2   13    7    6    4   12   15    3   11
      Gene146   30   61   17   49   25   38   58   44   31   58   23   24   47   34
      Gene147   44   37   32   33   54   27   64   25   32   40   33   44   52   47
      Gene148    5   27   14   27   10    7   14   16   14   20    5   13   16   18
      Gene149 1744 2460 1003 2115 1797 1779 1863 2110 1910 1935 1641 1898 1090 2204
      Gene150   31   31   27   32   58   28   60   73   48   53   45   59   30   52
      Gene151   32   29   15   41   12   22   22   27   27   23   11   19   36   24
      Gene152    8   10    2    7    5    1    9   10    1    2    3    3    3    6
      Gene153   88  106   57   99   38   32  104   95   56   96   65  109  105   65
      Gene154   35   38   38   39   45   40   49   35   57   33   42   34   24   40
      Gene155    2    8   11   17    3    9   11   19    3   13    9    7    1    5
      Gene156    1    .    .    .    3   14    1    3    .    .    .    .    .    4
      Gene157   13   39   10   21   33   23   33   23   33   14   14   18   34   14
      Gene158   31   50   16   79   24   18   42   27   35   24   17   26   37   54
      Gene159    .    .    .    1    .    .    2    1    .    .    1    .    1    .
      Gene160   16   28   23   32   34   26   21   42   36   34   21   17   21   38
      Gene161   65  100   37   84  107   37   67   67   87   63   57   49   47  112
      Gene162    2    4    2    2    .    .    .    .    6    .    .    1    1    4
      Gene163   86  115   68   52   88   61   83   75  105   86   61   95   34   60
      Gene164    8   42   14   20   37   19   25   12   18   21   17   27   19   33
      Gene165   41   48   44   48   52   51   93   39   86   45   42   46   48   44
      Gene166    4    5    1    3    1    4    1    2    .   12    5    6    5    2
      Gene167    6    4    6    .    2    5    2    1    3   10    3    5    .    4
      Gene168    3    3    1    1    3    .    7    5    1    2    1    6    1    4
      Gene169    6   10   14   27    7    6    5   15   25   17   13    4    5   19
      Gene170   40   44   23   40   45   15   64   32   48   35   19   37   40   71
      Gene171   35  117   17   80   56   48   51   50   31   67   39   44   44   24
      Gene172 1173 1783 1198 1736 1173 1162 2065 1861 1687 1560 1358 1603 1780 1262
      Gene173  234  283  148  305  178  169  253  242  181  238  214  205  227  170
      Gene174  171  303  174  266  135  120  288  193  213  163  110  306  252  222
      Gene175   15   35   11    4   42   46   40   37   24   29   25   34   30   44
      Gene176   56  102   48  103   50   55   82   74   75  120   99  101   62   89
      Gene177    8   13    8    9   20   25   26    9   12   11   11   32   12    5
      Gene178 1076 1400  750 1409 1258 1217 2160 1481 1382 1299 1160 1621 2064 1433
      Gene179  197  309  138  326   90  104  215  332   99  348  124  312  297  123
      Gene180   24   42   24   31   20   25   21   36   29   16   22   30   31   38
      Gene181   39   33    9   41   35   16   29   58   44   30   52   32   23   40
      Gene182    5   11    4    6   18    9    8    4   10    7   33   12    3   21
      Gene183   63   97   18   88   37   33   91   85   32   87   20   88   66   41
      Gene184    .    2    .    1    .    1    1    .    .    1    .    .    1    .
      Gene185  198  257  105  259  116  110  186  244  157  205  116  220  231  121
      Gene186   99   86   60  100   63   81  110  123   99  102   98  104   95  137
      Gene187  234  373  249  359  351  230  327  379  477  196  324  358  348  353
      Gene188    8    3    4    7    4    3    5    9    1    5    4    7    8    6
      Gene189    9    5    4    9    9    .    8    4   10    5    5   15    2    5
      Gene190  453  497  462  329  675  598  888  597  812  445  808  799  652  700
      Gene191   19   50   53   32   58   34   66   30   70   30   52   61  104   70
      Gene192    4    8    3    7    6    2   10    5    5    6   10    4    3    7
      Gene193   92  189  104  183  111  108  167  153  129  158   87  166  213  234
      Gene194   28   28    7   41    5   13   81   30   23   47   13   26   36   26
      Gene195    .    2    .    6    1    .    .    .    .    .    .    1    .    .
      Gene196   32   53   16   41   11   23   18   64   36   25   25   19   25   32
      Gene197   29   27    8   26   21   17   31   24   50   39   31   12   30   33
      Gene198    5   26   15   31   11   23   45   15    1   18   14   37   46   20
      Gene199   14   20    3   18   12    7   17   27   13   15    4   12   13    7
      Gene200  123   80   57   78  330  213   78   41  329   81  206  122   98  322
      Gene201    5    6    4    2    8    2    .    .    5    4    1    3    4    2
      Gene202    2    3    3    2    5   11    4    5    8    6    6    7    6   11
      Gene203   25   99   50   75   68   27   72   55   67   83   45   80  104   76
      Gene204   31   74   14   77   26   43   80   68   37   62   47   21   45   38
      Gene205    .    .    .    .    .    .    .    .    .    .    .    .    1    .
      Gene206    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene207    5   28    1    6    9    3   10    8    7   13    5   17   14   14
      Gene208   12   12   12   12   29   17   16   19   44   27   48   13   16   14
      Gene209    .    3    .    1    .    .    .    1    .    .    .    .    .    1
      Gene210   15   16   10   17   31    9   17   33   20   20   14   21   20   21
      Gene211  129  195   90  150  161   70  160  168   74  145   84  110  199  113
      Gene212   15   13    6   14   16   15   41   22   14   19   20   30   22   16
      Gene213   56   93   84   81  166  137  196   77  154   84  148  143  117  231
      Gene214    9   26   24   35   38   20   19   28   23   10   20   32   24   11
      Gene215   16   33    7   25   10    4   16   12    9   19    7    9   17    9
      Gene216    4    .    .    2    4    1    8    3    .    4    1    2    .    .
      Gene217   32   30   24   49   58   20   39   36   20   59   38   51   51   22
      Gene218   87   86   42  102  118   80  117   57   73   62   56  201   86  116
      Gene219    8   35   13   41   71   69   29   32   85   18   87   38   11  153
      Gene220   12   40   31   17   13   11   33   32   15   45   23   26   46   22
      Gene221   31   31   40    8   16   40   38   34   49   33   24   54   41   37
      Gene222  405  641  268  798  424  377  373  599  449  550  291  574  536  583
      Gene223   11   11    1   12    .    4    6    8    4    2    2   13    7    9
      Gene224    1    1    2    2    3    1   13    3    7    .    9    3    7    3
      Gene225    4   11   14   34   12   18   27   37   17   16   10   24   18   13
      Gene226    6   10    3   14    1    2    2    7    9   11    3    6    3    5
      Gene227    .    .    .    3    2    .    1    4    .    3    1    2    2    2
      Gene228    1    1    .    .    .    1    .    1    2    .    .    .    1    .
      Gene229   33   26   12   44   13   28   33   25   35   15   31   21   42   29
      Gene230 1259 1823 1377 1926 1226 1100 2531 1601 1378 1859 1082 2326 1872 1247
      Gene231   18   27   15   36   25   41   20   22   35   15   11   31   21   33
      Gene232   22   37   31   21   26   29   18   24   19   32   53   46   72   52
      Gene233   45   59   26   90   41   31   45   40   53   59   30   58   25   41
      Gene234   45   79   25   86   50   30   20   50   29   60   30   27   61   62
      Gene235   42   27   39   75   22   15   35   27   31   32   26   37   39    9
      Gene236   51   65   44   71   43   49   56   44   43  107   60   92   85   47
      Gene237    8    9   10   14    4    4    9    4   11    1    3   10    9    4
      Gene238   32   50   15   61   45   34   45   38   60   52   15   33   43   40
      Gene239    5   11   10    8   26    6   39   17   14   13   11   11   18   15
      Gene240   55   71    9   37   18   18   26   45   15   30   15   25   37   19
      Gene241   71  100   47   69  130   74  105   83  129   84  100   98   56   91
      Gene242  474  407  341  413  547  326  763  469  535  338  367  414  570  361
      Gene243  172  207   63  221  113   80   76  218  119  188   64  131  156  127
      Gene244   12   38   21   27   36   10   23   29   42   30   26   23   33   24
      Gene245   27   49   37   49   21   16   62   38   46   51   32   60   36   46
      Gene246   48   59   45   97   68   54   79   71   75   40   86   80   78   67
      Gene247    6    9    2    3    8    2    4    5    4    2    4    5    6    5
      Gene248  111  139   66  118  144  188  142  113  201  169  202   98  103  193
      Gene249 1962 2869 1524 2424 2346 1764 2625 2982 2489 2189 1584 2735 3049 2390
      Gene250   13   16    9   17   17   14   28   10   13   21   24   19    3    4
      Gene251   13    3    3    1    5    .    1    1    2    1    3    2    1    1
      Gene252   13   34   21   27    8   18   33   13   19   18   13   21   16   24
      Gene253   48   85   20   28   55   28   32   31   39  109   52   45   33   52
      Gene254    4   15    9   13    4    5    4    7    4    7    7    9    1    2
      Gene255   18   21    2   34   22    7   44   40   28   13    7   45   21    9
      Gene256   15   24   26   37   15   10   34   27   12   22   15   22   27    8
      Gene257    2    .    .    1    .    .    1    1    2    2    .    .    1    3
      Gene258   12   37   13   17   22   15    8   31   21   21   16   30    6   11
      Gene259    .    1    .    .    .    .    .    .    2    .    .    1    .    .
      Gene260  126  179   84  144  118   78  194  149   95  124   61  148  153   80
      Gene261   13   17    5   13   11   10    9   36   13   31   13   14   12    9
      Gene262  101  174   98  140   83   87  130  137   76   96   78  168  143  136
      Gene263   35   43   23   39   38   27   40   25   44   57   17   49   40   59
      Gene264   68   94   31   80   18   10   63   86   38   45   14   64   38   29
      Gene265    9    7    6   27   16    6   10    7    9    7   16    8   16   18
      Gene266  118  116   62  121  108   74  142   93  105   86   83  163  106  128
      Gene267   50   60   14   59   42   22   88   67   41   47   35   70   56   46
      Gene268 2138 2800 1051 2357 1947 1478 2373 2307 2057 2261 1373 1980 1646 2704
      Gene269   46   58   25   73   51   40   50   90   69   66   56   19   30   92
      Gene270   78   90   24  117   41   21   64   95   55   79   69   48   66   60
      Gene271   36   31   17   41   67   30   26   57   30   26   25   31   28   50
      Gene272    8    3    1    7    8    2    7    4    2   10   10    6    5    6
      Gene273   32   38   19   35   18   18   38   39   46   21   26   39   38   34
      Gene274   60   96  103   83   72   42  244   82   69   98  101  169  140   71
      Gene275   15   32   46   34   72   88   45   16   80   45   98   34   29   94
      Gene276    8   17   22   17   33   22   23   33   56   15   15    5   18   24
      Gene277   50   66   14   48   73   45   50   40   56   31   60   53   54   54
      Gene278   70  212   74  122  115   81  137  133  112  117   87  148   80  110
      Gene279    3   11    6    9    2    8   17    7   12    5   12    8    4    4
      Gene280   33   81   36   55   52   41   69   57   71   47   39   65   44   55
      Gene281    2    7    .    8   11    1    8    2    9    3    3   15   12    5
      Gene282    5   15    2   11    5    5   12   13   11   23    8   14   22   11
      Gene283  554  792  276  802  435  316  545  731  547  736  342  517  455  540
      Gene284   44   41   45   66   66   52   87   50   58   69   84   89   47   88
      Gene285    4   27   17   43   37   43   18   35    6   31   13   14   28   27
      Gene286   42   46   15   52   23   14   28   47   27   26   19   29   20   25
      Gene287   18   25    3   30    7   14   17   11   11   27   14    6   16   21
      Gene288   37   59   39   42   25   66   92   49   47   18   50   43   87   37
      Gene289   23   23   15   23   18    7   12   12   30    9   10   16   10   23
      Gene290 1702 2589 1326 2497 1900 1437 2782 2580 1680 2139 1939 2517 2083 1967
      Gene291    9   20    6   13   15    8    6   12    7    7    3   14    1   10
      Gene292   62   94   45   56   64   43   58   52   49   47   50   70   73   69
      Gene293   22   40   14   43   33   18   29   34   27   63   23   29   43   32
      Gene294    3    5    9   17    7    4   12    4   13   15    9    9    9    5
      Gene295    .    7    3    7    2    3    7    3    2    4    .    4    6    5
      Gene296   60   84   92  121  123  125  216   83  162   71  112  238  189  148
      Gene297  117  170  102  185  142  106  232  166  228  139  101  208  133  170
      Gene298  215  326  296  324  244  186  388  350  283  344  185  344  261  220
      Gene299    1    2    1    5    3    .    6    2    5    6    .    .    2    2
      Gene300    4    5    1    5    1    4    7    1    4    2    .    5    1    2
      Gene301    9   50   19   37   21   15   38   35   30   18   34   47   31   30
      Gene302   38   35    4   18   12    4   13   27   13   30   10   13   14   38
      Gene303 2247 3530 1774 2997 2149 1865 3868 2916 2067 2577 2179 2871 3097 2780
      Gene304  152  157  224  199  156  168  277  169  222  199   90  234  225  171
      Gene305   27   32    5   35   10   10   16   29   16   19   26   15   22   15
      Gene306  589 1186  430  827  713  507 1057  950  926  729  626  983  740  948
      Gene307    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene308    1    .    .    1    1    .    1    1    .    .    .    .    1    .
      Gene309  117  182   58  185   80   82  126  125  137  136   67  100   80  105
      Gene310    1    1    1    2    8    .    .    2    1    5    3    7    .    2
      Gene311    7    9    1    8    4    2    4   21    5    3    6    7   10    .
      Gene312  455  423  229  677  533  272  468  491  338  387  372  628  653  575
      Gene313   30   38   20   52  106   37   21   52   72   29   88   28   36   68
      Gene314   30   86   32   32   28   28   66   39   27   47   22   57   61   36
      Gene315    .    .    3    4    1    2    5    .    .    .    4    4    1    2
      Gene316  181  205  140  178  210  128  210  150  190  142  165  247  171  250
      Gene317  125  111   81  104  156   92  198  117  108   89  128  200  198   99
      Gene318   12   16    1   12    9    5    3    8   14   10    8    5    7   21
      Gene319   38   61   18   54   20   22   45   36   30   47   27   57   28   58
      Gene320   27   27    9   25   31   18   28   20   15   29   18   26   20   17
      Gene321    .    1    2    .    .    .    .    .    .    .    .    1    .    .
      Gene322   26   34    4   49   21   10   43   38    7   13   18   19   12   10
      Gene323   24   80   33   76   50   43   49   77   39   48   36   54   67   52
      Gene324   77   77   29   74  200  141  105   92  248   82  147  106  119  180
      Gene325   85  115   60  135   98   72  136   68   94   82   77   98  141  118
      Gene326   23   17    8   21   19    5   54   34   13   29    5   58   36   25
      Gene327   14   12    9   12   49   26   18   15   58   17   31   18   19   47
      Gene328   76  164   71  119   64   46  136  170   51   98   51  111  136  111
      Gene329   36   39   14   35   44   24   27   29   19   30   12   42   16   23
      Gene330    .    2    1    .    .    1    .    .    2    1    .    .    1    .
      Gene331   27   31   24   30   20   22   34   26   43   16   11   28   44   18
      Gene332  153  220  247  199  209  111  253  243  221  196  134  236  191  192
      Gene333    .    6    7    6    5    .   23    2    1    3   10    9   13    3
      Gene334   44   28   40   60   69   43   65   57   50   39   56   48   45   67
      Gene335    1    1    .    2    .    .    .    2    .    2    .    1    .    .
      Gene336   27   22   11   13   38   21   22    7   26   20   14   17   25   23
      Gene337    5   15    3    5   11    1   15    4    9    9    6    9   16    8
      Gene338   25   51   14   59   80   27   56   24   53   26   53   73   38   38
      Gene339  115  109   53  152  323  167  198  119  229  151  173  121  220  209
      Gene340    5   24   13   12   12   13   33   17   13   19   17    7   20    9
      Gene341  119  144   69  197  173   83  227  131  146  160  115  116  160  151
      Gene342  139  196   80  160  111  100  175  176  141  177  144  172  130  113
      Gene343   30   51   57   72  293  146  105   78  220   57  245   98   58  144
      Gene344    7   18    3   23   15   11   14   23   20   22   26   24   25   28
      Gene345   94  142   32  166   63   65   68  119  104  102   66   63   35   81
      Gene346   98  102   32   95   47   54   52   82   61   43   71   62   78  105
      Gene347    9   34   11   32   26   16   27   37   15   16   17   22   19   26
      Gene348  101  127   63  146  275  132  285  106  367   60  179  182  217  316
      Gene349   42  111   87  101  119   49  137  102  120   91   53   95  115   97
      Gene350   81   99   83  113   70   78  135  130   93   84   51   83  108  108
      Gene351    6    4    1    1    .    5    4    1    1    .    .    2    .    1
      Gene352    9    5    4   10    2    3    4   13    6    5    3    8    9    5
      Gene353   49  135  103   85   94   97  151  102   93   91   83  170  134  112
      Gene354   57   65   34   45   54   40   74   51   30   51   40   74   59   30
      Gene355   31   26    8   10   14   12   27   23   14   19   11   20   19   14
      Gene356    3    7   20   12   15   12   23   10   18   10   22   22   28   37
      Gene357  947 1226  889 1588  970  909 1608 1252 1279 1369 1140 1471 1315 1025
      Gene358    3    8    4    2    7    3   12    6    5    6    5   13    7    6
      Gene359  144  206   65  187   96   58   94  189  121  204   92  107  122  124
      Gene360   46   90   15   43   14   19   30   56   11   19    6   24   31   20
      Gene361  670  925  651 1071 1291  878 1072  860 1103  818 1076 1026  848 1331
      Gene362  277  290   96  402  153   91  266  252  157  283  148  222  174  138
      Gene363   49  113   42   80   79   47   76  110   94   64   78   91   69   77
      Gene364    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene365   20   25   13   30   29   23   28   29   26   23   27   25   39   21
      Gene366   13   22   10   14   37   10   26   24   18   14   15   22   28   41
      Gene367    3    3   13    4    3    3   11   11   10    4    6   10   17    3
      Gene368    .    3    6    .    1    .    1    3    .    1    .    1    .    .
      Gene369   20   29   11   30   14   11   27    9   15   19   17   23   19   23
      Gene370   10    5    8    9    2    2    9    5    7    3    4    7    2    4
      Gene371  132  174  164  141  171  116  224  159  159  121  133  188  207  182
      Gene372   38   43   11   70   40   64   25   29   58   45   59   73   39   44
      Gene373    9    7    6   12   12    6   15   16    8   12    5   16    4    2
      Gene374   18   31   20   51   30   25   50   38   11   19   11   48   29   32
      Gene375   17   11    9   11   10   10    9    6   15   10   15    9   17   12
      Gene376    1   12    4    3    5    3    3    4    3    5    3    4    6    3
      Gene377   20   46   26   23   38   20   46   43   29   34   38   51   11   38
      Gene378   22   21   15    8   12    8   16   20   13    9    8   17   19   10
      Gene379   13   53    9   42   28   22   18   29   11   63   20   22   16   15
      Gene380    7    9   32   37   22   15   32   18   23   26   19   38   45   29
      Gene381   55   75   27   78   59   25   68   63   44   74   46   49   90   63
      Gene382   42   65   23   62   48   37   47   48   80   87   69   53   44   72
      Gene383    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene384  106  145  121  117  165  123  219  128  149  137  151  226  182  193
      Gene385  101  149   28  120  109   48  106  148  130  129   82   87   59   92
      Gene386    .   13    3    5    .    6   20    7   12    5    .   11    7   11
      Gene387   45  119   42   86   77   32   84   76   70   53   35   36   60   70
      Gene388    5    9    2    1    5   10    3    7    2    2    2    3    .    7
      Gene389   23   34    8   26   19    7   77   27   14   16   10   38   14   13
      Gene390   61  102   60   98   50   74  126   58   72   78   84   80  124  116
      Gene391  153  301  200  315  266  162  327  247  270  273  329  403  326  292
      Gene392   45   40   33   47   52   41   76   59   37   53   32   57   72   26
      Gene393    .    .    .    1    .    .    .    .    .    .    .    .    .    .
      Gene394   12   34   19   21   33   15    5    6   17   24   27   12   34   20
      Gene395    7   30    6   28   16    2   24   18   22   24    7    9   18    3
      Gene396   17   32   38   12   23   16   99   32   23   22   15   66   64   22
      Gene397    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene398   43   62   66   74   87   91  131   56   80   48   70  108   93  128
      Gene399  256  287  216  344  257  230  333  238  247  237  247  314  417  215
      Gene400   18   31   19   39   30   32   60   22   45   32   35   25   27   38
      Gene401  192  355  385  375  280  184  659  241  266  319  226  486  369  288
      Gene402    9    5    5   11   16    5   21   12   11   15   12   11   16   20
      Gene403    .    .    .    .    1    .    2    .    .    .    .    1    3    1
      Gene404    5    .    1    2    .    1    9    3    3    5    5    2    4    .
      Gene405   45   30   19   46   29   30   50   43   28   25   24   33   17   30
      Gene406   32   48   50   45   22   22   73   28   22   46   32   53   48    9
      Gene407   40   58   11   47   48   32   34   65   36   40   19   33   22   34
      Gene408   38   65   51   47   88   78  110   28  123   39   70   86   86   83
      Gene409    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene410   25   27    7   47   38   26   27   16   38   22   56   50   21   44
      Gene411   37   40   11   28   91   49   31   31   66   41   68   33   23   73
      Gene412    .    5    .    .    .    .    .    .    1    .    .    2    1    7
      Gene413   27   35   48   50   83   41   97   24   57   39   51   70   96   83
      Gene414    5   15    5    6    6    8   12   10    9   13    7    7    3   19
      Gene415    2    1    .    .    1    .    2    .    1    .    2    2    7    .
      Gene416   28   46   76   32   84   35  129   52   55   43   51  120  106   95
      Gene417    .    3    .    4    .    1    1    2    5    2    2    3    3   18
      Gene418    1    .    2    3    2    9    2    4    2    1    3    2    .    2
      Gene419   44   47   44   73   38   46   83   41   42   70   55   49   83   61
      Gene420   30   48   21   33   31   20   37   41   21   30   23   40   34   35
      Gene421  101   73  123  116   83   34  188   84   64  117   50  218  134   94
      Gene422    .    1    .    3    1    2    .    2    2    4    .    1    1    .
      Gene423   34   73   23   75   42   80   55   79   46   87   39  102   50   61
      Gene424   83  143  120  129  153   89  166  135  200  121  141  181  119  178
      Gene425  191  270  277  311  239  133  623  204  187  242  141  586  427  230
      Gene426   45  111   44   83   23   29   73   68   51   70   31   99   70   44
      Gene427   51   36   39   58   49   19   70   63   54   44   48   73   62   46
      Gene428  106  151  193  202  310  270  444  134  357  186  289  327  315  361
      Gene429  181  235  179  334  202  115  345  168  186  200  134  322  357  231
      Gene430    1    1    .    .    4    .    2    1    .    .    2    3    .    3
      Gene431   23   21   17   20   18   11    7   10   13   18   14   11    9   25
      Gene432   22   40   14   43   35   19   16   40   40   38   23   17   14   33
      Gene433   96  126   61  132   90   61  124   92   92   93   54  115   71   99
      Gene434   10   15    9   10    5    .    6   11    3    7    2    3    5    2
      Gene435   34   21    7   27   20   19    1   23    6    8    8    6    5   18
      Gene436   64   81   74   73   79   58  122   94   85  114   47   92   82   96
      Gene437  289  319  149  385  563  407  383  358  590  267  406  499  246  495
      Gene438    .    2    .    .    .    .    .    .    .    .    1    .    1    1
      Gene439   15    8    5   14   11   13   18    8    9   21   10   27   22   19
      Gene440    .    .    .    .    .    2    3    1    .    .    .    .    .    .
      Gene441  283  432  299  485  345  262  534  304  335  408  189  477  238  320
      Gene442    .    1    .    1    .    1    .    4    1    7    1    .    .    .
      Gene443  157  205  103  254  185  121  272  142  153  153  171  212  229  174
      Gene444   23   28   20   45   42   18   30   16   18   36   34   12   14   32
      Gene445  291  451  208  535  274  316  345  472  346  355  229  265  288  441
      Gene446   11   10   10   13    5   21   18   13    9   11    4   26    8   10
      Gene447   21   36   41   20   55   13   56   18   25   33   53   43   40   16
      Gene448   43   75   25   34   53   31   36   45   31   36   16   52   40   25
      Gene449   12   10    4   10    7    5    6    7    3    7    2    8    6    8
      Gene450   76   84   45   73   68   67   69   63   52   44   77   77   59   78
      Gene451    .    .    .    1    .    4   14    2    .    1    .    1    .    2
      Gene452   72  147   46  100   86   93  105   99  149   84   82   73   56  110
      Gene453   32   41   13   59   17   17   64   47   18   51   28   68   46   15
      Gene454    .    3    .    .    .    .    .    .    1    .    .    .    1    .
      Gene455   22   19    2   34   10   14   16   17   25   20    8   14   20   16
      Gene456   13   19    4   22   15    4   12   19    2    4    5   18   11   13
      Gene457    3    7    4    4   11    5    7    3    9    1    4   11    5    2
      Gene458    .    .    .    2    .    1    .    1    .    .    .    .    .    .
      Gene459   28   47    6  106   21   33   55   38    9   66    8   35   46   13
      Gene460   17   31   16   27   44    8   15   49   38   27   40   26   16   36
      Gene461  112  120   77  155   97   70  165  134   91  127   91  161  117  106
      Gene462   76   91   50   71  122  105   41   61  115   49  109   85   79  124
      Gene463   41   33   52   40   73   35  106   49   58   28   39  108   76  104
      Gene464   20   39   18   19   30   35   56   50   30   19   23   51   35   25
      Gene465   14   18   12   32   14    6   29   15   13   29   14    9   16   22
      Gene466   13   28   19   13   19   18   25   15   20   32    9   20   16   17
      Gene467  188  217  109  250  221  129  240  169  131  223  141  201  208  219
      Gene468   42   52   59   73   45   33   93   34   36   32   38   49   81   27
      Gene469   48   77   31   67  153   61   78   60   84   53   72   60   33  110
      Gene470  261  364  223  492  551  499  361  303  519  265  535  415  332  660
      Gene471   25   39   20   36   44   37   51   45   35   63   20   39   23   39
      Gene472    3    3    1    1    4    3    1    3    2    6    1    2    .    2
      Gene473   50   67   31   35   61   47   94   49   40   50   57   61  106   33
      Gene474   17    9    7   10    7    3   12    1    7   14    2   10    8    3
      Gene475   18   40   10   26   46   39   46   16   33   33   36   17   36   40
      Gene476    4    8    2    5    5    1    8    7    2    6    8    2   13    7
      Gene477  406  721  281  394  242  143  656  461  317  417  216  417  432  246
      Gene478   57   38   52   81   55   39  114   79   75   68   87  106   58   62
      Gene479    3    2    3    2   15    7    4   15    5    8    2    6    2   14
      Gene480   32   19   32   18   46   42   51   30   40   44   60   89   52   41
      Gene481   59   44   54   39   59   99   44   51   98   47  121   71   46   71
      Gene482   12    9    2    5   14   11    8   13   15    2    5   14   10    4
      Gene483  112  150  160  208   99   81  217  163  140  146   70  204  251   65
      Gene484   27   50   56   36   32   24   69   54   63   54   39   67   26   55
      Gene485   21   35    5   37   24   31   12   38   16   17   39    6   16   15
      Gene486    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene487    6   15   18   26   29   15   39   22   33   14   23   30   13   19
      Gene488    .    1    .    .    .    3    1    .    .    .    .    .    .    .
      Gene489    6    1    1    2    .    .    3    2    1    5    1    .    .    .
      Gene490   63   76   94  127   55   64  109  150   50   60   55   94   99   71
      Gene491   84  120   39   53   70   42   75   67   84   60   48   65  104   71
      Gene492 1698 2552 1412 2878 1325 1214 3092 2513 1770 2203 1256 1870 2390 1476
      Gene493  138  237   97  169  172  128  230  198  145  172  161  218  153  177
      Gene494    .    .    1    .    .    1    .    .    .    .    .    .    .    .
      Gene495   23   55   37   30   43   53  106   16   69   38   50   57   91   49
      Gene496  102  127   64  156  114   67  106  137   89   82  111  129  144   98
      Gene497   20   20   15   21    4   11   23   20   12   17    5   29   35    9
      Gene498    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene499  364  554  273  474  874  643  393  407 1017  337  846  417  373 1106
      Gene500    3    6    3    9   17    5   11   10    4   28   17    2    5   12
                                             
      Gene1     49   34   21   63   58 ......
      Gene2    108  105   88   67   73 ......
      Gene3     79   61   69   54   54 ......
      Gene4      8    8    1    1    5 ......
      Gene5   2674 1058  626  808 1257 ......
      Gene6     68   52   56   36   83 ......
      Gene7    124   42   56   60   46 ......
      Gene8      1    .    1    .    . ......
      Gene9     71   17   20   51   71 ......
      Gene10    29   14   19   10   13 ......
      Gene11     1    1    2    1    3 ......
      Gene12   141   96  235  209  257 ......
      Gene13     4    3    5    4    6 ......
      Gene14   798 1187  896 1268 1569 ......
      Gene15    17    2    6    6    7 ......
      Gene16     6    5    7    3    4 ......
      Gene17    48   27   23   17   28 ......
      Gene18    28    8   23   30   19 ......
      Gene19    42   35   14   15   42 ......
      Gene20    38   17   19    7   16 ......
      Gene21     5    1    1    .    2 ......
      Gene22  2011  957 1392 2257 1853 ......
      Gene23     7    6    7   11    7 ......
      Gene24     .    .    1    .    . ......
      Gene25     5    1    .    3    3 ......
      Gene26    47   31   63   21   32 ......
      Gene27   181  200   99   83  174 ......
      Gene28  1695  534 1307 1179 1577 ......
      Gene29   150   55   41   47   79 ......
      Gene30    12   11   15    8    9 ......
      Gene31   192  108   95  124  178 ......
      Gene32    55   57   31   28   41 ......
      Gene33     .    .    .    .    . ......
      Gene34    81   29   56  110   82 ......
      Gene35    44    7   36   53   44 ......
      Gene36   173   86   93   87  127 ......
      Gene37    47    2   14   24   52 ......
      Gene38    10    8    3    1    3 ......
      Gene39    44   26   22   21   35 ......
      Gene40   749  259  437  316  619 ......
      Gene41     7    6    .   14   17 ......
      Gene42    27   18   20   19   37 ......
      Gene43    67   68   70   82  119 ......
      Gene44   236  194  155  249  402 ......
      Gene45    86   79   67   79  123 ......
      Gene46    69   69   46   95  101 ......
      Gene47    77   27  116  143  167 ......
      Gene48   219  219  175  125  160 ......
      Gene49     3    1    1    2    1 ......
      Gene50    14    2    5    6   16 ......
      Gene51  1474  912  911 1051 1611 ......
      Gene52    15   52   26   40   45 ......
      Gene53  1741  775  600  950 1476 ......
      Gene54    39    9   35   36   23 ......
      Gene55    95   41   40   72   76 ......
      Gene56     2    .    8    .    2 ......
      Gene57    34   27   38   28   24 ......
      Gene58    45   22   15   40   19 ......
      Gene59    61   64   63   94   85 ......
      Gene60     5   16    4    7    . ......
      Gene61   170   52   31   49   70 ......
      Gene62    40   13   13   24   29 ......
      Gene63    19   26   19   22   49 ......
      Gene64   260  134  117  122  164 ......
      Gene65     4    1    1    .    7 ......
      Gene66    20   11    3    2   12 ......
      Gene67    24   36    3   20   14 ......
      Gene68    37   18   10   21   38 ......
      Gene69    15    3    .    5    4 ......
      Gene70    38   24   28   22   34 ......
      Gene71     8    3    8   13    3 ......
      Gene72   255   71   79   73  119 ......
      Gene73   110  145  101   95  161 ......
      Gene74    11    7    4    8   11 ......
      Gene75    95   56   63   91   93 ......
      Gene76    19   26   15   16   22 ......
      Gene77   462  229  293  329  369 ......
      Gene78    27   17   23   56   35 ......
      Gene79     1    6   10    7   10 ......
      Gene80   231  122   82  133  127 ......
      Gene81     7   33   21   14   14 ......
      Gene82    93   41   48   72   63 ......
      Gene83   109   25   76   98  130 ......
      Gene84   346  199  221  226  326 ......
      Gene85   135   88   92   94  206 ......
      Gene86   224  121  132  139  188 ......
      Gene87    12    7   16   17   56 ......
      Gene88    19   16    3   17   10 ......
      Gene89     9    7    .    2    7 ......
      Gene90    24   14    8    7   13 ......
      Gene91   159  119   97  102  132 ......
      Gene92    18   17   11   10    5 ......
      Gene93     .    .    .    .    . ......
      Gene94    98   72   62   54   56 ......
      Gene95   263  115  146  148  167 ......
      Gene96     5    4   12   18    9 ......
      Gene97   174   79   65   78  111 ......
      Gene98     1    .    .    .    1 ......
      Gene99   209   59   86   69   97 ......
      Gene100 3759 1559 4605 4430 5007 ......
      Gene101  280  169  124  256  220 ......
      Gene102  327  219   85   91  114 ......
      Gene103    2    .    .    .    . ......
      Gene104    2    8    .    6    3 ......
      Gene105  128   51   32   27   50 ......
      Gene106    7    4    2    7    1 ......
      Gene107  249  164   78   95  131 ......
      Gene108   90   37   53   59   54 ......
      Gene109    1    .    2    .    . ......
      Gene110 2672 2549 1672 1979 2467 ......
      Gene111    1    .    .    3    7 ......
      Gene112    .    .    1    .    . ......
      Gene113   42   15   14   17   16 ......
      Gene114   29   38   11   14   25 ......
      Gene115   77   30   30   34   66 ......
      Gene116   15    .   12    4    4 ......
      Gene117  108   18   64   69   79 ......
      Gene118   57   36   35   48   46 ......
      Gene119  199  311  289  258  293 ......
      Gene120   52    9   33   21    5 ......
      Gene121   52   26   21   36   51 ......
      Gene122   95   47   52  107  135 ......
      Gene123   24    8   21   13   16 ......
      Gene124   54   26   34   30   59 ......
      Gene125  113   34   86   66  107 ......
      Gene126   19    9    7   12    1 ......
      Gene127  131   56   36   40   50 ......
      Gene128   16    6    3    9   26 ......
      Gene129   15    4    1    2    3 ......
      Gene130    6    9   12   11   12 ......
      Gene131    4    1    1    3    5 ......
      Gene132   76   65   72   51   57 ......
      Gene133  294  155  180  174  201 ......
      Gene134  209  140   95  102   90 ......
      Gene135   46   20   32   24   43 ......
      Gene136    .    .    .    .    4 ......
      Gene137    .    1    .    .    4 ......
      Gene138    9    1    1    2    6 ......
      Gene139  112  145   97  140  141 ......
      Gene140    .    .    .    .    . ......
      Gene141   27   28   14   15   21 ......
      Gene142  468  298  167  192  367 ......
      Gene143   10   14    8   10   10 ......
      Gene144 1068 1120  750 1056 1316 ......
      Gene145   10   20    8    8    4 ......
      Gene146   54   18   39   24   54 ......
      Gene147   69   27   26   40   37 ......
      Gene148   10   20   11   19   13 ......
      Gene149 3081  921 1689 1606 2466 ......
      Gene150   79   48   25   52   47 ......
      Gene151   23   37   18   34   33 ......
      Gene152    4    2    7    2    6 ......
      Gene153  102   52   57   79  115 ......
      Gene154   62   33   30   56   45 ......
      Gene155    1    9    9   11    3 ......
      Gene156    5    .    .    5    1 ......
      Gene157   35   19   31   49   28 ......
      Gene158   48   46   19   58   38 ......
      Gene159    .    .    .    .    . ......
      Gene160   64   23   25   15   45 ......
      Gene161  100   43   37   94   74 ......
      Gene162    5    4    2    1    . ......
      Gene163   83   67   55  107  100 ......
      Gene164   45   14   18   42   21 ......
      Gene165   66   67   39   52   37 ......
      Gene166    3    1    2    .   10 ......
      Gene167    4    6    2    4    6 ......
      Gene168    5    .    3    1    3 ......
      Gene169   18   16    7   10    6 ......
      Gene170   56   30   13   29   29 ......
      Gene171   73   49   69   55   86 ......
      Gene172 2308 1175 1230 1467 1937 ......
      Gene173  324  214  151  172  358 ......
      Gene174  375  194  199  221  289 ......
      Gene175   71   19   22   13   23 ......
      Gene176  128   44  107   71  124 ......
      Gene177   26    3    7   15    6 ......
      Gene178 1951 1000 1011 1005 1331 ......
      Gene179  195  217  221  290  362 ......
      Gene180   33   14   35   21   14 ......
      Gene181   44   39   11   28   37 ......
      Gene182   33    8   10    5    5 ......
      Gene183   60  131   71   53  121 ......
      Gene184    .    .    .    .    . ......
      Gene185  187  176  226  183  299 ......
      Gene186  103   86   66   80  124 ......
      Gene187  473  296  252  236  443 ......
      Gene188    5    2    1    5    1 ......
      Gene189    5    3   12    7    4 ......
      Gene190  933  562  270  355  467 ......
      Gene191   51   59   27   23   34 ......
      Gene192   14    9    7    2   12 ......
      Gene193  220   67  109  131  169 ......
      Gene194   58   30   40   45   29 ......
      Gene195    .    .    .    .    . ......
      Gene196   54   14    8   21   71 ......
      Gene197   47   10   12    9   25 ......
      Gene198   39   20   11   11   26 ......
      Gene199   28   11   10    6   10 ......
      Gene200  399   96   86  129   91 ......
      Gene201    .    3    1    .    8 ......
      Gene202    9    2    .    7    1 ......
      Gene203   79   75   41   71  103 ......
      Gene204   37   26   38   68   81 ......
      Gene205    .    .    .    .    . ......
      Gene206    .    .    .    .    . ......
      Gene207   11    5    6   12   13 ......
      Gene208   51    5   13    7   12 ......
      Gene209    .    1    .    .    . ......
      Gene210   23    8   16   12   14 ......
      Gene211  190  115  106  122  162 ......
      Gene212   37   26   12   20   13 ......
      Gene213  196   67   64   52   86 ......
      Gene214   40   28   14   11   24 ......
      Gene215   16   21    8   17   18 ......
      Gene216    2    .    .    2    . ......
      Gene217   28   49   22   28   32 ......
      Gene218  130   69   81   81  113 ......
      Gene219  110   11    5   23   25 ......
      Gene220   63   22   18   19   43 ......
      Gene221   70   34   22   19   39 ......
      Gene222  692  354  417  486  653 ......
      Gene223    .    5    5    .    1 ......
      Gene224   11    4    2    7   15 ......
      Gene225   37   29   16   19   19 ......
      Gene226    7    .    2    5    9 ......
      Gene227    2    4    .    1    . ......
      Gene228    3    1    .    4    . ......
      Gene229   58   18   20   31   41 ......
      Gene230 2024 1532 1515 1593 1875 ......
      Gene231   52   33   17   20   44 ......
      Gene232   48   24   48   46   47 ......
      Gene233   49   34   50   34   40 ......
      Gene234   55   35   30   62   61 ......
      Gene235   23   24   13   37   20 ......
      Gene236   47   29   65  109   88 ......
      Gene237    9   10    8    2    6 ......
      Gene238   29   22   39   24   50 ......
      Gene239   25   25   20   13    8 ......
      Gene240   28   13   35   32   34 ......
      Gene241  145   54   92   53   94 ......
      Gene242  725  419  339  433  505 ......
      Gene243  138  122  215  131  167 ......
      Gene244   45   26   18   26   15 ......
      Gene245   45   25   14   28   34 ......
      Gene246  106   35   33   51   91 ......
      Gene247    6    3    .   10    4 ......
      Gene248  246   86   96  101  173 ......
      Gene249 2941 1867 1932 2448 2247 ......
      Gene250   11    6    5    4   16 ......
      Gene251    5    1    3    .    4 ......
      Gene252   19   27   13   23   26 ......
      Gene253   69   30   59   66   79 ......
      Gene254   10    5    1    2    8 ......
      Gene255   38   29    8   22   24 ......
      Gene256   20   13   15   17   36 ......
      Gene257    1    2    .    6    2 ......
      Gene258   19   16   17    8   16 ......
      Gene259    3    1    .    1    . ......
      Gene260  106   90  123  143  196 ......
      Gene261    9    4   12    8   20 ......
      Gene262  141  104   96  139  106 ......
      Gene263   54   28   23   47   53 ......
      Gene264   61   35   36   50  112 ......
      Gene265   11   27   14   12    4 ......
      Gene266  156   85   89   68   87 ......
      Gene267   71   38   58   20   50 ......
      Gene268 3072 1310 1781 2251 2766 ......
      Gene269   92   17   32   35   52 ......
      Gene270   73   41   97   90  115 ......
      Gene271   45   14   29   27   40 ......
      Gene272   15    1    2    5    6 ......
      Gene273   46   15   49   50   44 ......
      Gene274   95  106   57   54   75 ......
      Gene275   85   36   22   46   29 ......
      Gene276   38   19   20   16   42 ......
      Gene277   39   25   34   74   44 ......
      Gene278  125   64   85  104  201 ......
      Gene279   15   10    8   13   14 ......
      Gene280   96   37   55   63   62 ......
      Gene281    1    3    4    8   10 ......
      Gene282   32   29    5    7    9 ......
      Gene283  812  273  508  781  909 ......
      Gene284  143   38   32   40   44 ......
      Gene285   13   17   15   19   29 ......
      Gene286   30   36   28   55   50 ......
      Gene287   41   15   13   26   40 ......
      Gene288   57   54   15   65   45 ......
      Gene289   14   12   26    8   16 ......
      Gene290 3461 1509 1608 1469 2760 ......
      Gene291    5    7    7    5    8 ......
      Gene292   89   61   66   44   57 ......
      Gene293   46    6   10   47   44 ......
      Gene294   11    9    6    2   10 ......
      Gene295    9    2    3   12    9 ......
      Gene296  229  161  109   84  179 ......
      Gene297  177  155  190  172  164 ......
      Gene298  351  242  201  288  311 ......
      Gene299    6    5    4    2    3 ......
      Gene300    4    2    2    8    3 ......
      Gene301   25   18   20   26   51 ......
      Gene302   41   13    4   23   19 ......
      Gene303 3641 2484 1883 2285 3387 ......
      Gene304  212  157  219  166  176 ......
      Gene305   24   11   20   32   46 ......
      Gene306 1022  606  617  689  811 ......
      Gene307    .    1    .    .    . ......
      Gene308    1    1    1    .    1 ......
      Gene309  104   47   85  101  150 ......
      Gene310    1    .    .    .    1 ......
      Gene311    8    6    7    3    8 ......
      Gene312  642  446  335  358  656 ......
      Gene313   96   17   46   54   32 ......
      Gene314   50   31   36   64   71 ......
      Gene315    1    1    1    1    . ......
      Gene316  307  165  102  163  149 ......
      Gene317  143   89   89   81  157 ......
      Gene318   15    1    8   10    8 ......
      Gene319   50   19   51   48   49 ......
      Gene320   28    9   22   25   53 ......
      Gene321    .    .    .    3    . ......
      Gene322   12   19   36    8   29 ......
      Gene323   42   28   54   60   47 ......
      Gene324  345  114   40   78  114 ......
      Gene325   92   65   66  106   97 ......
      Gene326   19   22   30   18   31 ......
      Gene327   58    1    7    9   25 ......
      Gene328  123   85   78   97  127 ......
      Gene329   27   20   10   29   32 ......
      Gene330    1    5    .    1    . ......
      Gene331   46   17   38   12   27 ......
      Gene332  278  156  142  124  268 ......
      Gene333   11    5    6    3    2 ......
      Gene334   98   27   24   39   82 ......
      Gene335    1    7    6    1    . ......
      Gene336   19   18   15   12   26 ......
      Gene337   15    9    7    9    5 ......
      Gene338   54   19   38    8   43 ......
      Gene339  335   85   95   84  148 ......
      Gene340   25    1    6   15   13 ......
      Gene341  171   89  108  125  154 ......
      Gene342  200  108  120  156  119 ......
      Gene343  236   81   45   47   69 ......
      Gene344   22    6   13   18   30 ......
      Gene345  112   34  100   93  141 ......
      Gene346  131   36   81   71  142 ......
      Gene347   35   13   10   30   28 ......
      Gene348  487  151  108   91  121 ......
      Gene349  135   80   68  117   78 ......
      Gene350  140   60   53  114   92 ......
      Gene351    3    2    .    2    3 ......
      Gene352    2   11    3    9    8 ......
      Gene353  183  145   77   67   82 ......
      Gene354   56   42   58   63   43 ......
      Gene355   14   14   14   13   30 ......
      Gene356   21   15   15   10   20 ......
      Gene357 1898 1199  809  940 1177 ......
      Gene358   22    4   17    6    8 ......
      Gene359  170   64  192  154  246 ......
      Gene360   22   20   36   50   42 ......
      Gene361 1428  519  668  787  991 ......
      Gene362  142  193  191  273  357 ......
      Gene363  113   69   66   52   90 ......
      Gene364    .    .    .    .    . ......
      Gene365   54   46   28   36   23 ......
      Gene366   38   13    7   16   23 ......
      Gene367   12   10    7    .    4 ......
      Gene368    .    1    .    2    1 ......
      Gene369   25   13   18   17   30 ......
      Gene370    4    1    3    5    8 ......
      Gene371  183  158  111  158  222 ......
      Gene372   93   33   29   29   59 ......
      Gene373   12    4   17    9   27 ......
      Gene374   52   40   20   33   39 ......
      Gene375   24   11   15    9   22 ......
      Gene376    8    5    3    .    6 ......
      Gene377   37   43    9   22   34 ......
      Gene378   14   14    7    7    9 ......
      Gene379   33   20   21   14   47 ......
      Gene380   27   34    6   30   31 ......
      Gene381   77   45   47   44   64 ......
      Gene382  152   27   28   45   50 ......
      Gene383    .    .    .    .    1 ......
      Gene384  275  135  105  115  178 ......
      Gene385  109   46  117   89  168 ......
      Gene386    8   10   14    2   10 ......
      Gene387   59   70   45   50   53 ......
      Gene388   18    1    2    2    5 ......
      Gene389   45   19   16   19   54 ......
      Gene390  119   76   71   63  116 ......
      Gene391  606  205  229  223  355 ......
      Gene392   45   52   43   58   52 ......
      Gene393    1    .    .    .    . ......
      Gene394   20   14   12   26   18 ......
      Gene395   26   11   11    5   12 ......
      Gene396   29   28   19   34   34 ......
      Gene397    .    .    .    .    . ......
      Gene398  132   65   58   69   72 ......
      Gene399  272  243  210  229  216 ......
      Gene400   83   27   16   22   16 ......
      Gene401  345  334  221  348  277 ......
      Gene402   17    7    5   14   31 ......
      Gene403    .    3    .    .    . ......
      Gene404   10    1    3    2    1 ......
      Gene405   29   12   13   34   19 ......
      Gene406   19   38   20   31   47 ......
      Gene407   66    6   30   65   49 ......
      Gene408  103  109   33   49   56 ......
      Gene409    .    .    .    .    . ......
      Gene410   74   30   23   26   37 ......
      Gene411   96   21   32   28   33 ......
      Gene412    1    .    .    1    4 ......
      Gene413   57   61   29   14   19 ......
      Gene414   16   15    2    2   11 ......
      Gene415    .    1    .    7    . ......
      Gene416  110   56   25   25   73 ......
      Gene417    3    .    .    1    2 ......
      Gene418    2    8    1    4    . ......
      Gene419   90   64   46   73   54 ......
      Gene420   44   17   21   20   28 ......
      Gene421   93  132   38   46   91 ......
      Gene422    1    1    .    4    . ......
      Gene423   59   37   57   55   52 ......
      Gene424  168  123   72   81  129 ......
      Gene425  294  345  146  147  191 ......
      Gene426   41   41   56   37   86 ......
      Gene427   92   43   31   37   49 ......
      Gene428  626  305  116  127  125 ......
      Gene429  283  210  157  167  248 ......
      Gene430    1    2    4    2    1 ......
      Gene431   11    7    3   27   18 ......
      Gene432   50   16   26   38   57 ......
      Gene433   91   60   71  102  104 ......
      Gene434    7    .   10   35   14 ......
      Gene435   21    7   11   23   16 ......
      Gene436  123   72   77   55  119 ......
      Gene437  766  352  184  244  384 ......
      Gene438    2    2    .    .    4 ......
      Gene439   19   21    9   10    9 ......
      Gene440    .    .    .    .    . ......
      Gene441  444  252  240  320  347 ......
      Gene442    4    3    1    1    1 ......
      Gene443  315  108  145  178  167 ......
      Gene444   67   16   12   28   22 ......
      Gene445  566  286  399  462  485 ......
      Gene446   15   11   12    4   14 ......
      Gene447   33   42   10   16   16 ......
      Gene448   63   38   33   26   44 ......
      Gene449   23    6    4    3    2 ......
      Gene450   87   38   56  108   73 ......
      Gene451    2    1    1    5    . ......
      Gene452  186   62   41   77  115 ......
      Gene453   36   34   37   44   39 ......
      Gene454    .    .    .    .    . ......
      Gene455   28   34    8   17   20 ......
      Gene456   14   11    .   10   29 ......
      Gene457    7    6    4    5   11 ......
      Gene458    .    .    4    .    . ......
      Gene459   39   35   21   31   75 ......
      Gene460   33   19   23   33   34 ......
      Gene461  165   81   93  114  123 ......
      Gene462  264   49   37   76   66 ......
      Gene463   48   83   31   20   20 ......
      Gene464   63   30   23   32   30 ......
      Gene465   32   31    9   24   41 ......
      Gene466   33    7   23   17   34 ......
      Gene467  169  144  159  211  221 ......
      Gene468   51   51   31   36   53 ......
      Gene469  186   43   70   58   78 ......
      Gene470  874  311  257  372  300 ......
      Gene471   44   36   46   60   49 ......
      Gene472    4    1    2    2    8 ......
      Gene473   65   45   32   23   40 ......
      Gene474   17    4    8   12   14 ......
      Gene475   57    8   16   29   40 ......
      Gene476    9    5    .    6    8 ......
      Gene477  325  348  296  317  600 ......
      Gene478  132   71   49   54  110 ......
      Gene479   12    1    2   13    7 ......
      Gene480   52   32    9   17   26 ......
      Gene481  112   41   48   33   63 ......
      Gene482   15   16    2   21   13 ......
      Gene483  145  124  123  111  175 ......
      Gene484   43   67   37   55   61 ......
      Gene485   28    5   18   24   20 ......
      Gene486    .    .    .    1    . ......
      Gene487   29   14    9   19   16 ......
      Gene488    .    .    .    .    . ......
      Gene489    5    .    3    2    1 ......
      Gene490  155  102   61   71   90 ......
      Gene491   47   74   44   40   62 ......
      Gene492 2362 1564 1396 2402 2641 ......
      Gene493  210  118  116  187  159 ......
      Gene494    .    .    .    .    1 ......
      Gene495  104   51   19   21   49 ......
      Gene496  191  114  113   86  149 ......
      Gene497   30   24   15   30   55 ......
      Gene498    .    3    .    .    . ......
      Gene499 1848  300  288  350  422 ......
      Gene500   21   13    .    6    9 ......
      
       .....suppressing 237 columns in show(); maybe adjust options(max.print=, width=)
       ..............................
      
      Slot "nUMI":
              CGTAGCTAAATAATGAGCTATATAAATA         ACTAAGTAAATAATGAACTAGATAAATA 
                                     68141                                61294 
              TCTAGATAAATAATGAACTACGTAAATA         AGTAACTAAATAATGAACTACGTAAATA 
                                     64970                                58399 
          CATATATAGATAAATAATGAACTACGTAAATA         TATAGCTAAATAATGAGATAAGTAAATA 
                                     53773                                65803 
              AGTAACTAAATAATGACATAACTAAATA         TATAGCTAAATAATGAACTACGTAAATA 
                                     93800                                41724 
              AGTAACTAAATAATGAGATAAGTAAATA         TCTAGATAAATAATGAGATACATAAATA 
                                     57378                                73713 
              GCTAAATAAATAATGAACTACGTAAATA         AGTAACTAAATAATGAGCTATATAAATA 
                                     50950                                60841 
          CATATATAGATAAATAATGATCTAAATAAATA         GCTAAATAAATAATGAACTAGATAAATA 
                                     81737                                81689 
                  GCTAAATAAATAATGATCTAAATA         TATAGCTAAATAATGATATACCTAAATA 
                                     55237                                79196 
              TATAGCTAAATAATGATCTAAATAAATA         AGTAACTAAATAATGATATACCTAAATA 
                                     41475                                76230 
                  CGTAGCTAAATAATGATCTAAATA         CGTAGCTAAATAATGAGATAAGTAAATA 
                                     59983                                47591 
              CATAGATAAATAAATAATGATCTAAATA         CATAGATAAATAATGAGCTATATAAATA 
                                     80026                                72493 
              TATAGCTAAATAATGAGATACATAAATA         CATAGATAAATAATGAACTACGTAAATA 
                                     62455                                63733 
                  AGTAACTAAATAATGATCTAAATA         GATAACTAAATAATGAACTACGTAAATA 
                                     52244                                72424 
              ACTAAGTAAATAATGACCTAGCTAAATA     CATAAATAAGTAAATAATGAGATACATAAATA 
                                     66764                                65142 
              CATATATAGATAAATAATGATCTAAATA         TCTAGATAAATAATGATCTAAATAAATA 
                                     90168                                50412 
          CATATATAGATAAATAATGAGATACATAAATA             TCTAGATAAATAATGATCTAAATA 
                                     51330                                59957 
          CATAGATAAATAAATAATGATATACCTAAATA         GCTAAATAAATAATGAGCTATATAAATA 
                                     76040                                44520 
              GATAACTAAATAATGAGATACATAAATA     CATAGATAAATAAATAATGAGATAAGTAAATA 
                                     59336                                72555 
          CATATATAGATAAATAATGACCTAGCTAAATA         CATAGATAAATAATGATATACCTAAATA 
                                     57244                                46885 
          CATAGATAAATAAATAATGACCTAGCTAAATA         GCTAAATAAATAATGACCTAGCTAAATA 
                                     64990                                72429 
              CATAGATAAATAATGACCTAGCTAAATA         CATAGATAAATAATGAACTAGATAAATA 
                                     45741                                76172 
              ACTAAGTAAATAATGAACTACGTAAATA     CATAGATAAATAAATAATGAACTACGTAAATA 
                                     49507                                43939 
              GCTAAATAAATAATGATCTAAATAAATA     CATAGATAAATAAATAATGAGCTATATAAATA 
                                     62253                                43417 
              CGTAGCTAAATAATGAACTACGTAAATA         TCTAGATAAATAATGACCTAGCTAAATA 
                                     81722                                58964 
              CGTAGCTAAATAATGACCTAGCTAAATA         CGTAGCTAAATAATGAGATACATAAATA 
                                     80256                                60646 
              CGTAGCTAAATAATGATATACCTAAATA         CATAGATAAATAATGAGATACATAAATA 
                                     65628                                49272 
              CGTAGCTAAATAATGACATAACTAAATA         ACTAAGTAAATAATGATATACCTAAATA 
                                     43101                                46716 
          CATATATAGATAAATAATGATATACCTAAATA     CATAGATAAATAAATAATGAACTAGATAAATA 
                                     72440                                61871 
              TATAGCTAAATAATGACATAACTAAATA         TATAGCTAAATAATGAGCTATATAAATA 
                                     52890                                38559 
              TATAGCTAAATAATGACCTAGCTAAATA         GATAACTAAATAATGAACTAGATAAATA 
                                     53415                                53647 
              TCTAGATAAATAATGAGATAAGTAAATA         ACTAAGTAAATAATGAGATAAGTAAATA 
                                     82902                                74384 
          CATAAATAAGTAAATAATGACATAACTAAATA         CATAGATAAATAATGATCTAAATAAATA 
                                     83407                                59207 
              GCTAAATAAATAATGATATACCTAAATA             TATAGCTAAATAATGATCTAAATA 
                                     51028                                53408 
                  CATAGATAAATAATGATCTAAATA     CATATATAGATAAATAATGAACTAGATAAATA 
                                     46114                                45304 
              CATAGATAAATAATGAGATAAGTAAATA     CATAAATAAGTAAATAATGAGCTATATAAATA 
                                     55502                                51207 
          CATAAATAAGTAAATAATGAACTACGTAAATA     CATAAATAAGTAAATAATGATCTAAATAAATA 
                                     61337                                65978 
              AGTAACTAAATAATGAGATACATAAATA         TCTAGATAAATAATGAACTAGATAAATA 
                                     63925                                76925 
              ACTAAGTAAATAATGAGATACATAAATA     CATATATAGATAAATAATGAGCTATATAAATA 
                                     61165                                60913 
          CATAGATAAATAAATAATGACATAACTAAATA         GCTAAATAAATAATGAGATACATAAATA 
                                     57681                                60166 
              AGTAACTAAATAATGAACTAGATAAATA     CATAAATAAGTAAATAATGAGATAAGTAAATA 
                                     53512                                70467 
              GATAACTAAATAATGATATACCTAAATA         AGTAACTAAATAATGATCTAAATAAATA 
                                     72631                                65862 
              CATAGATAAATAATGACATAACTAAATA         ACTAAGTAAATAATGACATAACTAAATA 
                                     62462                                59232 
              ACTAAGTAAATAATGATCTAAATAAATA             ACTAAGTAAATAATGATCTAAATA 
                                     57385                                69995 
                  GATAACTAAATAATGATCTAAATA         CGTAGCTAAATAATGATCTAAATAAATA 
                                     49926                                58140 
              GATAACTAAATAATGACATAACTAAATA         TCTAGATAAATAATGACATAACTAAATA 
                                     77186                                52515 
          AGTAACTAAATAATGACATACATAGATAAATA     CATAGATAAATAATGACATACATACGTAAATA 
                                     73058                                86138 
          GCTAAATAAATAATGACATACATAGATAAATA     ACTAAGTAAATAATGACATATATATATAAATA 
                                     61186                                60668 
          CATAGATAAATAAATAATGAAGTAACTAAATA     CATAGATAAATAATGACATAAATACCTAAATA 
                                     49052                                55268 
              AGTAACTAAATAATGAAGTAACTAAATA     CATATATAGATAAATAATGAAGTAACTAAATA 
                                     68558                                47420 
              GATAACTAAATAATGAAGTAACTAAATA CATATATAGATAAATAATGACATAAATACCTAAATA 
                                     62546                                78302 
          TCTAGATAAATAATGACATAACTAAATAAATA         GCTAAATAAATAATGAAGTAACTAAATA 
                                     50197                                67856 
      CATATATAGATAAATAATGACATAGATAGCTAAATA         AGTAACTAAATAATGACGTACATAAATA 
                                     41544                                47842 
          ACTAAGTAAATAATGACATAGATAGCTAAATA         CATAGATAAATAATGACGTAAGTAAATA 
                                     80113                                43433 
              AGTAACTAAATAATGATCTATCTAAATA     CATATATAGATAAATAATGATCTATCTAAATA 
                                     93988                                58682 
          GATAACTAAATAATGACATAACTAAATAAATA     CGTAGCTAAATAATGACATAGATAGCTAAATA 
                                     63604                                58518 
      CATAAATAAGTAAATAATGACATACATACGTAAATA     ACTAAGTAAATAATGACATACATAGATAAATA 
                                     59931                                56629 
          CATAAATAAGTAAATAATGACGTACATAAATA         GATAACTAAATAATGACGTAAGTAAATA 
                                     47911                                57957 
      CATAAATAAGTAAATAATGACATACATAGATAAATA     TATAGCTAAATAATGACATACATAGATAAATA 
                                     49296                                69072 
      CATAGATAAATAAATAATGACATAGATAGCTAAATA         ACTAAGTAAATAATGATCTATCTAAATA 
                                     46387                                52109 
          TCTAGATAAATAATGACATACATACGTAAATA         GCTAAATAAATAATGACGTACATAAATA 
                                     62141                                51453 
              ACTAAGTAAATAATGACGTACATAAATA     CGTAGCTAAATAATGACATAACTAAATAAATA 
                                     44997                                46775 
          GATAACTAAATAATGACATACATAGATAAATA     AGTAACTAAATAATGACATACATACGTAAATA 
                                     43901                                49858 
              TCTAGATAAATAATGACGTACATAAATA     GATAACTAAATAATGACATAGATAGCTAAATA 
                                     62900                                74386 
              TCTAGATAAATAATGACGTAAGTAAATA     TCTAGATAAATAATGACATACATAGATAAATA 
                                     43570                                68415 
      CATAGATAAATAAATAATGACATAAATACCTAAATA     GATAACTAAATAATGACATACATACGTAAATA 
                                     55584                                94305 
          CATAGATAAATAATGACATAGATAGCTAAATA         CGTAGCTAAATAATGACGTACATAAATA 
                                     77783                                40463 
          GCTAAATAAATAATGACATATATATATAAATA     TCTAGATAAATAATGACATATATATATAAATA 
                                     71584                                53973 
          AGTAACTAAATAATGACATAGATAGCTAAATA     GCTAAATAAATAATGACATAACTAAATAAATA 
                                     74777                                71903 
          GCTAAATAAATAATGACATACATACGTAAATA CATATATAGATAAATAATGACATATATATATAAATA 
                                     60838                                67731 
          GATAACTAAATAATGACATATATATATAAATA CATAAATAAGTAAATAATGACATAGATAGCTAAATA 
                                     70450                                68597 
              CATAGATAAATAATGACGTACATAAATA         CGTAGCTAAATAATGATCTATCTAAATA 
                                     47139                                62828 
      CATATATAGATAAATAATGACATAACTAAATAAATA         CGTAGCTAAATAATGACGTAAGTAAATA 
                                     60917                                92896 
              TATAGCTAAATAATGAAGTAACTAAATA     TATAGCTAAATAATGACATAACTAAATAAATA 
                                     77284                                66497 
          CATAGATAAATAATGACATATATATATAAATA CATAAATAAGTAAATAATGACATAACTAAATAAATA 
                                     51961                                52708 
      CATAGATAAATAAATAATGACATACATAGATAAATA     AGTAACTAAATAATGACATAACTAAATAAATA 
                                     49479                                45594 
          CATAAATAAGTAAATAATGATCTATCTAAATA         GATAACTAAATAATGATCTATCTAAATA 
                                     53970                                55497 
          TATAGCTAAATAATGACATAGATAGCTAAATA         TCTAGATAAATAATGAAGTAACTAAATA 
                                     83973                                61696 
      CATATATAGATAAATAATGACATACATACGTAAATA         ACTAAGTAAATAATGAAGTAACTAAATA 
                                     64595                                52660 
              ACTAAGTAAATAATGACGTAAGTAAATA     CGTAGCTAAATAATGACATACATAGATAAATA 
                                     58416                                61615 
              GATAACTAAATAATGACGTACATAAATA     CATAAATAAGTAAATAATGACGTAAGTAAATA 
                                     57551                                69349 
      CATAGATAAATAAATAATGACATACATACGTAAATA     CATAGATAAATAAATAATGACGTACATAAATA 
                                     63458                                69367 
      CATAGATAAATAAATAATGACATAACTAAATAAATA     CATAAATAAGTAAATAATGAAGTAACTAAATA 
                                     70163                                50744 
              AGTAACTAAATAATGACGTAAGTAAATA     CGTAGCTAAATAATGACATACATACGTAAATA 
                                     55348                                57024 
          TCTAGATAAATAATGACATAGATAGCTAAATA     GATAACTAAATAATGACATAAATACCTAAATA 
                                     66164                                61866 
      CATAGATAAATAAATAATGACATATATATATAAATA     CATAGATAAATAAATAATGATCTATCTAAATA 
                                     73838                                51343 
              GCTAAATAAATAATGATCTATCTAAATA         TATAGCTAAATAATGACGTACATAAATA 
                                     48151                                73712 
          GCTAAATAAATAATGACATAGATAGCTAAATA     ACTAAGTAAATAATGACATACATACGTAAATA 
                                     74351                                63861 
      CATAAATAAGTAAATAATGACATAAATACCTAAATA     ACTAAGTAAATAATGACATAACTAAATAAATA 
                                     51157                                56443 
              CATAGATAAATAATGAAGTAACTAAATA     TATAGCTAAATAATGACATACATACGTAAATA 
                                     52539                                77765 
          CGTAGCTAAATAATGACATATATATATAAATA         TATAGCTAAATAATGATCTATCTAAATA 
                                     51299                                48861 
          CATAGATAAATAATGACATAGCTAAGTAAATA     TATAGCTAAATAATGAGATACATATCTAAATA 
                                     76351                                47562 
          CGTAGCTAAATAATGACATACGTAGCTAAATA     TATAGCTAAATAATGACATACGTAGCTAAATA 
                                     65403                                47736 
      CATATATAGATAAATAATGACATAAGTAGATAAATA CATAAATAAGTAAATAATGAGATAAATATATAAATA 
                                     52212                                54634 
      CATATATAGATAAATAATGAGATAAATATATAAATA     CGTAGCTAAATAATGACATACCTAACTAAATA 
                                     64153                                79582 
          TCTAGATAAATAATGACATAGCTACATAAATA CATATATAGATAAATAATGAGATACATAAATAAATA 
                                     79861                                64054 
      CATAAATAAGTAAATAATGAGATACATATCTAAATA     TATAGCTAAATAATGAGATAAATATATAAATA 
                                     64562                                38252 
          GATAACTAAATAATGACATACCTAACTAAATA CATAAATAAGTAAATAATGACATAGCTAAGTAAATA 
                                     83462                                64148 
          CATAGATAAATAATGACATACGTAGCTAAATA CATAAATAAGTAAATAATGACATAGCTACATAAATA 
                                     67698                                63604 
      CATATATAGATAAATAATGACATAGCTAAGTAAATA     CGTAGCTAAATAATGACATAAGTAGATAAATA 
                                     56489                                43657 
          GCTAAATAAATAATGAGATACATAAATAAATA     ACTAAGTAAATAATGAGATAAATATATAAATA 
                                     51746                                46927 
          GATAACTAAATAATGACATAAGTACGTAAATA     GATAACTAAATAATGACATAGCTACATAAATA 
                                     76870                                57678 
          ACTAAGTAAATAATGAGATACATAAATAAATA     TATAGCTAAATAATGACATACCTAACTAAATA 
                                     54186                                73506 
          AGTAACTAAATAATGACATACGTAGCTAAATA     CATAGATAAATAATGAGATACATAAATAAATA 
                                     52488                                61152 
      CATATATAGATAAATAATGACATATCTACCTAAATA CATAAATAAGTAAATAATGACATACCTAACTAAATA 
                                     50249                                46765 
          ACTAAGTAAATAATGACATACCTAACTAAATA     GCTAAATAAATAATGACATACCTAACTAAATA 
                                     42787                                57691 
          CATAGATAAATAATGACATACCTAACTAAATA CATAGATAAATAAATAATGACATAGCTACATAAATA 
                                     53480                                58970 
          GCTAAATAAATAATGAGATAAATATATAAATA     TCTAGATAAATAATGACATACGTAGCTAAATA 
                                     52679                                58393 
          AGTAACTAAATAATGACATAGCTACATAAATA     CATAGATAAATAATGACATAGCTACATAAATA 
                                     52233                                64115 
          ACTAAGTAAATAATGAGATACATATCTAAATA     AGTAACTAAATAATGAGATACATATCTAAATA 
                                     60460                                56695 
          CATAGATAAATAATGACATAAGTACGTAAATA CATATATAGATAAATAATGACATAGCTACATAAATA 
                                     65815                                60831 
          GATAACTAAATAATGAGATACATAAATAAATA     CGTAGCTAAATAATGAGATAAATATATAAATA 
                                     76898                                64240 
          CGTAGCTAAATAATGAGATACATATCTAAATA     GCTAAATAAATAATGACATAAGTACGTAAATA 
                                     59169                                70876 
          TCTAGATAAATAATGAGATACATATCTAAATA CATATATAGATAAATAATGACATACGTAGCTAAATA 
                                     79606                                56503 
          CGTAGCTAAATAATGACATAAGTACGTAAATA CATAAATAAGTAAATAATGACATAAGTAGATAAATA 
                                     56058                                65493 
          CGTAGCTAAATAATGACATAGCTAAGTAAATA     TATAGCTAAATAATGACATATCTACCTAAATA 
                                     63216                                54179 
          GCTAAATAAATAATGACATAGCTAAGTAAATA CATAAATAAGTAAATAATGACATACGTAGCTAAATA 
                                     36867                                69673 
      CATAAATAAGTAAATAATGACATATCTACCTAAATA CATATATAGATAAATAATGAGATACATATCTAAATA 
                                     65094                                59836 
          GATAACTAAATAATGACATATCTACCTAAATA     CGTAGCTAAATAATGACATAGCTACATAAATA 
                                     50030                                69721 
          CGTAGCTAAATAATGAGATACATAAATAAATA     ACTAAGTAAATAATGACATAGCTAAGTAAATA 
                                     62007                                79084 
          GATAACTAAATAATGACATAAGTAGATAAATA     AGTAACTAAATAATGACATACCTAACTAAATA 
                                     53144                                91032 
          TATAGCTAAATAATGACATAAGTAGATAAATA     CATAGATAAATAATGAGATACATATCTAAATA 
                                     91211                                49330 
          TATAGCTAAATAATGACATAAGTACGTAAATA     GCTAAATAAATAATGAGATACATATCTAAATA 
                                     46976                                61229 
      CATATATAGATAAATAATGACATAAGTACGTAAATA     TCTAGATAAATAATGACATAGCTAAGTAAATA 
                                     42976                                54959 
          GCTAAATAAATAATGACATAGCTACATAAATA     TCTAGATAAATAATGACATAAGTACGTAAATA 
                                     70291                                70853 
      CATAGATAAATAAATAATGACATAAGTACGTAAATA     AGTAACTAAATAATGACATAAGTACGTAAATA 
                                     61330                                76587 
          GCTAAATAAATAATGACATAAGTAGATAAATA     TATAGCTAAATAATGACATAGCTACATAAATA 
                                     69929                                91127 
          CGTAGCTAAATAATGACATATCTACCTAAATA CATAGATAAATAAATAATGAGATACATATCTAAATA 
                                     51694                                84232 
          TCTAGATAAATAATGACATAAGTAGATAAATA CATAGATAAATAAATAATGACATATCTACCTAAATA 
                                     61248                                61859 
          CATAGATAAATAATGACATATCTACCTAAATA     GATAACTAAATAATGAGATAAATATATAAATA 
                                     55349                                73586 
      CATATATAGATAAATAATGACATACCTAACTAAATA CATAGATAAATAAATAATGAGATACATAAATAAATA 
                                     61827                                48692 
      CATAGATAAATAAATAATGACATAAGTAGATAAATA     GATAACTAAATAATGACATACGTAGCTAAATA 
                                     54922                                57149 
          TCTAGATAAATAATGAGATAAATATATAAATA     CATAGATAAATAATGACATAAGTAGATAAATA 
                                     76670                                59905 
      CATAGATAAATAAATAATGACATACGTAGCTAAATA CATAGATAAATAAATAATGACATACCTAACTAAATA 
                                     42085                                63716 
          TATAGCTAAATAATGAGATACATAAATAAATA     GATAACTAAATAATGAGATACATATCTAAATA 
                                     47590                                60327 
          AGTAACTAAATAATGAGATACATAAATAAATA     TATAGCTAAATAATGACATAGCTAAGTAAATA 
                                     52425                                59732 
      
      
      Slot "reference":
      An object of class "Reference"
      Slot "cell_types":
      Cell36 Cell58 Cell76 Cell11  Cell9 Cell21 Cell47 Cell46 Cell27 Cell29 Cell89 
         ct1    ct1    ct1    ct1    ct1    ct2    ct2    ct2    ct2    ct2    ct3 
      Cell71 Cell75  Cell5  Cell1 
         ct3    ct3    ct3    ct3 
      Levels: ct1 ct2 ct3
      
      Slot "counts":
      500 x 15 sparse Matrix of class "dgCMatrix"
    Message
        [[ suppressing 15 column names 'Cell36', 'Cell58', 'Cell76' ... ]]
    Output
                                                                                   
      Gene1     61   60   29   47   36   69   39   42   57   67   44   56   36   61
      Gene2    106  110  110  112  117   76   94  125  100  104   57   61   39  133
      Gene3     50   50   44   73   69   53   61   98   91   77   70   78   43  131
      Gene4     34    6   16   15   21    5    3    3    6   10    8    2    1    5
      Gene5   1190 1512 1088 1403 1468 1150 1081 1158 1501 1385 1599 2267 2147 2538
      Gene6     44   66   31   55   48   53   65   46   76   54   38   24   51   74
      Gene7     57   54   43   40   62   73   54   40   76   84   49   45   42  138
      Gene8      .    3    .    .    6    1    .    .    .    .    .    .    .    5
      Gene9     18   34   12   43   27   41   58   35   47   78   42   36   46   70
      Gene10     9    9   11    4   13   24   12    7   28   25   11   22   12   29
      Gene11     3    .    3    .    4    .    1    1    1    .    7    3    .    2
      Gene12    76  111  112   78  164  338  201  235  302  242  114  216  135  253
      Gene13     3   15    2    1   13   16    7   10    6   12   13   26   15   10
      Gene14  1059 1354 1187 1441 1206 1091  785 1258 1490 1149  558  673  577 1115
      Gene15     2    3    4    9    4   11   13   10   17    7    6   25   13   22
      Gene16    14   10    4   10    6    7    5   10    6    4    4    5    8    7
      Gene17    39   27   22   34   19   19   10   25   34   24   16   24   20   50
      Gene18    18   13   10    8   14   15   22   19   25   28   44   47   33   47
      Gene19    36   22   39   16   25   22   19   28   55   28   24   30   27   76
      Gene20    25   13   12   12    .   20    9   10   17   14   19   14   10   24
      Gene21     8   10   12    5    3    1    .    8   13    7   11    6    3   17
      Gene22  1067 1155 1035 1020  999 1550 1608 1904 1952 1636 1028 1283 1163 1978
      Gene23    19    1   13    5   11    .    1    5   12    6    2    2    1   11
      Gene24     .    .    .    .    1    .    .    .    .    .    .    .    .    .
      Gene25     1    1    .    2    .    .    .    .    2    4    .    3    .    1
      Gene26    21   19   21   42   55   50   18   42   37   43   19   57   30   45
      Gene27   217  209  213  161  240   84  113  102  192   78   55   74   81   99
      Gene28   648  569  584  570  455 1194 1057 1568 1641 1504  815 1342  933 2002
      Gene29    69   47   43   81   67   55   62   60   84   69   75   66   98  108
      Gene30    16    6    5   10    7    5    4    4   11    2    3    9    4    7
      Gene31   111   71   60   66  111  100   64  144  146   69  109  107   93  120
      Gene32    61   69   43   41   89   28   31   35   49   42   31   72   22   50
      Gene33     .    .    .    .    .    1    .    .    .    .    .    .    .    .
      Gene34    41   68   45   74   64   60   94  126  139   73   52   50   40  102
      Gene35    31   32   32   26   27   69   53   88   76   58   37   45   64   94
      Gene36   124  142  100  133  157   99  124  123  116  147   92   95  104  195
      Gene37    22    8   13   31   29   46   53   16   90   39   10   20    9    4
      Gene38     9   19   21   20    7    8   14   11   12    4    6    7    5    9
      Gene39    24   36   21   16   29   22   23   19   23   26    9   27    9   18
      Gene40   239  137  155  272  241  418  332  361  401  377  348  510  423  654
      Gene41     .    .    3    .    3    3    2    3   15    2    1    5    4    9
      Gene42    25   34   13   11   39   18   28   26   21   27   13   18   36   46
      Gene43    29   23   41   53   36   95   51   64   87   85   41   40   33   45
      Gene44   191  198  202  186  230  166  205  188  228  168  146  179  199  314
      Gene45    68  106   49   74   35  102   51   79   92  106   49   59   64  107
      Gene46    54  100   88   81   53   80   42   80   71   78   48   46   45   68
      Gene47    59   95  101   90   53  190  160  204  276  206   47   50   71  129
      Gene48   166  165  154  169  187  134  140  113  242  115  105  167  107  237
      Gene49     1    .    2    1    .    4    2    2    .    .    .    .    2    2
      Gene50    10   15    5   12   18   12   12    7   11    7   13   17   13   16
      Gene51  1030 1035 1044  957 1094 1130 1064  976 1440 1352  906 1013  795 1443
      Gene52    27   28   45   29   23   44   16   31   40   43   11   16    5   30
      Gene53   829  955  914  975  913  787  692  778 1128  778  888 1025  995 1415
      Gene54    23   47   38   15   35   13   22   27   34   26   34   20   36   43
      Gene55    93  101   86   83   84  123  107   93  113   62   88  116   88  133
      Gene56     4    1    1    2    .    2    .    .    1    .    .    6    3    2
      Gene57    34   14    6   21    7   27   22   21   33   16   27   23   20   23
      Gene58    32   30   26   37   35   31   40   14   26   26   38   36   21   39
      Gene59    42   59   45   50   54   39   48   54  110   52   21   26   16   35
      Gene60     6    5    5   13    4    6    .   11   16    3    2    1    7   12
      Gene61    34   57   62   52   48   45   43   54   36   45   87   91   95  142
      Gene62    31   19   33   23   38   28   15   25   24   23   18   20   23   42
      Gene63     7   10   30   27   20   27   11   15   30   27   21   18   10   53
      Gene64   101  159   64  111   62   97   53  119  132  135  121  171  131  168
      Gene65     4    2    8    3    1    1    7    1    5    2    4    1    .    .
      Gene66    22   17    6   10    8    4   14    1    5    4    9    6    9   15
      Gene67    22   36   21   32   19   10    7    6   15    8   15   28   11   38
      Gene68    14   33   10   30   25   14   19   21   18   13   16   34   18   22
      Gene69     2    6    8    3   15    7    2    2    8    4    8   14    7   11
      Gene70    12    8   10   10   10    9   12    7    8    6   14    9    7   29
      Gene71     3    1    6    9    2    5    2   11   21   11   14   22    7   20
      Gene72   122  118  111  131  150   98  105  136  162  137  108  129  139  148
      Gene73    94   94  141  130  148   78  112  101  149  102   54   68   34   69
      Gene74     4   18   10    2    5    4    9    7    8   13   10    7    8    9
      Gene75    79  124  110  111  139  101   80   92  166  116   86   70   59  110
      Gene76    51   64   50   69   70   28   32   49   39   28   18   15   17   35
      Gene77   247  335  370  318  251  387  221  442  407  347  339  413  311  483
      Gene78    21   55   50   28   24   56   23   65   53   40   40   43   34   39
      Gene79    10   18   10    7   10    5    9    4    8    5    4    5    4    2
      Gene80   226  183  147  137  221  151  112  196  201  167  147  135  135  252
      Gene81    37   33   21   22   14   19   19   12   20   14   15   10   20   17
      Gene82   137  107  106  101   97  109   88  106  113   77   74  112   75   94
      Gene83    57   82   68   77   66   84   59   98  147  102   60   57   89   80
      Gene84   187  292  216  219  212  211  236  242  270  248  175  181  178  271
      Gene85   197  191  161  179  187  206  165  129  183  221  111  133  105  196
      Gene86   132  181  143  167  120  119  128  167  138  149  124  126  166  146
      Gene87     2   10   23   13    7   38   31   25   39   34    7   13    2    9
      Gene88    13   12    6   12   18    5    4   19   19    .    6    8    2    8
      Gene89     2    4    8    6    8    1    6    1    7    9    4    .   11    5
      Gene90    31   22   32   29   34   10    9    9    9   12   14   17    7   17
      Gene91    92  112   96  181  150   93   85  103  137  107  137   32  104  142
      Gene92    21   11   10   12   11   22   23   20   12   15   11    5   10   22
      Gene93     .    .    .    1    .    .    .    .    .    .    1    .    .    .
      Gene94    59   31   37   73   17   32   53   48   52   49   56   88   22   55
      Gene95   172  153  157  224  188  193  180  174  282  236  201  226  286  424
      Gene96     3    7    6    2   11    5    5    8   11   12    5   10    5   10
      Gene97    83  113   84  113  103  123   75   90  134  113   93   82  115  183
      Gene98     .    .    2    .    .    .    .    2    .    .    .    .    .    .
      Gene99    78  126   87   60   89   97   66  100  105   91   92  100  114  196
      Gene100 2508 2320 2710 1987 1849 3739 2720 3985 5238 4255 1282 1792 1867 3121
      Gene101  209  228  186  204  266  198  121  229  213  231  149  156  233  358
      Gene102  197  253  245  239  254  185  128  132  182  221  182  212  142  400
      Gene103    .    .    .    1    .    .    .    .    .    .    .    .    .    .
      Gene104    1    .    2    1    3    8    2    .    1    .    4    1    .    1
      Gene105   58   60   28   41   25   27   17   38   45   27   49   48   50   43
      Gene106    5    2   14    7   10    6    4    6    5    4    9   18    5   14
      Gene107  188  133  117  159  166   52   73  115   91  117  125  177  176  267
      Gene108   28   18   27   16   21   11   22   26   51   28   34   50   63  128
      Gene109    5    .    3    1    3    .    5    1    1    1    2    3    .    3
      Gene110 2154 2308 2234 2433 2452 2275 2369 2188 2757 1859 2002 2122 1334 3068
      Gene111    .    3    4    .    .    6    3    3    1    4    1    5    2    7
      Gene112    .    .    .    .    .    .    1    .    .    .    .    .    .    4
      Gene113   26   19   18   33   32   14   22   19   43   12   28   19    9   44
      Gene114   25   21   12   20   29   14   12   21   26   19   10   26    5   43
      Gene115   51   36   23   37   45   29   23   55   43   63   32   37   36   49
      Gene116    1    9    6    4    9    5    3    8    8    2    5    5   18    9
      Gene117   41   20   21   21    6   61   70   57   59   67   56   43   36   92
      Gene118   30   44   15   29   27   41   48   36   48   31   30   42    7   42
      Gene119  154  161  154  212  193  146   88  248  212  276  151  184  169  146
      Gene120   29   19   24   27   13   41   15    6   17   20   18   35   46   41
      Gene121   26   75   50   42   39   19   27   32   26   19   23   29   27   29
      Gene122   70  133   84  103   57  112   52   73   87  106   58   95   80  109
      Gene123    5   10   20    9    9   23   12   18   16    9    3    4    8   14
      Gene124   61   66   32   29   44   22    9   40   53   74   27   32   36   41
      Gene125   59   30   16   20   19   53   58   48   80   54   50   39   69   77
      Gene126    8   12   18   13   14   18    3   16    3    7   26    8    8   21
      Gene127   60   57   61   60   68   82   52   67   66   78  105   89   52   92
      Gene128    4   16    4    4   11   21    2   13    2   11   12    4    1   14
      Gene129    4    7    3   15   10    7    5    2    9    3    6    4    7   11
      Gene130   20   11   17    9   20    5   20   15   14   22    7    9    1    3
      Gene131    1    1    1    2    .    5    .    .    1    2    1    3    4    2
      Gene132   75   96   90  120   97   58   83  110  142   81   67  101   63  142
      Gene133  172  153  182  188  167  171  106  160  214  158  158  176  197  239
      Gene134  109   93  107  121  132  116   71  167  139   83  119  127   98  231
      Gene135   50   46   48   55   73   45   42   30   98   75   23   48   53   61
      Gene136    .    1    2    .    .    .    .    .    .    .    .    .    .    .
      Gene137    .    .    4    .    .    .    .    .    .    1    .    1    4    .
      Gene138   11    3    8   10    3    1   11    7    5    8    5    1   11    7
      Gene139   92   78   88  178  103   79   78   94  104  135   82  172   98  152
      Gene140    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene141   32   50   28   26   21   23   14   13   27   21   34   19   15   34
      Gene142  202  264  284  233  416  231  313  327  278  229  237  239  291  485
      Gene143    6    9    7   11    9    9    4    5   18    4    9   19    5   14
      Gene144 1083 1460 1661 1476 1464 1185 1236 1307 1688 1389  769 1024  915 1522
      Gene145    8   17   11    8    4    2    4    3    5   13    5    2    3   10
      Gene146   63   56   24   65   34   48   63   52  103   92   48   59   41   92
      Gene147   47   57   35   57   30   40   28   60   56   40   43   49   34   58
      Gene148   14   16    9   30   18   27   34    7   16   33   23   12   17   16
      Gene149 1629 1411 1562 1355 1601 2248 2510 2438 3046 2487 1796 2104 1929 3589
      Gene150   49   51   31   62   58   52   32   57   46   55   28   64   42   87
      Gene151    9   16   21    5   32    5   11   18   21   27   11   31   25   33
      Gene152    .    6    2    .    4    2    7    5    2    1    .   10    4    2
      Gene153   76   69   99  116   29   86   68   68   69   70   23   40   30   81
      Gene154   30   32   35   28   31   29   34   34   62   19   32   28   35   52
      Gene155   16    4   17    2    2    6    5   10   11    3    6    9    6   10
      Gene156    3    2    5    .    3    2    2    4    2    .    2    2    3    .
      Gene157   39   58   27   46   50   22   12   20   60   36   40   40   12   24
      Gene158   25   39   54   28   18   50   40   52   54   38   27   30   43   51
      Gene159    .    .    .    .    .    .    .    1    .    .    .    .    .    .
      Gene160   21   18   21   18   16   27   21   10   31    9   33   17   39   44
      Gene161   25   47   51   78   64   56   87   58  129   65   94   67  111  137
      Gene162    2    3    2    1    1    4    2    2    .    6    2    3    2    7
      Gene163   71   70   64   34   89   46   49   68   78   69   59   77   44  169
      Gene164   20    9   14    7   20   27   34   11   20   19   18   19   22   31
      Gene165   81   86   79   67  110   44   54   82  124   59   60   82   76  119
      Gene166    5    4    2    2    4    3   10    6    2    4    .    1    4    1
      Gene167    5    3    .    2    2    5    1    2    7    4    4    2    2    7
      Gene168    2    .    .    .    3    5    9    1    8    2    .    4    2    9
      Gene169    5    .    7    3   10    8    2   27   17   28   14   10    2    7
      Gene170   19   42   28   35   49   15   17   42   24   33   22   36   26   33
      Gene171   40   50   49   58   48  135   93  100  131  115   33   68   69   97
      Gene172 1416 1739 1274  974 1650 1302 1072 1191 2337 1604 1243 1360 1195 2012
      Gene173  170  247  252  215  272  226  263  256  287  261  167  149  185  221
      Gene174  277  359  212  363  276  325  204  227  329  264  332  223  235  452
      Gene175   21   25   44   18   25   19   24   22   36   32   34   62   32  117
      Gene176   41   73   87   71   68   71   45   54  121   83   86   88   53   70
      Gene177   18   12   13   14   26    9    6   19    7    7   18   12   10   23
      Gene178 1113 1071 1129 1359 1391 1164 1004 1212 2100 1115 1058 1288 1424 1893
      Gene179  259  350  261  280  210  239  332  256  392  295  125  244  110  205
      Gene180   30   48   24   35   20   17   28   18   42   43   25   30   40   29
      Gene181   37   24   28   28   23   37   41   91   50   67   58   53   37   63
      Gene182    3    5    2    4   13    5    5   13    6    1   13    7    8   24
      Gene183   42   46   46   59   70   82   88   62   97   66   35   56   10   57
      Gene184    .    .    .    .    3    2    3    1    .    .    .    2    .    1
      Gene185  111  158  174  205  190  195  144  153  276  238   77   88  136  155
      Gene186   81  107  117   80   94  116  107   73   83   93   76   86   71  141
      Gene187  275  270  277  224  245  304  182  270  369  247  228  304  186  388
      Gene188    9    6    6    2    4    3    2    3   10    5    .    1    1    7
      Gene189    5    .    6    6    6   11    4    4   14    4    3    5    3   11
      Gene190  569  603  595  637  571  352  336  492  546  632  542  680  540 1055
      Gene191   28   31   43   58   42   64   28   27   31   50   52   46   23   75
      Gene192    4    5    8    6    6   10    6    4   15   16    3   10    3    6
      Gene193   79  115   92  130  104  139  102  128  116  131  141  104  115  121
      Gene194   35   48   33   30   21   39   21   20   37   39   17   28   17   21
      Gene195    .    2    .    1    .    .    .    .    2    .    .    .    .    .
      Gene196   37   36   37   34   42   35   32   54   61   44   40   25   41   60
      Gene197   26   16   21   25   10   11   12   13   29   42   21   29   22   28
      Gene198   32   19   41   53   27   14   13   30   23   16    6   16   23   25
      Gene199   21   21   12   17   16    6    7   15   12   11    5   12   18   17
      Gene200   69   83   77   91   82   73  105   75   93   77  303  313  345  536
      Gene201    1    6    3    2    1    6    1    3    7    5    .    3    5   12
      Gene202    6    3    1    6    6    4    6    .    1    .    6    7    6    5
      Gene203   48   33   18   47   47   54   55   52   49   80   49   46   42   84
      Gene204   44   37   31   35   38   51   61   68   48   41   25   31   27   72
      Gene205    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene206    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene207    4   16   10   11    4   14    2    9   12    3   17    7   11   25
      Gene208   13   12    4   13    7   20    5    2   23   12    9   42   30   51
      Gene209    5    .    .    .    2    .    1    .    3    4    .    3    .    1
      Gene210   21   16   14   10    9   13    3   10   34   21   16   16   14   30
      Gene211   97  154  145  162  161  127  144  150  193  166   85  135  101  176
      Gene212   21   23    9   11   16   11   14    9   27   11    4   16   14   15
      Gene213  122   83   97  100  158   79   73  115   87   69  162  151  214  252
      Gene214   15   30   19   23   43   35   20   24   25   30   15   25   26   42
      Gene215   19   10   18   15    7   11   10   21   14   10   14    8   11   18
      Gene216    .    1    2    .    .    3    8    1    2    1    .    1    4    .
      Gene217   43   54   31   55   34   71   30   33   54   23   12   27   29   58
      Gene218   87   66   86   70   74   72   75   48  102  108   76   64   39  124
      Gene219   18   20   18   34   15   24   10   24   32   28   92   96   33  125
      Gene220   39   39   29   40   31   44   16   37   36   35   31   19   42   41
      Gene221   39   45   30   72   75   46   61   58   86   42   61   51   52   79
      Gene222  607  425  414  544  551  575  687  675 1027  715  379  632  400  695
      Gene223    1    4    1    1    4    5    1    6    1    2    .    4    .    1
      Gene224    8   12    4    2    2    5    5    1    8    7    3   14    2   11
      Gene225    9   32   15    8   13   21   15   26   14   12   11   10   18   15
      Gene226    1    2    2    4    7    7    4    4    7    1    3    4    3   11
      Gene227    .    .    2    2    .    .    .    2    .    .    3    2    1    1
      Gene228    1    .    .    .    .    .    .    .    3    4    .    .    .    1
      Gene229   22   15   17   34   27   22   17   10    7   22   21   34   18   39
      Gene230 2586 2682 2309 2395 2771 2376 2031 2281 2920 2394 1510 1846 1855 2579
      Gene231   23   30   15   12   14   18   20   31   33   38   45   13   37   53
      Gene232   42   52   42   30   45   30   46   49   38   75   56   29   34   75
      Gene233   36   46   28   58   39   77   64   66   84   59   41   64   58   98
      Gene234   43   40   30   47   43   44   61   47  114   80   39   39   27   36
      Gene235   46   44   57   42   34   19   35   31   32   50   26   41   39   59
      Gene236   57   78   73   62   62   32   54   60   46   61   28   35   50   73
      Gene237   12    6    5    8    5    4    .    4   10    8    5   10    8    9
      Gene238   13   30   16   72   59   43    8   41   80   32   23   30   29   75
      Gene239   10   11    5   16   20   16   13   11   28   27   19   18   15   39
      Gene240   16    9   17   21   15   38   27   24   34   34    7   11   13   24
      Gene241   65   55   44   82   55   75   53   73   84   88   76   73   64  116
      Gene242  319  417  291  449  350  237  293  363  578  496  318  365  247  579
      Gene243   84  103   82  153  121  167  141  236  270  228  101  118  128  198
      Gene244   35   23   42   22   14   38   26   17   37   23   13   20    8   56
      Gene245   44   30   58   63   41   66   24   24   55   43   67   62   59   68
      Gene246   45   66   82   70   82   66   54   62   87   68   53   75   66   83
      Gene247   10    3    2    6    6    7    5    6    4    .    2    5    2    4
      Gene248  108  131   54   83  108  150  131  145  173  152  152  222  134  257
      Gene249 2511 2744 2484 2057 2293 1852 1943 2297 3294 2953 2236 2903 2140 3320
      Gene250   15   18   12   14   16    2    8   13    8   11    4   12   12   28
      Gene251    2    1    2    1    .    4    4    2    .    4    .    3    2   10
      Gene252   23    8   13   25   15   10   23   19   27    9   18   12   21   17
      Gene253   23   27   51   33   30   43   47   57   93   95   41   70   47   84
      Gene254   12    4    8   15    5    8    8    3    2    4    .    4   12    6
      Gene255   19   29   10    8   16   13   10   22   50   54   22   24   25   46
      Gene256   12   26   13   15   18   23   14   14   26   23   21   15    9   20
      Gene257    1    1    3    .    .    .    2    .    2    1    2    .    .    3
      Gene258   14   18   11   20   16   49   19   17   33   27   10   13   14   35
      Gene259    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene260  143  198  155  151  196  164   89  117  123  154  106   98  130  186
      Gene261   30   21    9   26   13   19   21   17   31   19    7   12   10   15
      Gene262  112  103   92  133  144  119   89  113  152  101   61  116  140  139
      Gene263   31   28   45   47   28   40   33   32   54   20   31   32   22   44
      Gene264  103   39   85   65   54  104   99   85  204  103   31   37   63   92
      Gene265    8   24   30   23   20   17   16   16   19    5    5   11   11   14
      Gene266  142  106  168  112   99  138  103  127  213  122  152  170  123  198
      Gene267   83   71   37   99  105   31   36   51   68   48   43   35   39   70
      Gene268 1307 1241 1355 1539 1774 2323 1992 2252 2891 3071 1843 2353 1911 2983
      Gene269   16    9   10   15   17   30   33   42   37   38   46   39   22   54
      Gene270   35   23   25   43   41   66   52   68   62   44   23   25   62   39
      Gene271   24   20   26   21   16   32   27   47   60   28   36   41   50   45
      Gene272    8    6    4    3   18   10    6    .    4    5   21    7   10    8
      Gene273   52   48   52   29   33   66   49   42   77   43   42   55   65   77
      Gene274   90  119  163   83   92   33   30   52   53   47   68   64   75   76
      Gene275   26   15   32   38   41   24   22   36   14   18   81   83   47  128
      Gene276   13   40   25   13   27   31    9   20   31   32   23   32   47   31
      Gene277   28   22   22   21   27   35   27   34   22   61   33   55   32   54
      Gene278  129  112  120  142  103  117   88  114  140  116  136  116  104  144
      Gene279    1   10    4    5    8    2    9    1   10    3    4    8    1   12
      Gene280   63   44   57   46   69   31   59   76   78   71   44   47   42   81
      Gene281    7    6    5    8    2    6    6    4   18    6    5    1    4    9
      Gene282    9   14    5   18   15    6   24   10   21    7    8    4   10   11
      Gene283  369  419  337  382  501  694  531  772 1065  758  409  463  364  803
      Gene284   55   35   69   65   49   64   42   45   44   61   56   65  136  166
      Gene285   15   14   33   20   30   25   25   15   32   33   21   18   42   55
      Gene286   16   22   28   23   16   36   44   43   71   50   13   25   36   26
      Gene287    6    1    9   12    7   23   21   18   42   36    8   30   34   29
      Gene288   27   74   56   20   57   49   35   44   58   52   28   39   54   63
      Gene289   17   22    3    7   11   36   17   18   30   48   29   21   20   41
      Gene290 1860 1746 1737 2164 1659 1989 1337 1554 2411 1898 1519 1585 1406 3025
      Gene291    8   15    8   12    7    2    3    9   12    9    6   15    8   12
      Gene292   65   62   61   73   61   57   56   49   85   65   50   86   53  100
      Gene293   32   35   45   41   42   33   27   66   97   55   36   16   27   68
      Gene294   16   23   17    8   19   13   15   17    6    6   11    7   11    7
      Gene295    3    2    2    2    1    8    1   10    3    7    1    6    6    1
      Gene296   92  156  124  102  150   57   51   72  122   88   94  126   81  176
      Gene297  135  164  160  113  120  168  119  138  109  238  134  123  144  205
      Gene298  281  244  267  329  242  316  350  248  393  316  196  229  250  435
      Gene299    3    4    1    5    1    1    6    .    2    3    2    3    1    3
      Gene300    6    1    4    5    .    1    1    4    3    6    1    .    5    7
      Gene301   12   10   29   18   11   10    9   20   10    7   14    6    9   29
      Gene302   19   20   24   19   22   28   33   35   25   33   36   38   31   35
      Gene303 2819 2746 2948 2844 2719 2647 2187 2394 3174 2390 2043 2130 2470 2855
      Gene304  171  133  163  148  185  157  143  170  181  176  122   90  104  170
      Gene305    6   14    9   24   15   34   17   26   34   43   21   25   13   31
      Gene306  750  726  678  792  840  491  491  691 1013  711  676  645  580 1261
      Gene307    .    .    .    .    .    .    .    .    1    .    .    .    .    .
      Gene308    1    2    .    .    1    .    .    .    .    .    2    1    1    .
      Gene309   87   49   79   48   73   98   85  141   99   65   51   56   48   77
      Gene310    .    .    .    4    4    .    .    .    7    3    .    1    1    .
      Gene311    2    2    1    5    .    4    2    5   12    8    1    5    2    5
      Gene312  329  422  368  384  337  266  334  385  474  285  248  326  344  395
      Gene313   33   48   20   61   18   57   69   63   80   76  142   90   75  119
      Gene314   47   26   42   31   52   46   33   46   71   44   18   36   16   51
      Gene315    .    .    .    2    3    2    .    .    1    5    .    .    7    1
      Gene316   76  158  122  120  134  129  121  140  236  119  186  152  132  195
      Gene317   90  115   79  116  107   80   59   71  117   88  110   77  111  104
      Gene318    3    .    8    4    .    7   18   11   21    5    4   15    5   13
      Gene319   38   23   44   60   53   37   34   21   56   39   23   36   16   38
      Gene320   34   11   38   30   21   18   20   16   13   22   26   19   14   26
      Gene321    .    4    .    4    2    .    1    2    .    .    1    .    .    .
      Gene322   28   31   26   16   19   51   13   60   46   32    9    5   12   11
      Gene323   45   47   37   30   33   61   67   84   62   78   36   75   71  102
      Gene324  117  128   75  108  135   77   80   70  184   96  205  211  233  240
      Gene325   74  117  113   89   95  100   64   43  121  121   90   96   84  116
      Gene326   34   27   15   39   12   38   16   49   33   39    8   12   18   27
      Gene327   15    9   10    7   14   12   19    7   21   15   17   19   19   62
      Gene328  109  126  149  149  154  107  143  102  137  122   63   75   73  142
      Gene329   13   18   40   33   32   24   30   26   54   50   29   35   32   38
      Gene330    .    .    4    .    .    2    .    4    7    .    2    .    1    .
      Gene331   22   58   38   29   34   35   22   30   32   27   15   21   14   27
      Gene332  298  403  194  164  199  329  235  209  278  221  164  264  175  373
      Gene333    3    2   12   13   10    .    2    .    .    1    3   12    1    1
      Gene334   52   54   57   40   81   49   79   45   88   92   90   94   61  155
      Gene335    2    7    3    1    1    1    3    .    .    .    .    1    3    1
      Gene336    9   31   11   21    6   25    8   12   16   11   25   19   12   58
      Gene337   21   24   25   12   14   12   18   14   13    6   11    6   15    5
      Gene338   22   38   41   34   39   16   46   17   70   33   47   62   76   70
      Gene339   36   93   79  138   95   81  116  100  140  135  175  200  133  232
      Gene340    6   13   12   10   21   12    3   26   11   25   25   11   10    8
      Gene341  147  151  155  125  130  111  128  112  190  154  122  183  152  203
      Gene342  111   89  112   92  113   84   98  108  111  137  107  153   94  167
      Gene343   59   64   47   83   65   22   34   46   99   40  154  229  104  165
      Gene344   11   32   12   30   17   15   17   26   34   16   21   15   19   44
      Gene345   44   35   35   44   52  114  121  127  137  165   83   69   87   92
      Gene346   31   26   24   31   47   70   44   44   68   57   41   25   46  100
      Gene347   22   14   17    6   21   16   12   16   26   17   16   27   16   26
      Gene348  167  129  207  222  232  117   63   91   97   91  215  255  253  255
      Gene349  102  135   73  118  131  132  107   93  145  131   93   91  130  168
      Gene350  129   84   96  103   90  103   86  113   88  124   68  133   91  102
      Gene351    .    2    2    1    1    .    1    1    1    5    6    1    3    1
      Gene352    4    7    1    5    2    6   10    9    5   15    7    8    6    7
      Gene353   65   93  103  114   92   90   74   92   98   54  108   74   78  101
      Gene354   83  103   83   89   51   59   66   70   83  110   97   67   64   71
      Gene355   22   16   18   17   12   11   17   15   23   23   10   11   15   13
      Gene356   13   31   45   33   28   22   35   31   29   20   21   21   32   32
      Gene357  988 1548 1117 1080 1591 1336 1359 1202 1777 1270 1016 1351 1016 1855
      Gene358   16    5    6   11    4    5    7    8    3   10    5    1    9   18
      Gene359  147  188  154  156  206  211  196  173  318  233  129  107   99  267
      Gene360   21   27   32   22   17   27   27   45   67   37   10   17   15   36
      Gene361  566  851  717  701  656  669  597  774  815  819  850 1253 1027 1924
      Gene362  129  138  117  143  106  262  272  320  265  306  123  152  116  151
      Gene363   70   42   68   65   50   66   30   64  120   78   61   69   66  104
      Gene364    .    .    .    .    .    .    .    .    .    1    .    .    .    .
      Gene365   21   18   35   30   21   22   17   17   54   26   32   32   35   34
      Gene366   13   17   14   17   16   26   36   24   27   12   19   23   12   46
      Gene367   19   15   12    2    3   12    4   12    7    3    3    4    3    3
      Gene368    .    .    .    .    2    .    .    .    .    1    2    .    2    1
      Gene369   19   24   35   28   49   28   28   25   38   48    8   22   24   40
      Gene370   15    1   23    2    1    2    5   10    2    5    9   16    4   21
      Gene371  171  116   91  184  175  174  119  181  252  156   85  158   85  176
      Gene372   20   49   25   52   26   41   54   52   51   82   68   59   54   92
      Gene373   27   24   14    8   20   19    6    8   34   15   13   15   10   15
      Gene374   14   20   41   38   51   40   20   29   25   32   12   29   32   27
      Gene375    7    9    8   14    7   23   10    2   15   13    6    2   11   17
      Gene376    .    2    7    2    7    7    2    4    2    8    5    1    1   17
      Gene377   25   34   33   33   41   45   26   36   49   27   13   21   24   42
      Gene378   13   28   17   22   33   13   12   17   15   24    3   16    6   12
      Gene379   12   22   22   28   18   43   44   39   97   58   47   26   25   32
      Gene380   32   21   17   30   16   24   18   20   38   22   13   17    9   33
      Gene381   71   44   37   80   70   86   58   87   93   58   78   49   47   65
      Gene382   21   44   26   16   23   69   39   61   58   58   68   82   59  124
      Gene383    .    .    .    .    .    1    .    .    .    .    .    .    1    .
      Gene384  214  190  188  154  201  110   99  138  151  194  191  191  194  279
      Gene385   33   60   24   50   60   67   38   53  143   58   45   85   75  105
      Gene386    4    5    6    4    7   16   16   12   11    5   16    4    7    8
      Gene387  115   55   72  114  119  118   88   84  105  116   99   80  103  118
      Gene388    4    6    5    1    1    3   12    1    2    1    2    2   18    6
      Gene389   40   43   34   53   40    9   30   19   21   21   32   21   24   18
      Gene390  102  114   78   99   94  107   54  115  156   91   82   61   98  167
      Gene391  230  204  258  159  254  243  266  275  311  281  232  202  173  390
      Gene392   42   34   66   72   60   64   64   72   86   74   69   61   48   90
      Gene393    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene394   19   13   15   15   21    9   11    9   25   16   23   37    8   17
      Gene395   14    9   13    8   16    7    2   16   11   14   10   14   12    6
      Gene396   31   30   54   34   39   13   18   24   20   23   17   14    8   12
      Gene397    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene398  121   58   99  108  103   65   25   61   58   71   58   73   78  104
      Gene399  333  352  313  328  302  252  155  197  272  277  190  297  203  456
      Gene400   28   35   43   40   24   27   17   32   44   29   29   42   32   84
      Gene401  419  601  432  425  448  293  258  281  394  438  317  295  283  488
      Gene402    7   12    6    9   19   24   18   15   38   20    3   10   16   16
      Gene403    .    .    2    .    5    1    .    .    1    .    7    2    1    3
      Gene404    5    .    6    .    3    1    3    1   11    6    .    7    9    7
      Gene405   24   37   16   22   32   39   30   41   43   65   22   30   42   71
      Gene406   50   30   23   44   40   34   31   42   67   23   18   33   24   23
      Gene407   38   20   13   42   17   98   83   59  102   46   49   39   41   93
      Gene408   45   81  117   88  105   59   48   24   56   40   72   76   66  161
      Gene409    .    .    .    .    1    .    .    .    1    .    .    .    .    .
      Gene410   19   26   34   29   10   10   25   36   23   30   16   24   21   43
      Gene411   28   27   17    9   21   23   29   43   46   43  102   65   51  129
      Gene412    .    1    2    .    .    .    .    2    2    1    .    2    5    2
      Gene413   78   70   37   78   55   45   42   33   58   38   75   57   64  119
      Gene414    2    9    7   13    5   13    6   11   11   16    7   12    8   16
      Gene415    .    .    .    1    .    .    .    3    .    .    1    .    1    .
      Gene416  132  136  115  111  147   41   36   35   41   88   73  102   44   94
      Gene417    2    1    2    9    5    2    2    .    2    5    .    1    .    2
      Gene418    .    4    .    .    1    4    9    2    2    1    6    3    1    5
      Gene419   25   26   33   27   44   38   31   36   55  108   18   42   28   52
      Gene420   30   33   37   28   36   21   28   25   43   52   10   17   41   56
      Gene421  112  144   81   85  149   41   62   68   77   47   45   71   57  107
      Gene422    .    .    .    1    .    2    .    1    .    1    1    1    .    .
      Gene423   48   44   36   65   80   58   68   55   80   44   39   55   95  108
      Gene424   72   88  121  164  107   86   77   68  137   96  134  180  187  151
      Gene425  316  409  295  322  304  140  140  226  227  165  147  144  180  310
      Gene426   44   63   49   40   52   58   46   74   55   46   32   39   24   39
      Gene427   56   60   42   57   52   42   58   57   78   43   47   44   36   70
      Gene428  251  171  176  272  227  141  127  137  209  108  265  378  274  509
      Gene429  196  195  210  257  283  186  166  228  283  217  148  238  146  269
      Gene430    8    4    3    .    3    7    .    2    3    3    3    7    2    3
      Gene431    7   20   12    7   25   24   23   18   39   23   15    9    9   23
      Gene432   13   11   14   11   16   30   27   35   59   36   15   22   33   49
      Gene433   84  158  112   72   54  139   79  102  167  116   63  150  124  185
      Gene434    3   10   11   11    5   12   10   10   11   20    2    2   12    9
      Gene435    6    6    2    4    .    8   21   26   16   19   13   17   23   13
      Gene436   65   77   76   81   66   73   70   86  102   75   62   64   42   95
      Gene437  238  227  241  293  269  307  126  266  320  407  361  515  440  528
      Gene438    .    .    .    .    .    .    .    .    2    .    .    .    .    2
      Gene439   18   11   29    7    2   12   13   35   40   31   14   17   11   18
      Gene440    .    .    .    .    .    .    .    .    .    .    .    .    .    1
      Gene441  325  337  295  242  424  317  247  312  340  289  323  309  273  445
      Gene442    .    4    .    1    .    2    .    1    3    3    2    .    .    .
      Gene443  212  158  120  164  211  164  232  174  279  189   94  168  146  211
      Gene444   15   30   29   35   24   25   29   24   27   41   23   22   24   39
      Gene445  236  318  454  310  389  467  354  651  698  616  330  297  360  515
      Gene446   13   10   12   10   21    7   18   40   43   25   17   19   22   19
      Gene447   83   40   30   67   59   38   29   37   28   28   41   33   35   62
      Gene448   65   38   55   37   41   43   47   42   53   59   45   46   27   85
      Gene449    2    2    4    1    4    3    8    2    1    4    .    1    5   13
      Gene450   54   66   72   47   64   75   60   75   94   59   72   74   80   88
      Gene451    1    .    .    .    2    1    1    .    1    .    .    1    1    .
      Gene452   79   88   80   92   98  116   73  115   82  104   63  143  123  207
      Gene453   41   54   43   44   43   45   23   26   33   63   36   20   15   23
      Gene454    .    .    .    .    2    .    .    .    .    1    .    .    .    2
      Gene455   13   20    7   21   19   33   13   28   24   19   22   30   15   24
      Gene456   10   15   11    7    6    3   12    6   16    2    5   10    8   20
      Gene457   11    9   14   27    9   12    2   16   18    2    3   12    5   16
      Gene458    .    2    .    .    1    .    4    .    .    3    .    .    1    .
      Gene459   31   52   21   25   68   54   18   17   26   28    5   30   51   17
      Gene460    3   10    1   11   18   23   16   15   11   20   11   21   11   30
      Gene461  117  140  114   96  170  115   82  144  164   90  136   90  118  253
      Gene462   47   56   60   91   80   70   57   69   85   94  149  116  145  180
      Gene463   61   94   85  112  123   26   23   48   46   53   47   79   51  115
      Gene464   30   24   30   43   42   19   24   31   60   41   21   29   13   36
      Gene465   17   30   10   24   22   15   20   29   15   24   18    4   37   52
      Gene466   34    1    7   18   16   21   17   18   15   26    8    9   33   28
      Gene467  251  230  282  187  209  194  223  261  252  247  180  219  179  358
      Gene468   63   68   46   50   90   70   90   52   81   75   73   53   61   79
      Gene469   92   87   48   83   74   30   81  108  137   95  147  173  134  204
      Gene470  238  396  425  344  380  387  376  562  670  452  660  700  591  996
      Gene471   25   45   32   33   54   19   41   29   64   50   23   34   30   67
      Gene472    1    .    1    2    3    4    2    .    .    .    5    1    1    4
      Gene473   51   38   65   42   69   37   52   60   59   48   15   33   43   54
      Gene474    5   14   11   10   15   16    3   18   20    9    7    8    6   12
      Gene475   22   53   30   29   22   51   54   34   55   24   35   47   66   66
      Gene476    4   14    4    1    8   12    3    4   10    .    5    5    4   14
      Gene477  339  483  451  427  453  390  292  471  525  508  166  317  199  359
      Gene478   58   69   52   43   67   51   60   85  112  129   59   74  109   71
      Gene479    6   12    5    5    .    3    2    6    6    8    4    7    4    7
      Gene480   64   78   72   81   75   47   28   36   58   25   59   72   20   52
      Gene481   59   40   45   48   50   73   35   49   66   56   95  141  126  181
      Gene482    8    9   10    7    8    .    7   18    7   14    5    4    6   19
      Gene483  183  195  132  198  193  100  114  206  126  133   87   67   81  154
      Gene484   44   35   39   46   62   34   29   68   59   33   42   34   36   74
      Gene485   23   17   10    7   17   27   29   23   31   32   24   37   18   56
      Gene486    .    .    .    .    .    .    .    .    .    .    .    .    .    .
      Gene487   49   24   26   41   32   28   40   36   55   30   17   35   16   23
      Gene488    .    .    .    .    .    .    .    .    .    .    1    .    .    .
      Gene489    2    .    4    8    4    2    1    1    6    2    1    3    2    3
      Gene490   57   98   80  117  112   61   94   83   59   68   69   91   68  123
      Gene491   71   87   69   53   67   71   84   64   78   55   45   51   43   83
      Gene492 1505 2203 1748 1689 2436 1844 1653 2092 2346 2472 1160 1470 1333 2315
      Gene493  112  110  109  141  168   89  118  132  212  167  109  105  147  145
      Gene494    .    .    1    .    .    .    .    .    1    .    .    .    .    .
      Gene495   40   65   48   35   39   48   26   22   35   42   47   64   57   70
      Gene496  109  105  108  122  103  147  164  121   85  105   74  103   65  172
      Gene497   14   14    3   13   22   17   11   18   39   17   11    9    5   14
      Gene498    .    .    .    .    .    .    .    .    .    .    .    1    .    .
      Gene499  231  312  227  224  282  223  289  251  429  378  579  757  694 1556
      Gene500    4   11    4   10   14    5    2    6    9    2    8    7    6   15
                  
      Gene1     63
      Gene2     69
      Gene3     56
      Gene4      5
      Gene5   1605
      Gene6     45
      Gene7     41
      Gene8      .
      Gene9     63
      Gene10    26
      Gene11     1
      Gene12   118
      Gene13     4
      Gene14   624
      Gene15    17
      Gene16     2
      Gene17    14
      Gene18    21
      Gene19    27
      Gene20    12
      Gene21     2
      Gene22   768
      Gene23     1
      Gene24     .
      Gene25     .
      Gene26    23
      Gene27   111
      Gene28  1018
      Gene29    82
      Gene30     9
      Gene31    98
      Gene32    64
      Gene33     .
      Gene34    40
      Gene35    61
      Gene36    92
      Gene37    36
      Gene38     2
      Gene39     9
      Gene40   323
      Gene41     .
      Gene42    33
      Gene43    17
      Gene44   193
      Gene45    48
      Gene46    68
      Gene47    65
      Gene48   121
      Gene49     .
      Gene50     5
      Gene51  1046
      Gene52    12
      Gene53  1093
      Gene54    36
      Gene55    86
      Gene56     3
      Gene57    24
      Gene58    34
      Gene59    18
      Gene60     9
      Gene61    97
      Gene62    20
      Gene63    23
      Gene64    90
      Gene65     4
      Gene66    13
      Gene67    47
      Gene68    17
      Gene69    11
      Gene70    10
      Gene71     7
      Gene72    75
      Gene73    39
      Gene74     4
      Gene75   115
      Gene76    34
      Gene77   404
      Gene78    40
      Gene79     3
      Gene80   141
      Gene81     4
      Gene82    68
      Gene83    62
      Gene84   184
      Gene85   120
      Gene86   131
      Gene87     9
      Gene88    16
      Gene89     4
      Gene90     5
      Gene91    78
      Gene92    10
      Gene93     .
      Gene94    44
      Gene95   263
      Gene96     5
      Gene97    87
      Gene98     2
      Gene99    85
      Gene100 2022
      Gene101  126
      Gene102  116
      Gene103    .
      Gene104    1
      Gene105   52
      Gene106   17
      Gene107  144
      Gene108   59
      Gene109    9
      Gene110 1729
      Gene111    1
      Gene112    .
      Gene113   27
      Gene114   16
      Gene115   33
      Gene116    9
      Gene117   58
      Gene118   19
      Gene119  212
      Gene120   33
      Gene121   17
      Gene122   90
      Gene123    7
      Gene124   40
      Gene125   37
      Gene126   15
      Gene127   65
      Gene128    7
      Gene129    3
      Gene130    7
      Gene131    1
      Gene132   87
      Gene133  160
      Gene134  116
      Gene135   51
      Gene136    .
      Gene137    1
      Gene138    .
      Gene139  128
      Gene140    .
      Gene141   19
      Gene142  240
      Gene143    4
      Gene144 1025
      Gene145    8
      Gene146   41
      Gene147   48
      Gene148   23
      Gene149 2045
      Gene150   55
      Gene151   17
      Gene152    2
      Gene153   29
      Gene154   29
      Gene155    7
      Gene156    .
      Gene157   20
      Gene158   37
      Gene159    1
      Gene160   29
      Gene161   89
      Gene162    4
      Gene163   85
      Gene164   24
      Gene165   63
      Gene166    .
      Gene167    1
      Gene168    2
      Gene169   14
      Gene170   34
      Gene171   31
      Gene172 1116
      Gene173  166
      Gene174  273
      Gene175   41
      Gene176   78
      Gene177   12
      Gene178  931
      Gene179  158
      Gene180   24
      Gene181   60
      Gene182   17
      Gene183   41
      Gene184    1
      Gene185  123
      Gene186   95
      Gene187  292
      Gene188    6
      Gene189    9
      Gene190  440
      Gene191   45
      Gene192   12
      Gene193  145
      Gene194   14
      Gene195    .
      Gene196   36
      Gene197   24
      Gene198   25
      Gene199   12
      Gene200  330
      Gene201    4
      Gene202    9
      Gene203   64
      Gene204   27
      Gene205    .
      Gene206    .
      Gene207   13
      Gene208   33
      Gene209    1
      Gene210   17
      Gene211   90
      Gene212   24
      Gene213  148
      Gene214   22
      Gene215    9
      Gene216    1
      Gene217   40
      Gene218   57
      Gene219   76
      Gene220   47
      Gene221   52
      Gene222  334
      Gene223    1
      Gene224   10
      Gene225   18
      Gene226    7
      Gene227    1
      Gene228    1
      Gene229   33
      Gene230 1855
      Gene231   29
      Gene232   30
      Gene233   64
      Gene234   35
      Gene235   24
      Gene236   53
      Gene237    9
      Gene238   32
      Gene239   19
      Gene240   16
      Gene241   85
      Gene242  558
      Gene243   96
      Gene244   28
      Gene245   50
      Gene246   63
      Gene247    6
      Gene248  211
      Gene249 2178
      Gene250   22
      Gene251    .
      Gene252    3
      Gene253   66
      Gene254    3
      Gene255   21
      Gene256   20
      Gene257    .
      Gene258    8
      Gene259    .
      Gene260  125
      Gene261    7
      Gene262  134
      Gene263   43
      Gene264   59
      Gene265   11
      Gene266  113
      Gene267   36
      Gene268 1966
      Gene269   24
      Gene270   88
      Gene271   24
      Gene272    8
      Gene273   41
      Gene274   76
      Gene275   39
      Gene276   60
      Gene277   62
      Gene278  102
      Gene279   10
      Gene280   58
      Gene281    5
      Gene282    9
      Gene283  487
      Gene284   85
      Gene285   27
      Gene286   16
      Gene287   27
      Gene288   41
      Gene289   24
      Gene290 1541
      Gene291   14
      Gene292   45
      Gene293   32
      Gene294   22
      Gene295    1
      Gene296   95
      Gene297  154
      Gene298  250
      Gene299    4
      Gene300    4
      Gene301    8
      Gene302   19
      Gene303 2829
      Gene304  113
      Gene305   12
      Gene306  762
      Gene307    .
      Gene308    .
      Gene309   73
      Gene310    2
      Gene311    .
      Gene312  469
      Gene313   92
      Gene314   44
      Gene315    .
      Gene316  120
      Gene317  127
      Gene318    8
      Gene319   32
      Gene320   17
      Gene321    .
      Gene322    4
      Gene323   39
      Gene324  170
      Gene325  112
      Gene326   11
      Gene327   36
      Gene328   88
      Gene329   35
      Gene330    1
      Gene331   24
      Gene332  168
      Gene333    1
      Gene334   73
      Gene335    .
      Gene336   14
      Gene337    5
      Gene338   55
      Gene339  223
      Gene340   10
      Gene341  112
      Gene342  113
      Gene343  148
      Gene344   27
      Gene345   70
      Gene346   39
      Gene347   20
      Gene348  257
      Gene349   81
      Gene350   95
      Gene351    .
      Gene352    5
      Gene353   76
      Gene354   85
      Gene355   12
      Gene356   42
      Gene357 1185
      Gene358   13
      Gene359  132
      Gene360    8
      Gene361 1019
      Gene362  121
      Gene363   43
      Gene364    .
      Gene365   28
      Gene366   23
      Gene367   10
      Gene368    1
      Gene369   29
      Gene370    5
      Gene371  127
      Gene372   44
      Gene373    2
      Gene374   23
      Gene375    5
      Gene376    .
      Gene377   34
      Gene378    4
      Gene379   39
      Gene380    4
      Gene381   55
      Gene382   68
      Gene383    .
      Gene384  170
      Gene385   61
      Gene386    6
      Gene387   78
      Gene388    6
      Gene389   16
      Gene390  133
      Gene391  230
      Gene392   35
      Gene393    .
      Gene394   20
      Gene395    9
      Gene396    3
      Gene397    .
      Gene398   66
      Gene399  184
      Gene400   45
      Gene401  274
      Gene402    8
      Gene403    .
      Gene404    1
      Gene405   54
      Gene406   15
      Gene407   51
      Gene408   83
      Gene409    .
      Gene410   35
      Gene411   91
      Gene412    1
      Gene413   67
      Gene414   15
      Gene415    .
      Gene416   61
      Gene417    .
      Gene418   12
      Gene419   38
      Gene420   33
      Gene421   75
      Gene422    2
      Gene423   66
      Gene424  166
      Gene425  176
      Gene426   28
      Gene427   59
      Gene428  322
      Gene429  212
      Gene430    2
      Gene431    7
      Gene432   21
      Gene433  106
      Gene434    3
      Gene435   15
      Gene436   82
      Gene437  481
      Gene438    .
      Gene439   14
      Gene440    1
      Gene441  325
      Gene442    .
      Gene443  195
      Gene444   49
      Gene445  270
      Gene446   12
      Gene447   52
      Gene448   58
      Gene449    6
      Gene450   66
      Gene451    .
      Gene452  107
      Gene453   17
      Gene454    .
      Gene455   47
      Gene456    7
      Gene457    7
      Gene458    .
      Gene459   13
      Gene460   11
      Gene461  166
      Gene462   97
      Gene463   68
      Gene464   35
      Gene465   18
      Gene466   10
      Gene467  250
      Gene468   98
      Gene469  110
      Gene470  599
      Gene471   18
      Gene472    1
      Gene473   35
      Gene474   10
      Gene475   33
      Gene476    5
      Gene477  177
      Gene478   44
      Gene479    1
      Gene480   98
      Gene481  163
      Gene482    6
      Gene483   84
      Gene484   36
      Gene485   35
      Gene486    .
      Gene487   42
      Gene488    .
      Gene489    .
      Gene490   47
      Gene491   66
      Gene492 1299
      Gene493  161
      Gene494    .
      Gene495   51
      Gene496   84
      Gene497    5
      Gene498    .
      Gene499  741
      Gene500    4
      
      Slot "nUMI":
      Cell36 Cell58 Cell76 Cell11  Cell9 Cell21 Cell47 Cell46 Cell27 Cell29 Cell89 
       56530  61727  57476  59202  61968  61614  55109  64339  83520  69277  52000 
      Cell71 Cell75  Cell5  Cell1 
       62163  55284  90866  57271 
      
      
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
      Gene1   8.232427e-04 7.376617e-04 9.018749e-04
      Gene2   1.827416e-03 1.451161e-03 1.149190e-03
      Gene3   1.136846e-03 1.170399e-03 1.104216e-03
      Gene4   2.159853e-04 8.357526e-05 1.135522e-04
      Gene5   2.128894e-02 1.952879e-02 3.188662e-02
      Gene6   8.800726e-04 8.094003e-04 6.325076e-04
      Gene7   9.198140e-04 8.676822e-04 8.892241e-04
      Gene8   9.186957e-06 1.849943e-06 4.023853e-06
      Gene9   4.552219e-04 8.223913e-04 8.397253e-04
      Gene10  1.654861e-04 2.571628e-04 2.613547e-04
      Gene11  3.052547e-05 2.281847e-05 3.141366e-05
      Gene12  1.891926e-03 3.640127e-03 2.384176e-03
      Gene13  1.440816e-04 1.323064e-04 1.745551e-04
      Gene14  2.201977e-02 1.943229e-02 1.098658e-02
      Gene15  7.867390e-05 1.809778e-04 2.317216e-04
      Gene16  1.144011e-04 9.382527e-05 9.022671e-05
      Gene17  4.175520e-04 2.749523e-04 3.452274e-04
      Gene18  2.460501e-04 4.190376e-04 5.118255e-04
      Gene19  5.316406e-04 5.325967e-04 5.883466e-04
      Gene20  2.683836e-04 2.336205e-04 2.480833e-04
      Gene21  8.616854e-05 6.025547e-05 8.613587e-05
      Gene22  1.924863e-02 2.555990e-02 2.067610e-02
      Gene23  1.388444e-04 1.018391e-04 8.510480e-05
      Gene24  1.315545e-05 4.656232e-06 1.628272e-06
      Gene25  1.727226e-05 2.200423e-05 1.955161e-05
      Gene26  6.482131e-04 5.712982e-04 6.035078e-04
      Gene27  3.643424e-03 1.689788e-03 1.603023e-03
      Gene28  9.729157e-03 2.219670e-02 1.935483e-02
      Gene29  9.908587e-04 9.338582e-04 1.300322e-03
      Gene30  1.250854e-04 1.079282e-04 1.069162e-04
      Gene31  1.640062e-03 1.634750e-03 1.695054e-03
      Gene32  9.032982e-04 5.705761e-04 7.518749e-04
      Gene33  4.966358e-07 5.410026e-07 1.303850e-06
      Gene34  1.012109e-03 1.230139e-03 9.379728e-04
      Gene35  6.312769e-04 1.056922e-03 9.256642e-04
      Gene36  1.944061e-03 1.840611e-03 1.895275e-03
      Gene37  3.043893e-04 6.494186e-04 2.536695e-04
      Gene38  2.224896e-04 9.679555e-05 1.404937e-04
      Gene39  3.497101e-04 3.179690e-04 2.966182e-04
      Gene40  3.792283e-03 5.815271e-03 7.639183e-03
      Gene41  2.968803e-05 4.226754e-05 3.918160e-05
      Gene42  4.165573e-04 3.914937e-04 3.973691e-04
      Gene43  7.029873e-04 1.138226e-03 5.807838e-04
      Gene44  3.514800e-03 3.315450e-03 3.217874e-03
      Gene45  1.189805e-03 1.441079e-03 1.191296e-03
      Gene46  1.267800e-03 1.205464e-03 7.394508e-04
      Gene47  1.407652e-03 3.422776e-03 1.323416e-03
      Gene48  2.502765e-03 2.175066e-03 2.266562e-03
      Gene49  2.759848e-05 2.341900e-05 2.251078e-05
      Gene50  1.744258e-04 1.457685e-04 2.053426e-04
      Gene51  1.878933e-02 1.680451e-02 1.690484e-02
      Gene52  5.828618e-04 4.786646e-04 2.263333e-04
      Gene53  1.495202e-02 1.388578e-02 1.715935e-02
      Gene54  4.991763e-04 4.204108e-04 4.886811e-04
      Gene55  1.507236e-03 1.526210e-03 1.458903e-03
      Gene56  2.035300e-05 8.721825e-06 1.770810e-05
      Gene57  3.494686e-04 2.855833e-04 3.322064e-04
      Gene58  5.854827e-04 4.726302e-04 5.022027e-04
      Gene59  7.991284e-04 7.708651e-04 4.544811e-04
      Gene60  1.102417e-04 1.069665e-04 8.639275e-05
      Gene61  8.560666e-04 7.652480e-04 1.678176e-03
      Gene62  4.081528e-04 3.366232e-04 4.508322e-04
      Gene63  3.255879e-04 3.724361e-04 2.670007e-04
      Gene64  1.907783e-03 1.797901e-03 1.911718e-03
      Gene65  7.234960e-05 5.263246e-05 7.136423e-05
      Gene66  2.583266e-04 1.011286e-04 1.981619e-04
      Gene67  3.272459e-04 1.500263e-04 3.467639e-04
      Gene68  3.865214e-04 2.939733e-04 3.456062e-04
      Gene69  8.864104e-05 5.443440e-05 1.667081e-04
      Gene70  2.067481e-04 1.875694e-04 1.718049e-04
      Gene71  7.026354e-05 1.921823e-04 1.936873e-04
      Gene72  2.034161e-03 1.922043e-03 1.983925e-03
      Gene73  2.186723e-03 1.447185e-03 1.102418e-03
      Gene74  1.016577e-04 1.015712e-04 1.463228e-04
      Gene75  1.939115e-03 1.789160e-03 1.393333e-03
      Gene76  9.904382e-04 4.467612e-04 4.816636e-04
      Gene77  5.628343e-03 5.319886e-03 5.751926e-03
      Gene78  5.471230e-04 5.944963e-04 5.987701e-04
      Gene79  1.407696e-04 1.146403e-04 9.384822e-05
      Gene80  2.995505e-03 2.378420e-03 2.464726e-03
      Gene81  3.798413e-04 3.291439e-04 1.677360e-04
      Gene82  1.730677e-03 1.429410e-03 1.444686e-03
      Gene83  1.153245e-03 1.622874e-03 1.276867e-03
      Gene84  3.782810e-03 3.724650e-03 3.215312e-03
      Gene85  3.089477e-03 2.611719e-03 1.882615e-03
      Gene86  2.466443e-03 2.266777e-03 2.351683e-03
      Gene87  1.702227e-04 4.308629e-04 9.944574e-05
      Gene88  1.910549e-04 1.691502e-04 1.783277e-04
      Gene89  1.041206e-04 1.145858e-04 8.905435e-05
      Gene90  4.151016e-04 2.224175e-04 2.187457e-04
      Gene91  2.056036e-03 1.598398e-03 1.691333e-03
      Gene92  2.427870e-04 2.327351e-04 2.630537e-04
      Gene93  4.968036e-07 0.000000e+00 3.103745e-06
      Gene94  7.905113e-04 7.670216e-04 8.250417e-04
      Gene95  3.286793e-03 3.361958e-03 4.180578e-03
      Gene96  1.210452e-04 1.443185e-04 1.206259e-04
      Gene97  1.746604e-03 1.634892e-03 1.816315e-03
      Gene98  6.709644e-06 5.417655e-06 9.053705e-06
      Gene99  1.381704e-03 1.271924e-03 1.642853e-03
      Gene100 3.259757e-02 5.939689e-02 3.206061e-02
      Gene101 3.520313e-03 3.277215e-03 3.486563e-03
      Gene102 4.007658e-03 2.618543e-03 3.876311e-03
      Gene103 8.786555e-07 4.827769e-07 3.743726e-07
      Gene104 2.449194e-05 1.910744e-05 3.867254e-05
      Gene105 8.141267e-04 4.088489e-04 8.118392e-04
      Gene106 1.005016e-04 7.023066e-05 1.436367e-04
      Gene107 2.902602e-03 1.672289e-03 2.623200e-03
      Gene108 5.731824e-04 5.320945e-04 7.997177e-04
      Gene109 3.177987e-05 5.391219e-05 5.160050e-05
      Gene110 3.649338e-02 3.395352e-02 3.638581e-02
      Gene111 2.221584e-05 4.769722e-05 3.892535e-05
      Gene112 3.436452e-06 9.011225e-06 8.143634e-06
      Gene113 3.756122e-04 3.251154e-04 4.036802e-04
      Gene114 3.005295e-04 2.596306e-04 2.670329e-04
      Gene115 6.916985e-04 5.846131e-04 5.505380e-04
      Gene116 1.020744e-04 9.389860e-05 1.254568e-04
      Gene117 3.716267e-04 9.624157e-04 8.652908e-04
      Gene118 5.712565e-04 5.153656e-04 4.635382e-04
      Gene119 2.944348e-03 3.185547e-03 2.563811e-03
      Gene120 2.861935e-04 2.734792e-04 5.679367e-04
      Gene121 6.830837e-04 3.763411e-04 4.096001e-04
      Gene122 1.599096e-03 1.297934e-03 1.476944e-03
      Gene123 2.253855e-04 2.565631e-04 2.187531e-04
      Gene124 7.300201e-04 5.620678e-04 5.861104e-04
      Gene125 6.144065e-04 9.480111e-04 9.138225e-04
      Gene126 1.175385e-04 1.182726e-04 1.657132e-04
      Gene127 1.012375e-03 9.849369e-04 1.269066e-03
      Gene128 1.243796e-04 1.282180e-04 1.237377e-04
      Gene129 1.036930e-04 6.999316e-05 9.894087e-05
      Gene130 2.420046e-04 2.411766e-04 7.657181e-05
      Gene131 2.058234e-05 2.347718e-05 3.024115e-05
      Gene132 1.468654e-03 1.448759e-03 1.389469e-03
      Gene133 2.951277e-03 2.527825e-03 2.631587e-03
      Gene134 1.897856e-03 1.823842e-03 2.528051e-03
      Gene135 9.071537e-04 8.736739e-04 7.745330e-04
      Gene136 6.143035e-06 4.209325e-06 4.646837e-06
      Gene137 8.605872e-06 1.428240e-05 1.244727e-05
      Gene138 9.914497e-05 7.265429e-05 9.355433e-05
      Gene139 2.005623e-03 1.735785e-03 1.861545e-03
      Gene140 0.000000e+00 4.161361e-07 0.000000e+00
      Gene141 5.416044e-04 3.673756e-04 4.578656e-04
      Gene142 4.309919e-03 3.770391e-03 4.310337e-03
      Gene143 1.975234e-04 1.238054e-04 1.692645e-04
      Gene144 2.324839e-02 2.057226e-02 1.481353e-02
      Gene145 1.318529e-04 1.010894e-04 9.320320e-05
      Gene146 8.644490e-04 1.021480e-03 9.325755e-04
      Gene147 6.950670e-04 5.547867e-04 6.691970e-04
      Gene148 3.387467e-04 3.231005e-04 3.043244e-04
      Gene149 2.503825e-02 3.509395e-02 3.548513e-02
      Gene150 7.985271e-04 8.101233e-04 9.265319e-04
      Gene151 3.345108e-04 2.540966e-04 3.676332e-04
      Gene152 6.188156e-05 4.734769e-05 5.348022e-05
      Gene153 1.371648e-03 1.274678e-03 8.280745e-04
      Gene154 4.824673e-04 5.033484e-04 6.863372e-04
      Gene155 1.259810e-04 9.779422e-05 1.358893e-04
      Gene156 3.441396e-05 2.433398e-05 2.139318e-05
      Gene157 6.912753e-04 4.133554e-04 4.592446e-04
      Gene158 5.941816e-04 5.225723e-04 5.509216e-04
      Gene159 4.447980e-06 2.615320e-06 1.653887e-06
      Gene160 3.847993e-04 4.118699e-04 5.628360e-04
      Gene161 7.734673e-04 1.241044e-03 1.527910e-03
      Gene162 2.629060e-05 2.521971e-05 3.700229e-05
      Gene163 1.143850e-03 1.094109e-03 1.314945e-03
      Gene164 2.213965e-04 3.543643e-04 3.976022e-04
      Gene165 1.470891e-03 1.279178e-03 1.360962e-03
      Gene166 6.118153e-05 7.143562e-05 3.491370e-05
      Gene167 6.285117e-05 6.185237e-05 6.460037e-05
      Gene168 4.157847e-05 6.627749e-05 4.454955e-05
      Gene169 9.569171e-05 2.488431e-04 1.532700e-04
      Gene170 5.586044e-04 3.388352e-04 4.462478e-04
      Gene171 7.857468e-04 1.572271e-03 8.039829e-04
      Gene172 2.314663e-02 2.169099e-02 2.345716e-02
      Gene173 3.757424e-03 3.782678e-03 2.889613e-03
      Gene174 5.045887e-03 4.062377e-03 4.545746e-03
      Gene175 4.908518e-04 4.666512e-04 7.572703e-04
      Gene176 1.186824e-03 1.140378e-03 1.349825e-03
      Gene177 2.355581e-04 1.335603e-04 2.837700e-04
      Gene178 2.173919e-02 2.124691e-02 2.055262e-02
      Gene179 4.590663e-03 4.695610e-03 2.298100e-03
      Gene180 4.304722e-04 3.936573e-04 4.473112e-04
      Gene181 4.051835e-04 7.512607e-04 8.326915e-04
      Gene182 1.055752e-04 1.226644e-04 2.873370e-04
      Gene183 1.071363e-03 1.045476e-03 6.660055e-04
      Gene184 7.607447e-06 9.463345e-06 7.410740e-06
      Gene185 2.613635e-03 3.072632e-03 1.822532e-03
      Gene186 1.553868e-03 1.474395e-03 1.527616e-03
      Gene187 3.959648e-03 3.900820e-03 4.539215e-03
      Gene188 8.015154e-05 7.318699e-05 7.778710e-05
      Gene189 7.421203e-05 7.237965e-05 8.461144e-05
      Gene190 1.008216e-02 6.276481e-03 9.824218e-03
      Gene191 7.291019e-04 4.400035e-04 7.094795e-04
      Gene192 1.576268e-04 1.340556e-04 1.379388e-04
      Gene193 1.931504e-03 1.710851e-03 1.926092e-03
      Gene194 5.124401e-04 4.691271e-04 3.148583e-04
      Gene195 9.321549e-06 8.648702e-06 2.036125e-06
      Gene196 6.472492e-04 7.445753e-04 5.887365e-04
      Gene197 3.467803e-04 2.818000e-04 4.860870e-04
      Gene198 4.729234e-04 3.061780e-04 3.283009e-04
      Gene199 2.790144e-04 1.865484e-04 2.225423e-04
      Gene200 1.380324e-03 1.288016e-03 5.255569e-03
      Gene201 6.669153e-05 5.855352e-05 7.218978e-05
      Gene202 7.815705e-05 6.809816e-05 9.686592e-05
      Gene203 8.115539e-04 7.997383e-04 9.130369e-04
      Gene204 6.628366e-04 9.353301e-04 5.995705e-04
      Gene205 0.000000e+00 0.000000e+00 0.000000e+00
      Gene206 0.000000e+00 0.000000e+00 0.000000e+00
      Gene207 1.972487e-04 1.483694e-04 2.055129e-04
      Gene208 1.549522e-04 1.851531e-04 5.100304e-04
      Gene209 1.058485e-05 1.832685e-05 1.639597e-05
      Gene210 2.902733e-04 2.815017e-04 2.515579e-04
      Gene211 2.266579e-03 2.066130e-03 1.915894e-03
      Gene212 2.538386e-04 1.817529e-04 2.405179e-04
      Gene213 1.946157e-03 1.224497e-03 2.845652e-03
      Gene214 4.942464e-04 4.162427e-04 4.292299e-04
      Gene215 2.603717e-04 2.225310e-04 1.409552e-04
      Gene216 1.687458e-05 1.870750e-05 1.298314e-05
      Gene217 7.126058e-04 5.033829e-04 5.734875e-04
      Gene218 1.200524e-03 1.171182e-03 1.140010e-03
      Gene219 4.253668e-04 3.807258e-04 1.438731e-03
      Gene220 6.537885e-04 4.487688e-04 5.241297e-04
      Gene221 8.799071e-04 8.363168e-04 8.982099e-04
      Gene222 7.660639e-03 1.123430e-02 7.652405e-03
      Gene223 4.159565e-05 3.571775e-05 2.912780e-05
      Gene224 1.358695e-04 7.357565e-05 1.073588e-04
      Gene225 2.591902e-04 2.088857e-04 2.751702e-04
      Gene226 6.111878e-05 8.491037e-05 8.520272e-05
      Gene227 1.414294e-05 2.325848e-05 2.941920e-05
      Gene228 1.811519e-05 1.084044e-05 2.777407e-05
      Gene229 3.836598e-04 2.837863e-04 4.972306e-04
      Gene230 4.569255e-02 3.671536e-02 2.969422e-02
      Gene231 3.502084e-04 3.848203e-04 5.948002e-04
      Gene232 7.240208e-04 6.138153e-04 6.735755e-04
      Gene233 7.375196e-04 1.012571e-03 9.797213e-04
      Gene234 5.720960e-04 9.278037e-04 6.161434e-04
      Gene235 6.041879e-04 5.378473e-04 6.061476e-04
      Gene236 1.026413e-03 1.028883e-03 8.349723e-04
      Gene237 7.293404e-05 6.985679e-05 1.034439e-04
      Gene238 5.819318e-04 5.955974e-04 6.124183e-04
      Gene239 2.661483e-04 2.348993e-04 2.617326e-04
      Gene240 2.461069e-04 5.136249e-04 2.505974e-04
      Gene241 1.074558e-03 1.132880e-03 1.286675e-03
      Gene242 6.266247e-03 5.987969e-03 6.231922e-03
      Gene243 1.841011e-03 3.263910e-03 1.936378e-03
      Gene244 4.641402e-04 4.254406e-04 3.712426e-04
      Gene245 9.143192e-04 6.908331e-04 8.171617e-04
      Gene246 9.974029e-04 9.663803e-04 1.101528e-03
      Gene247 8.590682e-05 9.537942e-05 8.200078e-05
      Gene248 1.539153e-03 2.028507e-03 2.893337e-03
      Gene249 3.961048e-02 3.845710e-02 3.853038e-02
      Gene250 2.455270e-04 1.444117e-04 2.075615e-04
      Gene251 3.096669e-05 4.523999e-05 4.769803e-05
      Gene252 2.543074e-04 2.270344e-04 2.116287e-04
      Gene253 6.235849e-04 9.855777e-04 9.814536e-04
      Gene254 1.179153e-04 1.042970e-04 9.100902e-05
      Gene255 3.434994e-04 3.371947e-04 3.206295e-04
      Gene256 3.087214e-04 2.867301e-04 2.449270e-04
      Gene257 1.455810e-05 1.838890e-05 1.563580e-05
      Gene258 3.258827e-04 3.712151e-04 3.354098e-04
      Gene259 9.191504e-06 2.299949e-06 2.186648e-06
      Gene260 2.605824e-03 2.390673e-03 1.768544e-03
      Gene261 2.439648e-04 3.177283e-04 2.064424e-04
      Gene262 1.978992e-03 1.738065e-03 1.699696e-03
      Gene263 5.680887e-04 5.625870e-04 5.200796e-04
      Gene264 1.264356e-03 1.816337e-03 7.986579e-04
      Gene265 2.909489e-04 2.027331e-04 2.600434e-04
      Gene266 2.414569e-03 2.154098e-03 2.326304e-03
      Gene267 1.175787e-03 7.284513e-04 7.018065e-04
      Gene268 2.744909e-02 3.423821e-02 3.549104e-02
      Gene269 2.746356e-04 5.683131e-04 5.765961e-04
      Gene270 5.861230e-04 1.062040e-03 7.378855e-04
      Gene271 3.388919e-04 5.459382e-04 6.087220e-04
      Gene272 1.619292e-04 1.137076e-04 1.719724e-04
      Gene273 6.121816e-04 8.540521e-04 9.042137e-04
      Gene274 1.830164e-03 7.694620e-04 9.159665e-04
      Gene275 4.284509e-04 4.100447e-04 1.248931e-03
      Gene276 3.453202e-04 3.437959e-04 5.602418e-04
      Gene277 5.014260e-04 6.602240e-04 7.290467e-04
      Gene278 2.038501e-03 1.848554e-03 1.908676e-03
      Gene279 1.181106e-04 1.206986e-04 9.455852e-05
      Gene280 8.847008e-04 8.969657e-04 9.030922e-04
      Gene281 1.269118e-04 1.016549e-04 1.089034e-04
      Gene282 2.362279e-04 2.485649e-04 1.711741e-04
      Gene283 6.313034e-03 1.099357e-02 7.807808e-03
      Gene284 9.229259e-04 8.369660e-04 1.593152e-03
      Gene285 3.905016e-04 3.404416e-04 4.036483e-04
      Gene286 4.078259e-04 7.961181e-04 4.206215e-04
      Gene287 1.935025e-04 4.145707e-04 3.215319e-04
      Gene288 8.509449e-04 8.310190e-04 7.939409e-04
      Gene289 2.164112e-04 4.123118e-04 3.816429e-04
      Gene290 2.926996e-02 2.753134e-02 2.767766e-02
      Gene291 1.510778e-04 1.526164e-04 1.586882e-04
      Gene292 1.064654e-03 1.006164e-03 1.005900e-03
      Gene293 5.996913e-04 7.033803e-04 6.035478e-04
      Gene294 1.799330e-04 1.624701e-04 1.746792e-04
      Gene295 5.058599e-05 7.795870e-05 4.452273e-05
      Gene296 1.958000e-03 1.157504e-03 1.848241e-03
      Gene297 2.425006e-03 2.270737e-03 2.314018e-03
      Gene298 4.940595e-03 4.404999e-03 4.249676e-03
      Gene299 2.774329e-05 4.172127e-05 4.561313e-05
      Gene300 7.323358e-05 5.957980e-05 6.948992e-05
      Gene301 2.682134e-04 2.611344e-04 2.269056e-04
      Gene302 3.605643e-04 3.890953e-04 4.644662e-04
      Gene303 4.840337e-02 3.971802e-02 3.899962e-02
      Gene304 2.609986e-03 2.577019e-03 2.223515e-03
      Gene305 2.119035e-04 4.319766e-04 3.125417e-04
      Gene306 1.305258e-02 1.059528e-02 1.228605e-02
      Gene307 0.000000e+00 2.733755e-06 5.276076e-07
      Gene308 9.350709e-06 3.341251e-06 1.046310e-05
      Gene309 1.211030e-03 1.611744e-03 1.065836e-03
      Gene310 1.995714e-05 2.373388e-05 3.368193e-05
      Gene311 9.050505e-05 7.154325e-05 5.312002e-05
      Gene312 6.064471e-03 5.324321e-03 6.099502e-03
      Gene313 5.897381e-04 9.273255e-04 1.499840e-03
      Gene314 6.332584e-04 6.248605e-04 4.189579e-04
      Gene315 3.273277e-05 2.968043e-05 1.962493e-05
      Gene316 2.017640e-03 1.848042e-03 2.553668e-03
      Gene317 1.794766e-03 1.244423e-03 1.713285e-03
      Gene318 7.256400e-05 1.976132e-04 2.060954e-04
      Gene319 5.402520e-04 5.701713e-04 4.968843e-04
      Gene320 3.428826e-04 3.167050e-04 3.226369e-04
      Gene321 8.339634e-06 6.772339e-06 7.268514e-06
      Gene322 2.948735e-04 4.479503e-04 1.797811e-04
      Gene323 8.885165e-04 8.201493e-04 9.172530e-04
      Gene324 1.787578e-03 1.587019e-03 3.483789e-03
      Gene325 1.656008e-03 1.566688e-03 1.576359e-03
      Gene326 4.841162e-04 4.679600e-04 2.090964e-04
      Gene327 2.062079e-04 2.017798e-04 4.898215e-04
      Gene328 2.087348e-03 1.927792e-03 1.473551e-03
      Gene329 3.791348e-04 5.779751e-04 5.157609e-04
      Gene330 9.358086e-06 2.241369e-05 1.568506e-05
      Gene331 4.564601e-04 3.731606e-04 3.895915e-04
      Gene332 4.165207e-03 3.911162e-03 4.094789e-03
      Gene333 1.067601e-04 3.005055e-05 3.462046e-05
      Gene334 1.069888e-03 1.008499e-03 1.153231e-03
      Gene335 2.441664e-05 1.781281e-05 1.481929e-05
      Gene336 2.400893e-04 1.925478e-04 3.327382e-04
      Gene337 2.414860e-04 1.650270e-04 2.099031e-04
      Gene338 6.577224e-04 6.093014e-04 9.400312e-04
      Gene339 1.358672e-03 1.492368e-03 2.847103e-03
      Gene340 2.775507e-04 2.547158e-04 2.400622e-04
      Gene341 2.306924e-03 2.329983e-03 2.671847e-03
      Gene342 1.732415e-03 1.870281e-03 1.863692e-03
      Gene343 1.025466e-03 6.647113e-04 2.491054e-03
      Gene344 4.150821e-04 3.260850e-04 3.925372e-04
      Gene345 6.818479e-04 1.811530e-03 1.448261e-03
      Gene346 6.564197e-04 9.479305e-04 8.454875e-04
      Gene347 3.380624e-04 3.059385e-04 3.139967e-04
      Gene348 3.239217e-03 1.694423e-03 4.116329e-03
      Gene349 1.941303e-03 1.877133e-03 1.800642e-03
      Gene350 1.451372e-03 1.338452e-03 1.494855e-03
      Gene351 2.462673e-05 3.629009e-05 2.457709e-05
      Gene352 1.529137e-04 1.598079e-04 1.023198e-04
      Gene353 1.833987e-03 1.204286e-03 1.411149e-03
      Gene354 1.225573e-03 1.223076e-03 1.235131e-03
      Gene355 2.388923e-04 2.202083e-04 2.434161e-04
      Gene356 4.104628e-04 3.724718e-04 4.116277e-04
      Gene357 2.032376e-02 1.901653e-02 1.999797e-02
      Gene358 1.513682e-04 8.764205e-05 1.311340e-04
      Gene359 2.858242e-03 4.106655e-03 2.725043e-03
      Gene360 3.511397e-04 6.082622e-04 2.800668e-04
      Gene361 1.301235e-02 1.232961e-02 1.777756e-02
      Gene362 2.343469e-03 4.094011e-03 1.928390e-03
      Gene363 1.004854e-03 1.049604e-03 9.999983e-04
      Gene364 0.000000e+00 1.018942e-06 5.571391e-07
      Gene365 4.036434e-04 4.772977e-04 4.147865e-04
      Gene366 2.596333e-04 3.041582e-04 3.860023e-04
      Gene367 1.481313e-04 1.086874e-04 7.613801e-05
      Gene368 1.469943e-05 9.619064e-06 8.965208e-06
      Gene369 4.518400e-04 4.570284e-04 4.215567e-04
      Gene370 1.409506e-04 7.828135e-05 1.055370e-04
      Gene371 2.405672e-03 2.502421e-03 2.260492e-03
      Gene372 5.766826e-04 7.353898e-04 9.162629e-04
      Gene373 2.476156e-04 2.140606e-04 1.654533e-04
      Gene374 5.564400e-04 4.466525e-04 4.948478e-04
      Gene375 1.949598e-04 1.684216e-04 1.493501e-04
      Gene376 5.684046e-05 5.641401e-05 9.013916e-05
      Gene377 4.963070e-04 5.209401e-04 5.185197e-04
      Gene378 3.120380e-04 2.619562e-04 1.663212e-04
      Gene379 4.047996e-04 7.463453e-04 4.015114e-04
      Gene380 4.260809e-04 3.235747e-04 3.275602e-04
      Gene381 1.049349e-03 1.000013e-03 9.420008e-04
      Gene382 5.047521e-04 7.135559e-04 1.268948e-03
      Gene383 0.000000e+00 1.319219e-06 1.126264e-06
      Gene384 3.026267e-03 2.220287e-03 3.157008e-03
      Gene385 6.645828e-04 1.016859e-03 1.091324e-03
      Gene386 1.013911e-04 1.242479e-04 1.270685e-04
      Gene387 1.724064e-03 1.491949e-03 1.495604e-03
      Gene388 4.809265e-05 6.375472e-05 6.610110e-05
      Gene389 5.959299e-04 2.763641e-04 2.398133e-04
      Gene390 1.497257e-03 1.349178e-03 1.430116e-03
      Gene391 3.985572e-03 3.767298e-03 4.022881e-03
      Gene392 1.028077e-03 1.065835e-03 1.021572e-03
      Gene393 0.000000e+00 0.000000e+00 1.372168e-06
      Gene394 2.996940e-04 2.119613e-04 3.778624e-04
      Gene395 1.943519e-04 2.065904e-04 1.674749e-04
      Gene396 6.470190e-04 2.934339e-04 2.459039e-04
      Gene397 0.000000e+00 0.000000e+00 0.000000e+00
      Gene398 1.343699e-03 8.909250e-04 1.227290e-03
      Gene399 5.705061e-03 3.662850e-03 3.997426e-03
      Gene400 5.575024e-04 4.256986e-04 6.481641e-04
      Gene401 7.995379e-03 4.697998e-03 5.035645e-03
      Gene402 2.237414e-04 2.592369e-04 2.189288e-04
      Gene403 3.544250e-05 1.203485e-05 2.534405e-05
      Gene404 4.564908e-05 5.661169e-05 6.461627e-05
      Gene405 4.700859e-04 6.749887e-04 6.332998e-04
      Gene406 6.315770e-04 6.724675e-04 3.386906e-04
      Gene407 5.601529e-04 9.757848e-04 9.014481e-04
      Gene408 1.341035e-03 8.813163e-04 1.428610e-03
      Gene409 2.021964e-06 3.991060e-07 1.177562e-06
      Gene410 3.746683e-04 3.514368e-04 4.577266e-04
      Gene411 3.706900e-04 5.402678e-04 1.347005e-03
      Gene412 2.075991e-05 3.044878e-05 5.373869e-05
      Gene413 1.218649e-03 6.582064e-04 1.172362e-03
      Gene414 1.930807e-04 1.810518e-04 2.003660e-04
      Gene415 8.977154e-06 9.286618e-06 1.161268e-05
      Gene416 2.206580e-03 7.671682e-04 1.077445e-03
      Gene417 4.356340e-05 2.907072e-05 3.054882e-05
      Gene418 4.694646e-05 5.486588e-05 8.800932e-05
      Gene419 6.186332e-04 6.469362e-04 6.031301e-04
      Gene420 4.923947e-04 4.676304e-04 4.774599e-04
      Gene421 1.911108e-03 9.445619e-04 1.067642e-03
      Gene422 1.079149e-05 1.369292e-05 1.440941e-05
      Gene423 1.011505e-03 1.011281e-03 1.063437e-03
      Gene424 1.713964e-03 1.602418e-03 2.655149e-03
      Gene425 5.439863e-03 2.485435e-03 2.938480e-03
      Gene426 8.846458e-04 8.843983e-04 5.463867e-04
      Gene427 9.045134e-04 8.600787e-04 9.030381e-04
      Gene428 4.128339e-03 2.052401e-03 5.139581e-03
      Gene429 3.996089e-03 3.181793e-03 3.400062e-03
      Gene430 4.683991e-05 3.133158e-05 3.880923e-05
      Gene431 3.004218e-04 3.339145e-04 2.479873e-04
      Gene432 2.171287e-04 5.558189e-04 4.887346e-04
      Gene433 1.613189e-03 1.839380e-03 1.688795e-03
      Gene434 1.267559e-04 1.147037e-04 8.224753e-05
      Gene435 5.823880e-05 2.130455e-04 2.143881e-04
      Gene436 1.131857e-03 1.104964e-03 1.069932e-03
      Gene437 4.271767e-03 3.724023e-03 7.014733e-03
      Gene438 4.514502e-06 3.969991e-06 5.900716e-06
      Gene439 2.455699e-04 3.257316e-04 2.303025e-04
      Gene440 1.391105e-05 4.171496e-06 3.371083e-06
      Gene441 5.409710e-03 4.798002e-03 4.982680e-03
      Gene442 1.735271e-05 3.085157e-05 1.332593e-05
      Gene443 3.145191e-03 3.017963e-03 2.963870e-03
      Gene444 4.017287e-04 3.766348e-04 4.853140e-04
      Gene445 5.443152e-03 7.973111e-03 6.059254e-03
      Gene446 2.808227e-04 2.788896e-04 2.918706e-04
      Gene447 8.822790e-04 4.782471e-04 6.641064e-04
      Gene448 7.381861e-04 7.352184e-04 7.386312e-04
      Gene449 5.128378e-05 9.438574e-05 1.005792e-04
      Gene450 1.088390e-03 1.142507e-03 1.116309e-03
      Gene451 1.366125e-05 1.572419e-05 8.227509e-06
      Gene452 1.393021e-03 1.673659e-03 2.252489e-03
      Gene453 6.603251e-04 6.099749e-04 3.074731e-04
      Gene454 4.714884e-06 3.677414e-06 1.488169e-06
      Gene455 4.191242e-04 3.715828e-04 3.716909e-04
      Gene456 1.663930e-04 1.550812e-04 1.315588e-04
      Gene457 1.763936e-04 1.226900e-04 1.528216e-04
      Gene458 6.541142e-06 1.375711e-05 2.577932e-06
      Gene459 5.685606e-04 6.580767e-04 3.240898e-04
      Gene460 1.753627e-04 3.054490e-04 3.264177e-04
      Gene461 2.190924e-03 2.201026e-03 2.246427e-03
      Gene462 1.141703e-03 1.057730e-03 1.929741e-03
      Gene463 1.604934e-03 6.440509e-04 1.244614e-03
      Gene464 5.549033e-04 5.340850e-04 5.842156e-04
      Gene465 4.282179e-04 3.390541e-04 3.071795e-04
      Gene466 2.563195e-04 2.664430e-04 2.723100e-04
      Gene467 3.605825e-03 3.611941e-03 3.535892e-03
      Gene468 1.057256e-03 9.403249e-04 9.561894e-04
      Gene469 1.100257e-03 1.314688e-03 2.216912e-03
      Gene470 7.032841e-03 6.592292e-03 1.193874e-02
      Gene471 5.674275e-04 5.672863e-04 5.343747e-04
      Gene472 2.075596e-05 2.223427e-05 4.294686e-05
      Gene473 1.035879e-03 7.554817e-04 7.317094e-04
      Gene474 1.688472e-04 1.755161e-04 9.938045e-05
      Gene475 5.261450e-04 5.579854e-04 7.849921e-04
      Gene476 1.295883e-04 1.056275e-04 1.120261e-04
      Gene477 7.383823e-03 6.444543e-03 4.243181e-03
      Gene478 1.066260e-03 1.051672e-03 8.708729e-04
      Gene479 7.547148e-05 1.159993e-04 1.120722e-04
      Gene480 1.065779e-03 4.289324e-04 9.820764e-04
      Gene481 8.469141e-04 7.775697e-04 2.367181e-03
      Gene482 1.650492e-04 1.654789e-04 1.374830e-04
      Gene483 2.723341e-03 2.167997e-03 1.466949e-03
      Gene484 7.744634e-04 6.884678e-04 7.269742e-04
      Gene485 2.298571e-04 4.311900e-04 4.850226e-04
      Gene486 2.466656e-06 9.704615e-07 1.525896e-06
      Gene487 5.611814e-04 5.467381e-04 5.097750e-04
      Gene488 4.584163e-06 7.129404e-06 8.180030e-06
      Gene489 3.276829e-05 2.854262e-05 3.386698e-05
      Gene490 1.393553e-03 1.257068e-03 1.272372e-03
      Gene491 1.074523e-03 1.025452e-03 1.035585e-03
      Gene492 3.360395e-02 3.049819e-02 2.338552e-02
      Gene493 2.023641e-03 2.014573e-03 2.282132e-03
      Gene494 4.668491e-06 8.818829e-07 1.177562e-06
      Gene495 8.894305e-04 5.007626e-04 8.794994e-04
      Gene496 1.617643e-03 1.564259e-03 1.599111e-03
      Gene497 2.327598e-04 3.282208e-04 1.578005e-04
      Gene498 2.434503e-06 5.461795e-06 1.901948e-06
      Gene499 4.748342e-03 4.751259e-03 1.267562e-02
      Gene500 1.486628e-04 1.057445e-04 1.916915e-04
      
      $info[[2]]
      [1] "ct1" "ct2" "ct3"
      
      $info[[3]]
      [1] 3
      
      
      $renorm
      NULL
      
      
      Slot "internal_vars":
      $gene_list_reg
       [1] "Gene4"   "Gene27"  "Gene76"  "Gene274" "Gene389" "Gene396" "Gene416"
       [8] "Gene37"  "Gene47"  "Gene87"  "Gene182" "Gene200" "Gene208" "Gene219"
      [15] "Gene275" "Gene327" "Gene343" "Gene411" "Gene481" "Gene499"
      
      $gene_list_bulk
       [1] "Gene4"   "Gene27"  "Gene38"  "Gene52"  "Gene66"  "Gene73"  "Gene76" 
       [8] "Gene90"  "Gene121" "Gene274" "Gene389" "Gene396" "Gene416" "Gene421"
      [15] "Gene425" "Gene463" "Gene12"  "Gene37"  "Gene43"  "Gene47"  "Gene87" 
      [22] "Gene100" "Gene169" "Gene171" "Gene240" "Gene243" "Gene264" "Gene286"
      [29] "Gene322" "Gene345" "Gene360" "Gene362" "Gene379" "Gene497" "Gene15" 
      [36] "Gene61"  "Gene69"  "Gene106" "Gene120" "Gene182" "Gene200" "Gene208"
      [43] "Gene213" "Gene219" "Gene275" "Gene284" "Gene313" "Gene324" "Gene327"
      [50] "Gene339" "Gene343" "Gene348" "Gene382" "Gene411" "Gene428" "Gene437"
      [57] "Gene462" "Gene469" "Gene470" "Gene481" "Gene499"
      
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
      

