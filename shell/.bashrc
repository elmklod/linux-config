# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias check-modem='ping 8.8.8.8'
alias ffox='nohup firefox &'
alias wrclisp='rlwrap clisp'
alias wrcmucl='rlwrap lisp'
alias wrsbcl='rlwrap sbcl'
alias wralisp='rlwrap /usr/local/acl10.1express/alisp'
alias ls='ls --color=auto'
alias fetch='sudo xbps-install -S'
alias sysup='sudo xbps-install -Su'
alias discard='sudo xbps-remove -R'
alias lworks='nohup /usr/local/lib64/LispWorksPersonal/lispworks-personal-7-1-2-amd64-linux &'
alias allegro-ex='nohup /usr/local/acl10.1express/allegro-express &'
PS1='[\u@\h \W]\$ '
