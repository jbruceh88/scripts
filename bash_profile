parse_git_branch() {
  COLOR_RED="\033[0;31m"
  COLOR_YELLOW="\033[0;33m"
  branch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')

    if [[ $branch =~ "master" ]]; then
      echo -e $COLOR_RED "You are working in your $branch branch"
    else
      echo -e $COLOR_YELLOW
      echo "$branch"
    fi
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]"



alias glog="git log --since='midnight' --pretty=format:'%s -  %ad'"

