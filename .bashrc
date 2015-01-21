function parse_git_branch () {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

# We have color support; assume it's compliant with Ecma-48
# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
# a case would tend to support setf rather than setaf.)
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  PS1='[\[\033[01;32m\]\u@$HOSTNAME\[\033[00m\]][\[\033[01;34m\]\w\[\033[00m\]][$(parse_git_branch)]'
else
  PS1='[\u@$HOSTNAME][\w][$(parse_git_branch)]'
fi
