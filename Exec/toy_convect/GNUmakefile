PRECISION        = DOUBLE
PROFILE          = FALSE
DEBUG            = FALSE
DIM              = 2
COMP	         = g++
FCOMP	         = gfortran

USE_MPI          = TRUE
USE_OMP          = FALSE

USE_GRAV         = TRUE
USE_REACT        = TRUE
USE_MODELPARSER  = TRUE

USE_OLDPLOTPER   = TRUE

CASTRO_DIR = ../..

ifdef MICROPHYSICS_DIR

# This sets the EOS directory in $(MICROPHYSICS_DIR)/eos
EOS_dir     := helmholtz

# This sets the EOS directory in $(MICROPHYSICS_DIR)/networks
Network_dir := general_null
GENERAL_NET_INPUTS = $(MICROPHYSICS_DIR)/networks/$(Network_dir)/hotcno.net

else

$(error Error: This problem requires the Microphysics repository. Please ensure that you have downloaded it and set $$MICROPHYSICS_DIR appropriately)

endif

Bpack   := ./Make.package
Blocs   := .

include $(CASTRO_DIR)/Exec/Make.Castro
