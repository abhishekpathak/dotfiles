# Airbase-specific
alias stagedbrestore='pg_restore --verbose --clean --no-acl --no-owner -h localhost -U airbase -d airbase staging.dump'
alias stagedbdownload='task sync_db --dbname=staging --no-sync-local-db --no-update-env'
alias runcelery='redis-cli flushall && heroku local celeryall'
export DJANGO_SETTINGS_MODULE=airbase_backend.settings.local_settings
export DD_TRACE_ENABLED=False

# pnpm
export PNPM_HOME="/Users/abhishek/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
