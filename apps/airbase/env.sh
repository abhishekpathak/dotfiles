# Airbase-specific
export XERO_RSA_KEY_PATH=$CODE/airbase/airbase-backend/.xero.pem
#alias stagedbrestore='pg_restore --verbose --clean --no-acl --no-owner -h localhost -U airbase -d airbase staging.dump'
#alias stagedbdownload='task sync_db --dbname=staging --no-sync-local-db --no-update-env'
export DJANGO_SETTINGS_MODULE=airbase_backend.settings.local_settings
export DD_TRACE_ENABLED=False