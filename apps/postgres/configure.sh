sudo mkdir -p /etc/paths.d &&
echo /Applications/Postgres.app/Contents/Versions/latest/bin | sudo tee /etc/paths.d/postgresapp

echo "syncing psql history.."
ln -sf ~/Dropbox/workspace/.psql_history ~/.psql_history