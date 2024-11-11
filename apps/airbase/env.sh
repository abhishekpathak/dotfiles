# Airbase-specific
alias stagedbrestore='pg_restore --verbose --clean --no-acl --no-owner -h localhost -U airbase -d airbase staging.dump'
alias stagedbdownload='pg_dump -v -n public -d $STAGING_DATABASE_URL > dump.sql'
alias runcelery='redis-cli flushall && poetry run task celery'
export DJANGO_SETTINGS_MODULE=airbase_backend.settings.local_settings
export DD_TRACE_ENABLED=False

# pnpm
export PNPM_HOME="/Users/abhishek/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
