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
#abbr cropr "cd ~/clones/cropr_project/; and activate"
#abbr cloudfarm "cd ~/clones/cloud_farm/; and activate"
#abbr scan "cd ~/clones/scan_project/; and activate; and source config/scan_gis_dev.env"
#abbr inspection "cd ~/clones/scan_inspection/;"
#abbr mben "cd ~/clones/mijnboerennatuur/; and activate"
#abbr benb "cd ~/clones/public_farm/; and activate"
# Other
# use new docker compose command
alias docker-compose=docker compose
abbr d ls
abbr avc ssh apie@denickm-vps2
abbr com docker compose run --rm pre-deploy
abbr skforward ssh -D 8080 ssh.scintilla.utwente.nl
abbr logs journalctl -r
abbr weeknumber date +%V
abbr rdiff diff
abbr ptest "docker compose run --rm pre-deploy pytest -k 'not test_add_logo_success and not test_superuser_map_view'"
abbr vrt yt-dlp --username 'Bugmenotvrt@mailinator.com' --password bugmenot --write-subs
abbr vrtno yt-dlp --username 'Bugmenotvrt@mailinator.com' --password bugmenot
abbr masterdevdiff 'git fetch origin && git log --oneline --graph --decorate --abbrev-commit origin/master..origin/develop'
abbr maindevdiff 'git fetch origin && git log --oneline --graph --decorate --abbrev-commit origin/main..origin/develop'
abbr ddown 'docker compose down'

#Aliases
alias manage 'docker compose run --rm pre-deploy ./manage.py'
abbr sp manage shell_plus --quiet-load
# cropr manage
alias cmanage 'docker compose run --rm pre-deploy ./manage.py'
alias kubectl 'microk8s kubectl'
alias ctop 'docker run --rm -ti --name=ctop --volume /var/run/docker.sock:/var/run/docker.sock:ro quay.io/vektorlab/ctop:latest'
alias e 'source ~/projects/tooling/empower.fish'

# Fish autocomplete for manage.py
#__fish_complete_django manage.py
# Fish autocomplete for 'manage' alias
#__fish_complete_django manage
# Cmanage has own completion file
#__fish_complete_django_cropr cmanage

type -q /home/linuxbrew/.linuxbrew/bin/brew; and eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

#Variables
#set --export GITHUB_DEFAULT_REVIEWER_scan_project @Crop-R/greenteam
#set --export GITHUB_DEFAULT_REVIEWER_mijnboerennatuur @Crop-R/greenteam
#set --export GITHUB_DEFAULT_REVIEWER_scan_inspection @Crop-R/greenteam
