set fish_greeting #No greeting
# Git abbreviations
abbr add git add
abbr branch git branch
abbr checkout git checkout
abbr cherry-pick git cherry-pick
abbr ch git cherry-pick
abbr co git checkout
abbr commit git commit
abbr c git commit
abbr ca git commit -am
abbr diff git diff
abbr diffw git diffw
abbr fetch git fetch
abbr g git
abbr log git log
abbr l git log
abbr pull git pull
abbr push git push
abbr pushfl git pushfl
abbr pushup git pushup
abbr rebase git rebase
abbr s git status
abbr show git show
abbr showw git showw
abbr stash git stash
abbr status git status
abbr reset git reset
abbr revert git revert
abbr bisect git bisect
abbr reset git reset
abbr reflog git reflog
# Envs
abbr cropr "cd ~/clones/cropr_project/; and activate"
abbr cloudfarm "cd ~/clones/cloud_farm/; and activate"
abbr scan "cd ~/clones/scan_project/; and activate; and source config/scan_gis_dev.env"
abbr ncn "cd ~/clones/ncn_project/; and activate"
abbr mben "cd ~/clones/mijnboerennatuur/; and activate"
abbr benb "cd ~/clones/public_farm/; and activate"
# Other
abbr d ls
abbr avc ssh apie@denickm-vps
abbr com docker-compose run --rm pre-deploy
abbr skforward ssh -D 8080 ssh.scintilla.utwente.nl
abbr logs journalctl -r
abbr weeknumber date +%V
abbr rdiff diff
abbr ptest 'docker-compose run --rm -uroot pre-deploy pytest'
abbr vrt yt-dlp --username 'Bugmenotvrt@mailinator.com' --password bugmenot --write-subs
abbr vrtno yt-dlp --username 'Bugmenotvrt@mailinator.com' --password bugmenot
abbr masterdevdiff 'git fetch origin && git log --oneline --graph --decorate --abbrev-commit origin/master..origin/develop'

#Aliases
alias manage 'docker-compose run --rm pre-deploy ./manage.py'
abbr sp manage shell_plus --quiet-load
# cropr manage
alias cmanage 'docker-compose run --rm pre-deploy ./manage.py'

# Fish autocomplete for manage.py
__fish_complete_django manage.py
# Fish autocomplete for 'manage' alias
__fish_complete_django manage
# Cmanage has own completion file
__fish_complete_django_cropr cmanage
