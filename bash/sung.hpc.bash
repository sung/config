#################
# sung's bashrc #
#################
# VIM first 
#export EDITOR=$HOME/bin/vim
export EDITOR=vim
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
#alias vi='~/bin/vim'
alias vi='vim'
alias ssh='ssh -XC'
alias netstat='netstat -plntu'
alias ifconfig='/sbin/ifconfig'
#alias igv='java -Xmx1500m -jar ~/Install/IGV/igv.jar' # java8 for ~/Install/IGV_2.3.34
alias igv='bash ~/Install/IGV_2.7.2/igv.sh' # java11 for ~/Install/IGV_2.7.2
alias h5dump='/usr/bin/h5dump'
#alias vep='/data/Install/Perl/vep/variant_effect_predictor.pl'
alias preseq='~/Install/preseq/preseq'
alias seqtk='~/Install/seqtk/seqtk'
#alias tabix='/data/Install/tabix/tabix'
#alias bgzip='/data/Install/tabix/bgzip'
alias smk=snakemake
alias smk-dag='smk --dag | dot -Tsvg > dag.svg'
alias neofetch='~/Install/neofetch/neofetch'
alias STAR="~/Install/STAR-2.5.3a/source/STAR"

############
## PYTHON ##
## Below will conflicts with python from local conda
## DO NOT USE
############
#PYTHONPATH=$PYTHONPATH:$HOME/Install/MACS2/lib/python2.7/site-packages
#PYTHONPATH=/home/ssg29/Install/seqcluster/anaconda/lib/python2.7/site-packages:$PYTHONPATH
#PYTHONPATH=$HOME/Install/RSeQC-2.6.4/usr/lib/python2.7/site-packages:$PYTHONPATH
#PYTHONPATH=$HOME/.local/lib/python2.7/site-packages:$PYTHONPATH
#export PYTHONPATH

########
# PATH #
########
PATH=$HOME/bin:$PATH
PATH=$HOME/.local/bin:$PATH
PATH=$HOME/local/bin:$PATH
PATH=$HOME/perl5/perlbrew/bin:$PATH
PATH=$HOME/Install/samtools:$PATH 
                                    # ~/Install/samtools-1.2-24-for-tophat: samtools 1.2-24-g016c62b Using htslib 1.2.1-38-g9affea0
                                    # for peta4-cpu (i.e. skylake), find from module.sh (via module load samtoolsxxxx)
PATH=$HOME/Install/htslib:$PATH
PATH=$HOME/Install/fastqc_v0.11.4:$PATH
PATH=$HOME/Install/trim_galore_v0.4.0:$PATH
PATH=$HOME/Install/bowtie:$PATH
PATH=$HOME/Install/bwa:$PATH
PATH=$HOME/Install/hisat2:$PATH
#PATH=$HOME/Install/STAR_2.4.2a/bin/Linux_x86_64_static:$PATH
PATH=$HOME/Install/stringtie:$PATH
PATH=$HOME/Install/subread/bin:$PATH
PATH=$HOME/Install/Salmon/bin:$PATH
PATH=$HOME/Install/sratoolkit/bin:$PATH
PATH=$HOME/Install/vcftools/bin:$PATH
PATH=$HOME/Install/bcftools:$PATH
PATH=$HOME/Install/ngsutils/bin:$PATH
PATH=$HOME/Install/FREEC:$PATH
PATH=$HOME/Install/GCcount:$PATH
PATH=$HOME/Install/LiftOver:$PATH
PATH=$HOME/Install/MACS2/bin:$PATH
PATH=$HOME/Install/mirdeep2_0_0_7:$PATH
PATH=$HOME/Install/ViennaRNA/bin:$PATH
PATH=$HOME/Install/randfold-2.0:$PATH
PATH=$HOME/Install/miRanda/bin:$PATH
PATH=$HOME/Install/userApps/bin:$PATH
PATH=$HOME/Install/bamUtil/bin:$PATH
PATH=$HOME/Install/methpipe/bin:$PATH
PATH=$HOME/Install/bedops_linux_x86_64-v2.4.15/bin:$PATH
PATH=$HOME/Install/bedtools/bin:$PATH
PATH=$HOME/Install/pigz-2.4:$PATH # used by cutadapt (via python3)
PATH=$HOME/Install/gffread:$PATH
PATH=$HOME/Install/gffcompare:$PATH
PATH=$HOME/Install/taco:$PATH
PATH=$HOME/Install/jdk-11/bin:$PATH
#PATH=$HOME/Install/CPAT/usr/local/Cluster-Apps/python/2.7.5/bin:$PATH
#PATH=$HOME/Install/RSeQC-2.6.4/usr/bin:$PATH # ()installed via pip)
#PATH=$HOME/Install/HTSeq/scripts:$PATH # ()installed via pip)
#PATH=$HOME/Install/cutadapt-1.8.1/bin:$PATH # moved to ~/.local/cutadapt (installed via pip)
export PATH

#export GATK_HOME=$HOME/Install/GATK/GenomeAnalysisTK-3.4-46-gbc02625
export GATK_HOME=$HOME/Install/GATK/GenomeAnalysisTK-3.8-1-0-gf15c1c3ef
#export GATK_HOME=$HOME/Install/GATK/gatk-4.0.2.1
#export GATK_HOME=$HOME/Install/GATK/gatk-4.0.3.0

export PERL5LIB=$HOME/perl5/lib/perl5:$HOME/Install/vcftools/perl:$PERL5LIB

###############
# LD_LIB_PATH #
###############
#export LD_LIBRARY_PATH=$HOME/Install/samtools:$HOME/Install/htslib:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=$HOME/local/lib/:${LD_LIBRARY_PATH}
#LD_LIBRARY_PATH=/usr/local/software/spack/develop-290617/spack/opt/spack/linux-rhel7-x86_64/gcc-4.8.5/gcc-5.4.0-fis24ggupugiobii56fesif2y3qulpdr/lib64/:${LD_LIBRARY_PATH}
export LD_LIB_PATH 
#export INCLUDE=$HOME/Install/samtools:$HOME/Install/htslib:$INCLUDE
