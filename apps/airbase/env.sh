# Airbase-specific
alias stagedbrestore='pg_restore --verbose --clean --no-acl --no-owner -h localhost -U airbase -d airbase staging.dump'
alias stagedbdownload='pg_dump -v -n public -d $STAGING_DATABASE_URL > dump.sql'
alias runcelery='redis-cli flushall && uv run task celery'
export DJANGO_SETTINGS_MODULE=airbase_backend.settings.local_settings
export DD_TRACE_ENABLED=False
export DYLD_FALLBACK_LIBRARY_PATH="$HOMEBREW_PREFIX/lib" # Needed for uv to find libs on macosx. Got an libcairo.so error otherwise.

# Load testing
export K6_DB_USER=airbase
export K6_DB_PWD=airbase

# pnpm
export PNPM_HOME="/Users/abhishek/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"


