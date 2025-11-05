BACKUP_SRC="$HOME/Documents"
BACKUP_DEST="$HOME/backup_$(date +%Y%m%d_%H%M%S)"

echo "🔄 Creating backup from $BACKUP_SRC to $BACKUP_DEST..."
mkdir -p "$BACKUP_DEST"
cp -r "$BACKUP_SRC"/* "$BACKUP_DEST"/

if [ $? -eq 0 ]; then
    echo "✅ Backup completed successfully at $BACKUP_DEST"
else
    echo "❌ Backup failed!"
fi
