#!/bin/sh
# Bioperl Environment Settings
# by Sung <sung@bio.cc> 

BIOPERL=/data/Install/Perl/bioperl-live
ENSEMBL_CORE=/data/Install/Perl/ensembl/modules
ENSEMBL_VARI=/data/Install/Perl/ensembl-variation/modules
ENSEMBL_FUNCGEN=/data/Install/Perl/ensembl-funcgen/modules
ENSEMBL_COMPARA=/data/Install/Perl/ensembl-compara/modules
ENSEMBL_REGISTRY=/data/Config/Ensembl/ensembl_api.conf
#SUNG_PERL1=/home/MINTS/ssg29/perl5/lib/perl5
#SUNG_PERL2=/home/MINTS/ssg29/perl5/lib/perl5/x86_64-linux-gnu-thread-multi

# BIOPERL 
if [ ! -d $BIOPERL ]; then
    echo "ERROR: BIOPERL=${BIOPERL} does not exist!"
    #exit;
fi
if [ -d ${BIOPERL} ]; then
    PERL5LIB=${BIOPERL}${PERL5LIB:+:$PERL5LIB}
fi

# ENSEMBL_CORE 
if [ ! -d $ENSEMBL_CORE ]; then
    echo "ERROR: ENSEMBL_CORE=${ENSEMBL_CORE} does not exist!"
    #exit;
fi
if [ -d ${ENSEMBL_CORE} ]; then
    PERL5LIB=${ENSEMBL_CORE}${PERL5LIB:+:$PERL5LIB}
fi

# ENSEMBL_VARI 
if [ ! -d $ENSEMBL_VARI ]; then
    echo "ERROR: ENSEMBL_VARI=${ENSEMBL_VARI} does not exist!"
    #exit;
fi
if [ -d ${ENSEMBL_VARI} ]; then
    PERL5LIB=${ENSEMBL_VARI}${PERL5LIB:+:$PERL5LIB}
fi

# ENSEMBL_FUNCGEN
if [ -d ${ENSEMBL_FUNCGEN} ]; then
    PERL5LIB=${ENSEMBL_FUNCGEN}${PERL5LIB:+:$PERL5LIB}
fi
# die unless API exists
if [ ! -s ${ENSEMBL_REGISTRY} ]; then
    echo "ERROR: ENSEMBL_REGISTRY=${ENSEMBL_REGISTRY} does not exist!"
    #exit;
fi

# ENSEMBL_COMPARA 
if [ ! -d $ENSEMBL_COMPARA ]; then
    echo "ERROR: ENSEMBL_COMPARA=${ENSEMBL_COMPARA} does not exist!"
    #exit;
fi
if [ -d ${ENSEMBL_COMPARA} ]; then
    PERL5LIB=${ENSEMBL_COMPARA}${PERL5LIB:+:$PERL5LIB}
fi

# REGISTRY
if [ -s ${ENSEMBL_REGISTRY} ]; then
	export ENSEMBL_REGISTRY
fi

# SUNG's Local Perl
if [ -d ${SUNG_PERL1} ]; then
    PERL5LIB=${SUNG_PERL1}${PERL5LIB:+:$PERL5LIB}
fi
# SUNG's Local Perl
if [ -d ${SUNG_PERL2} ]; then
    PERL5LIB=${SUNG_PERL1}${PERL5LIB:+:$PERL5LIB}
fi

#export PERL5LIB
