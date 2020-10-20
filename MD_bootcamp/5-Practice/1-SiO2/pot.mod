# BKS potential
pair_style     hybrid/overlay buck/coul/long 5.5 10.0 table linear 950
pair_coeff     * * buck/coul/long 0.0         1.0      0.0              
pair_coeff     1 1 buck/coul/long 0.0         1.0      0.0              # Si-Si
pair_coeff     1 2 buck/coul/long 414612.50   0.20520  3075.278         # Si-O
pair_coeff     2 2 buck/coul/long 31982.360   0.36231  4030.1136	# O-O
pair_coeff     1 1 table bks.dat BKS_SISI
pair_coeff     1 2 table bks.dat BKS_SIO
pair_coeff     2 2 table bks.dat BKS_OO

# MD parameters
kspace_style    ewald 1.0e-5
neighbor        2.0 bin
neigh_modify    every 1 check yes
timestep        1.0

