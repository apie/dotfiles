#@ General
# Custom greeting using a script
if test -x ~/greet.py
    function fish_greeting
        ~/greet.py
    end
else
    set fish_greeting # No greeting
end

#@ Git abbreviations
abbr add git add
abbr branch git branch
abbr checkout git checkout
abbr cherry-pick git cherry-pick
abbr ch git cherry-pick
# abbr co git checkout
abbr gco git checkout
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

#@ Envs activate shortcuts abbreviations
#abbr cropr "cd ~/clones/cropr_project/; and activate"
#abbr cloudfarm "cd ~/clones/cloud_farm/; and activate"
#abbr scan "cd ~/clones/scan_project/; and activate; and source config/scan_gis_dev.env"
#abbr inspection "cd ~/clones/scan_inspection/;"
#abbr mben "cd ~/clones/mijnboerennatuur/; and activate"
#abbr benb "cd ~/clones/public_farm/; and activate"

#@ Other abbreviations
abbr d ls
abbr avc ssh apie@denickm-vps2
abbr com docker compose run --rm pre-deploy
abbr skforward ssh -D 8080 ssh.scintilla.utwente.nl
abbr logs journalctl -r
abbr weeknumber date +%V
abbr rdiff diff
#abbr ptest "docker compose run --rm pre-deploy pytest -k 'not test_add_logo_success and not test_superuser_map_view'"
abbr vrt yt-dlp --username 'Bugmenotvrt@mailinator.com' --password bugmenot --write-subs
abbr vrtno yt-dlp --username 'Bugmenotvrt@mailinator.com' --password bugmenot
abbr masterdevdiff 'git fetch origin && git log --oneline --graph --decorate --abbrev-commit origin/master..origin/develop'
abbr maindevdiff 'git fetch origin && git log --oneline --graph --decorate --abbrev-commit origin/main..origin/develop'
abbr ddown 'docker compose down'
#abbr sp manage shell_plus --quiet-load
abbr zonnepanelen 'curl http://192.168.2.{(seq 1 20)}/home.cgi --connect-timeout 0.1 --silent --fail|sed -n 11p'
if type -q /snap/bin/codium
    abbr code codium
end

#@ Aliases
# use new docker compose command
alias docker-compose=docker compose
#alias manage 'docker compose run --rm pre-deploy ./manage.py'
# cropr manage
#alias cmanage 'docker compose run --rm pre-deploy ./manage.py'
alias kubectl 'microk8s kubectl'
alias ctop 'docker run --rm -ti --name=ctop --volume /var/run/docker.sock:/var/run/docker.sock:ro quay.io/vektorlab/ctop:latest'
# Add function/alias that accepts arguments but ignores them, that opens the remote, since this muscle memory is hard to shake off :)
function hub
    xdg-open (git remote get-url --all origin|sed -E "s=ssh://git@(gitlab.+):[[:digit:]]+(.*)=https://\1\2=" |sed -E "s=git@(.+):(.*)\.git=http://\1/\2=")
end

#@ Fish autocomplete for manage.py
#__fish_complete_django manage.py
# Fish autocomplete for 'manage' alias
#__fish_complete_django manage
# Cmanage has own completion file
#__fish_complete_django_cropr cmanage


#@ Variables
## Git hook variables
#set --export GITHUB_DEFAULT_REVIEWER_scan_project @Crop-R/greenteam
#set --export GITHUB_DEFAULT_REVIEWER_mijnboerennatuur @Crop-R/greenteam
#set --export GITHUB_DEFAULT_REVIEWER_scan_inspection @Crop-R/greenteam
set --export PREPEND_COMMIT_MESSAGE_HOOK_ENABLED true

## Python variables
# Use pudb as default python debugger; When using "breakpoint()".
set --export PYTHONBREAKPOINT "pudb.set_trace"

#@ Misc
## Fix default audio output (if on the relevant PC)
function fix_default_audio_output
    if string match 'ltsp*' (hostname) --quiet;
        pactl set-card-profile alsa_card.pci-0000_01_00.1 output:hdmi-stereo-extra2
        pactl set-default-sink alsa_output.pci-0000_01_00.1.hdmi-stereo-extra2
    end
end
fix_default_audio_output

# Ytec related things.
# Only makes sense on a PC with Ytec tooling present
if type -q ~/projects/tooling/empower.fish
    alias e 'source ~/projects/tooling/empower.fish'
    alias empowered '~/projects/tooling/empower.sh'
    if test -d ~/projects
        function gp
            # 'Go project'
            # Quickly go to a project dir and empower if needed
            # Match project name based on arguments, joined by dashes and match both start, middle and end of string. Take first match in case of multiple matches
            # -quit to stop after first match was found
            # grep to get correct exit code on no match
            cd (find ~/projects/ -maxdepth 1 -type d -name '*'(string join '-' $argv)'*' -print -quit | grep .; or echo 'DIR NOT FOUND'); and if test -z $_YTEC_EMPOWER_PYTHONPATH; e; end
        end
    end
    function fab
        # Remove this function so that we can call the real program
        functions --erase fab
        # If empowered
        if test $_YTEC_EMPOWER_PYTHONPATH;
            # run the program
            fab $argv
        else
            # If not empowered
            # Run empowered
            empowered fab $argv
            # Empower now. As last step since it hijacks our shell
            e
        end
    end
end
#type -q /home/linuxbrew/.linuxbrew/bin/brew; and eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
