# Airbase-specific
#alias stagedbrestore='pg_restore --verbose --clean --no-acl --no-owner -h localhost -U airbase -d airbase staging.dump'
#alias stagedbdownload='task sync_db --dbname=staging --no-sync-local-db --no-update-env'
export DJANGO_SETTINGS_MODULE=airbase_backend.settings.local_settings
export DD_TRACE_ENABLED=False

# add pyenv init to the shell. Make sure that this is placed toward the end of the shell configuration file 
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
# pnpm
export PNPM_HOME="/Users/abhishek/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end