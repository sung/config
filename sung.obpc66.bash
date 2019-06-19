# VIM first
export EDITOR=/usr/bin/vim
set -o vi

##########################
# color & italic support #
##########################
# https://bruinsslot.jp/post/how-to-enable-true-color-for-neovim-tmux-and-gnome-terminal/
# https://hobo.house/2017/07/17/using-italics-with-vim-in-your-terminal/
# https://gist.github.com/XVilka/8346728
# echo -e "\e[3m is this italics? \e[23m"
# printf "\x1b[38;2;255;100;0mTRUECOLOR\x1b[0m\n"
#export TERM=xterm-256color-italic

#######################################
# User specific aliases and functions #
#######################################
alias ls='ls -F --color=auto'
alias ll='ls -l'
alias grep='grep --color=auto'
alias vi='vim'
alias ssh='TERM=xterm-256color ssh -XC'
alias netstat='netstat -plntu'
alias ifconfig='/sbin/ifconfig'
alias mtop='mtop --dbuser=sung --password=snrnsk --host'
alias igv='java -Xmx1500m -jar /data/Install/IGV/igv.jar'
alias hdfview='/data/Install/hdfview/bin/hdfview.sh'
alias h5dump='/usr/bin/h5dump'
alias vep='/data/Install/Perl/vep/variant_effect_predictor.pl'
alias git-tree='git log --oneline --graph --color --all --decorate' 
#alias tabix='/data/Install/tabix/tabix'
#alias bgzip='/data/Install/tabix/bgzip'

#/home/sung/Downloads/pymol
alias pymol='/usr/bin/python /data/Install/pymol/Sep2010/lib64/python2.4/site-packages/pymol/__init__.py "$@"'
#alias mtop='mtop --host 192.168.1.2 --dbuser=sung --password=snrnsk'
alias samtools='~/Install/samtools/samtools' # to prevent picking up "/share/apps/bioscope/bin/samtools"

#JAVA
#export JAVA_HOME=/data/Install/java
#export JAVA_HOME=/data/Install/Java7/jdk1.7.0_40
#export PATH=$JAVA_HOME:$JAVA_HOME/bin:$PATH
#export CLASSPATH=$JAVA_HOME/lib:$CLASSPATH
#
##ANT
#export ANT_HOME=/data/Install/ant
#export PATH=/data/Install/ant/bin:$PATH
#
##VCF
#VCF=/data/Install/vcftools
#export PATH=$VCF/bin:$PATH
#
##TABIX
#TABIX=/data/Install/tabix
#export PATH=$TABIX:$PATH
#export PERL5LIB=$TABIX/perl:$PERL5LIB
#
##T-COFFEE
#export PATH=/home/sung/.t_coffee/plugins/linux:$PATH
#
##IN-HOUSE PERL
GLR=/data/Develop/Gloria
export PERL5LIB=$GLR:$PERL5LIB
#
## BIOPERL and ENSEMBL API REGISTRY
source /data/Config/bioperl.sh
export PATH=/data/Install/Perl/ensembl-git-tools/bin/:$PATH
#
## for DBIx and Catalyst
#export  DBIC_NO_WARN_BAD_PERL=1
#export  DBIC_TRACE=1
#export AUTOCRUD_DEBUG=1
##$ENV{CAG_ILLEGAL_ACCESSOR_NAME_OK} for Catalyst (2u_id of Nectar::Schema::CARDIODB::Result::2Pdb)
#export CAG_ILLEGAL_ACCESSOR_NAME_OK=1
#
#
##BLAST
export BLASTDIR=/data/Install/blast
#export BLASTMAT=/data/Install/blast/data
##export BLASTDB=/home/sung/Store/Blastore/BlastDB
#
##PATH
export PATH=/data/Install/exonerate/bin:$BLASTDIR/bin:$PATH

##export JOY="/home/sung/Install/joy/"
#export JOY="/data/Install/joy/"
##export FUGUE="/home/sung/Install/fugue/"
#export FUGUE="/data/Install/fugue/"
#export BATON="/data/Install/Baton/data"
#export BATON_BIN="/data/Install/Baton/bin"
#export SAMTOOLS="/data/Install/samtools/"
#export BCFTOOLS="/data/Install/bcftools/"
#export PATH=~/.vim/bin:$BEDTOOLS/bin:$SAMTOOLS:$BCFTOOLS:$EXO/bin:$BLASTDIR/bin:$BATON:$BATON_BIN:$JOY:$FUGUE:$PATH
PATH=$HOME/Install/fastqc_v0.11.4:$PATH
PATH=$HOME/Install/sratoolkit/bin:$PATH
PATH=$HOME/Install/bedtools/bin:$PATH
export PATH
#
#
## PYTHON
#export PYTHONSTARTUP=/home/sung/.pythonstart
#export PYTHONPATH=$PYTHONPATH:/data/Install/pymol/Sep2010/lib64/python2.4/site-packages
#
## perl local::lib
## disabled to use manage local lib under perlbrew
##perlversion=`perl -v | grep 'built for' | awk '{print $4}' | sed -e 's/v//;'`
#eval $(perl -I/home/sung/perl5/lib/perl5 -Mlocal::lib)
#
## local::lib (after upgrading perl v.5.10)
##export PERL5LIB=/home/sung/perl5/lib/perl5/i386-linux:/home/sung/perl5/lib/perl5:$PERL5LIB
##export PATH=/home/sung/perl5/bin:$PATH
#
#if [ $HOSTNAME == 'cmr000018' ]; then
#	echo "You're logged in to $HOSTNAME"
#	#export ICL64="/opt/intel/Compiler/11.1/073/lib/intel64"
#	#export ICL32="/opt/intel/Compiler/11.1/073/lib/ia32"
#elif [ $HOSTNAME == 'cmr-web' ]; then
#	echo "You're logged in to $HOSTNAME"
#else
#	#echo "You're logged in to $HOSTNAME"
#	export ICL64="/opt/intel/cce/11.1/lib/intel64"
#	shopt -s huponexit
#	ulimit -s unlimited
#	ulimit -l unlimited
#fi
#export LD_LIBRARY_PATH=$ICL64:$ICL32:/usr/local/lib:$LD_LIBRARY_PATH:
#
##MANPATH
#export MANPATH=$SAMTOOLS:$BCFTOOLS:$MANPATH
#
## LifeScope (see also /etc/profile.d/lifescope.sh)
##export LIFESCOPEROOT=/share/apps/lifescope
##export PATH=$LIFESCOPEROOT/bin:$PATH

source /etc/profile

#perlbrew
if [ -f $HOME/perl5/perlbrew/etc/bashrc ]; then
  source $HOME/perl5/perlbrew/etc/bashrc;
fi
[ $SHLVL -eq 1 ] && eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source $HOME/.rvm/scripts/rvm

