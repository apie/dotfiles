set fish_greeting #No greeting
# Git aliases
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
abbr cropr "cd ~/clones/cropr_project/; and source ~/.virtualenvs/cropr_project/bin/activate.fish"
abbr cloudfarm "cd ~/clones/cloud_farm/; and source ~/.virtualenvs/cloud_farm/bin/activate.fish"
abbr scan "cd ~/clones/scan_project/; and source ~/.virtualenvs/scan_project/bin/activate.fish"
abbr ncn "cd ~/clones/ncn_project/; and source ~/.virtualenvs/ncn_project/bin/activate.fish"
abbr mben "cd ~/clones/mijnboerennatuur/; and source ~/.virtualenvs/mijnboerennatuur/bin/activate.fish"
abbr benb "cd ~/clones/public_farm/; and activate"
# Other
abbr d ls
abbr avc ssh apie@denickm-vps
abbr sp ./manage.py shell_plus --quiet-load --ptipython
abbr com docker-compose run --rm pre-deploy
abbr skforward ssh -D 8080 ssh.scintilla.utwente.nl
abbr logs journalctl -r

# Fish autocomplete for manage.py
__fish_complete_django manage.py
