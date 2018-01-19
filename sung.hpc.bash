#################
# sung's bashrc #
#################
# VIM first 
export EDITOR=$HOME/bin/vim
#setterm -blength 0
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
alias vi='~/bin/vim'
alias ssh='ssh -XC'
alias netstat='netstat -plntu'
alias ifconfig='/sbin/ifconfig'
alias mtop='mtop --dbuser=sung --password=snrnsk --host'
alias igv='java -Xmx1500m -jar /data/Install/IGV/igv.jar'
alias hdfview='/data/Install/hdfview/bin/hdfview.sh'
alias h5dump='/usr/bin/h5dump'
alias vep='/data/Install/Perl/vep/variant_effect_predictor.pl'
alias preseq='~/Install/preseq/preseq'
alias seqtk='~/Install/seqtk/seqtk'
#alias tabix='/data/Install/tabix/tabix'
#alias bgzip='/data/Install/tabix/bgzip'

############
## PYTHON ##
############
#export PYTHONPATH=$PYTHONPATH:$HOME/Install/MACS2/lib/python2.7/site-packages
## for seqcluster only
#PYTHONPATH=/home/ssg29/Install/seqcluster/anaconda/lib/python2.7/site-packages:$PYTHONPATH
export PYTHONPATH=$HOME/Install/CPAT/usr/local/Cluster-Apps/python/2.7.5/lib/python2.7/site-packages:$PYTHONPATH

########
# PATH #
########
#export PATH=$HOME/Install/methpipe/bin:$HOME/Install/samtools:$HOME/Install/HTSeq/scripts:$HOME/Install/ngsutils/bin:$HOME/Install/FREEC:$HOME/Install/GCcount:$HOME/LiftOver:$HOME/Install/MACS2/bin:$HOME/Install/vcftools/bin:$HOME/Install/bcftools:$HOME/Install/htslib:$PATH
PATH=$HOME/Install/methpipe/bin:$PATH
PATH=$HOME/Install/samtools:$PATH
#PATH=$HOME/Install/HTSeq/scripts:$PATH
PATH=$HOME/bin:$PATH
PATH=$HOME/.local/bin:$PATH
PATH=$HOME/local/bin:$PATH
PATH=$HOME/Install/ngsutils/bin:$PATH
PATH=$HOME/Install/FREEC:$PATH
PATH=$HOME/Install/GCcount:$PATH
PATH=$HOME/Install/LiftOver:$PATH
PATH=$HOME/Install/MACS2/bin:$PATH
PATH=$HOME/Install/vcftools/bin:$PATH
PATH=$HOME/Install/bcftools:$PATH
PATH=$HOME/Install/htslib:$PATH
PATH=$HOME/Install/fastqc_v0.11.4:$PATH
PATH=$HOME/Install/trim_galore_v0.4.0:$PATH
PATH=$HOME/Install/cutadapt-1.8.1/bin:$PATH
PATH=$HOME/Install/STAR_2.4.2a/bin/Linux_x86_64_static:$PATH
PATH=$HOME/Install/mirdeep2_0_0_7:$PATH
PATH=$HOME/Install/bowtie:$PATH
PATH=$HOME/Install/ViennaRNA/bin:$PATH
PATH=$HOME/Install/randfold-2.0:$PATH
PATH=$HOME/Install/miRanda/bin:$PATH
PATH=$HOME/Install/stringtie:$PATH
PATH=$HOME/Install/bwa:$PATH
PATH=$HOME/Install/sratoolkit/bin:$PATH
PATH=$HOME/Install/userApps/bin:$PATH
PATH=$HOME/Install/bamUtil/bin:$PATH
PATH=$HOME/Install/bedops_linux_x86_64-v2.4.15/bin:$PATH
PATH=$HOME/Install/CPAT/usr/local/Cluster-Apps/python/2.7.5/bin:$PATH
PATH=$HOME/Install/subread/bin:$PATH
PATH=$HOME/Install/Salmon/bin:$PATH
export PATH

export GATK_HOME=$HOME/Install/GATK/GenomeAnalysisTK-3.4-46-gbc02625

export PERL5LIB=$HOME/perl5/lib/perl5:$HOME/Install/vcftools/perl:$PERL5LIB

###############
# LD_LIB_PATH #
###############
#export LD_LIBRARY_PATH=$HOME/Install/samtools:$HOME/Install/htslib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$HOME/local/lib/:${LD_LIBRARY_PATH}
#export INCLUDE=$HOME/Install/samtools:$HOME/Install/htslib:$INCLUDE
