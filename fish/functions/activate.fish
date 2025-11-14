function activate
    source ~/.virtualenvs/(basename (pwd))/bin/activate.fish 2>/dev/null; and return 0
    or source venv/bin/activate.fish 2>/dev/null; and return 0
    or source virtual/bin/activate.fish 2>/dev/null; and return 0
    or source .venv/bin/activate.fish 2>/dev/null; and return 0
    or echo 'Nothing found to activate' >&2; and return 1
end
