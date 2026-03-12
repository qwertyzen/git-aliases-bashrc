alias gs='git status'
alias gl='git log --oneline --all --graph'
alias glno='git log --graph --name-only'
alias glo='git log'
alias gld="git log --graph --pretty=format:'%C(auto)%h%d (%cr) %cn <%ce> %s'"
alias gfh='git log --'  # git log commit history of file
alias gfhc='git log -p --'  # git log commit history of file with changes
alias gd='git diff'
alias gdc='git diff --cached'
alias gdw='git diff --word-diff'
alias gdt='git difftool --tool=opendiff'
alias gr='git reset'
alias ga='git add'
alias gau="git add -u"
alias gpo='git push origin'
alias gc='git commit'
alias gch='git checkout'
alias gbn='git checkout -b'
alias gb='git branch'
alias gfom='git fetch origin main'
alias grFH='git reset --hard FETCH_HEAD'
alias grm='git rebase main'
alias thisbr='git rev-parse --abbrev-ref HEAD'
alias gcan='git commit --amend --no-edit'
alias gca='git commit --amend'
alias gsh='git stash'
alias gshm='git stash push -m'  # stash changes with message
alias gshst='git stash push --staged -m'  # Stash only staged changes as shown by 'gs and 'gdc'
alias gshp='git stash pop'
alias gshl='git stash list'
alias gshd='git stash drop'
alias gshi='git stash --include-untracked'
alias gdlc='git diff HEAD~1 HEAD'  # show changes made by last commit
alias gdsm='git diff main HEAD'  # git diff since main
alias grcf='git checkout HEAD --'  # git remove changes to files
alias gshst='git stash -- $(git diff --staged --name-only)'
alias gt='git tag -n'
gtcm() {          # git tag create on main branch.
  if [ $# -ne 2 ]; then
    echo "Usage: gtcm <tag-name> <message>"
    return 1
  fi

  local tag_name="$1"
  local message="$2"

  git tag -a "$tag_name" main -m "$message"
}

alias lsd='ls -lhF'
alias lsda='ls -lfFa'
alias lsdd='ls -lhFt'
alias md='mkdir'
alias grep='grep --color=always'
alias gren='grep -rnI'
alias tarx='tar -xvzf'
