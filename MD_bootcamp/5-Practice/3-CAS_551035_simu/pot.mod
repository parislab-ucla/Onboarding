# Jakse potential
pair_style      hybrid/overlay born 8.0 coul/dsf 0.25 8.0
pair_coeff      * * born 0.0 1.0 0.0 0.0 0.0
pair_coeff      1 1 born 0.276344 0.2630 3.6430 1959.372 0.0
pair_coeff      1 2 born 0.16120 0.1560 2.5419 1066.0667 0.0
pair_coeff      1 3 born 0.172715 0.1640 2.6067 796.2097 0.0
pair_coeff      1 4 born 0.17732 0.1780 2.9935 973.0907 0.0
pair_coeff      2 2 born 0.0276344 0.0460 1.4408 580.030 0.0
pair_coeff      2 3 born 0.0575717 0.0570 1.5056 433.2063 0.0
pair_coeff      2 4 born 0.062177 0.0630 1.8924 529.445489 0.0
pair_coeff      3 3 born 0.066783 0.0680 1.5704 323.548 0.0
pair_coeff      3 4 born 0.073691778 0.0740 1.9572 395.425476 0.0
pair_coeff      4 4 born 0.080600 0.0800 2.3440 483.27068 0.0
pair_coeff      * * coul/dsf

set             type 1 charge -1.2 # O
set             type 2 charge 2.4  # Si
set             type 3 charge 1.8  # Al
set             type 4 charge 1.2  # Ca

neighbor        2.0 bin
neigh_modify    every 1 check yes
timestep        1.0
