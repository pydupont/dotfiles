export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="af-magic-no-git"
# ZSH_THEME="af-magic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="mm/dd/yyyy"

plugins=(ruby rake pyenv screen z cdls)

# User configuration
export PATH="/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$HOME/.local/bin"
export PATH="$PATH:$HOME/Apps"
export PATH="$PATH:$HOME/Apps/NewickUtils/newick-utils-1.6/src"
export PATH="$PATH:$HOME/Apps/bowtie2-2.2.0"
export PATH="$PATH:$HOME/Apps/meld-3.12.3/bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/usr/local/texlive/2014/bin/x86_64-linux"
export PATH="$PATH:$HOME/Downloads/circos/circos-0.67-7/bin"
export PATH="$PATH:$HOME/Apps/blast/ncbi-blast-2.2.28+/bin"
export PATH="$PATH:$HOME/Downloads/Augustus/augustus-3.2.2/bin"
export PATH="$PATH:$HOME/Apps/Circos/circos-0.69-2/bin"
export PATH="$PATH:$HOME/ROOT/v5.34.36/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/ROOT/v5.34.36/lib"
export ROOTSYS="$HOME/ROOT/v5.34.36"
export PERL5LIB="$HOME/Apps/Bioperl/bioperl-live:$HOME/Apps/vcftools/src/perl:$PERL5LIB"
export MANPATH="$MANPATH:/usr/local/texlive/2014/texmf-dist/doc/man"
export INFOPATH="$INFOPATH:/usr/local/texlive/2014/texmf-dist/doc/info"
export PYTHONPATH="$HOME/Documents/Endophytes/EndophyteStudies/Libs/:$HOME/Documents/Endophytes/Libs/PersonalLibs:$PYTHONPATH"

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='emacs'
else
  export EDITOR='emacs'
fi

alias ls="ls -t --group-directories-first --color=auto"
alias lla='ls -alF --group-directories-first --color=auto'
alias ll='ls -l --group-directories-first --color=auto'
alias la='ls -A --group-directories-first --color=auto'
alias l='ls -lasth --group-directories-first --color=auto'
alias lh='ls -lasth --group-directories-first --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias rm='rm -i'
alias less='less -S -n'
alias remcs='rm -f *~ *.*~'
alias strt='gvfs-open'
alias bc='bc -l'


export ftp_proxy=""
source $HOME/.passwords/proxies.sh
source $HOME/.rvm/scripts/rvm

#export LESS='-R'
#export LESSOPEN='|~/.lessfilter %s'

export AUGUSTUS_CONFIG_PATH="$HOME/Apps/SRC/Augustus/augustus-3.2.2/config"


autoload -Uz compinit bashcompinit
compinit
bashcompinit

source /usr/local/share/compleat-1.0/compleat_setup

PATH="$HOME/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;
