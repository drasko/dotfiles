# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias 'bk=cd $OLDPWD'

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------
alias lh='ls -d .*' # show hidden files/directories only
alias lsd='ls -aFhlG'
alias l='ls -al'
alias ls='ls -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
alias ll='ls -GFhl' # Same as above, but in long listing format
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias 'dus=du -sckx * | sort -nr' #directories sorted by size

alias 'wordy=wc -w * | sort | tail -n10' # sort files in current directory by the number of words they contain
alias 'filecount=find . -type f | wc -l' # number of files (not directories)

# -------------------------------------------------------------------
# Mercurial (hg)
# -------------------------------------------------------------------
alias 'h=hg status'
alias 'hc=hg commit'
alias 'push=hg push'
alias 'pull=hg pull'
alias 'clone=hg clone'

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gpl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gv='git log --pretty=format:'%s' | cut -d " " -f 1 | sort | uniq -c | sort -nr'

# merging
alias gmt='git mergetool'

# curiosities 
# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"

# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"

alias vi='vim'

# -------------------------------------------------------------------
# aura
# -------------------------------------------------------------------
alias pacupg='sudo aura -Syu'
alias pacaur='sudo aura -A'
alias pacin='sudo aura -S'
alias pacins='sudo aura -U'
alias pacre='sudo aura -R'
alias pacrem='sudo aura -Rns'
alias pacrep='aura -Si'
alias pacreps='aura -Ss'
alias pacloc='aura -Qi'
alias paclocs='aura -Qs'
alias paclo="aura -Qdt"
alias pacc="sudo aura -Scc"
alias paclf="aura -Ql"
alias pacexpl="aura -D --asexp"
alias pacimpl="aura -D --asdep"

# '[r]emove [o]rphans' - recursively remove ALL orphaned packages
alias pacro="aura -Qtdq > /dev/null && sudo aura -Rns \$(aura -Qtdq | sed -e ':a;N;\$!ba;s/\n/ /g')"

# Additional aura alias examples
alias pacupd='sudo aura -Sy && sudo abs'         # Update and refresh the local package and ABS databases against repositories
alias pacinsd='sudo aura -S --asdeps'            # Install given package(s) as dependencies
alias pacmir='sudo aura -Syy'                    # Force refresh of all package lists after updating /etc/aura.d/mirrorlist
