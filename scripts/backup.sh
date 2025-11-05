SOURCE_DIR="${1:-$HOME/Documents}"
BACKUP_ROOT="${HOME}/backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup_${TIMESTAMP}.tar.gz"

mkdir -p "$BACKUP_ROOT"
tar -czf "${BACKUP_ROOT}/${BACKUP_NAME}" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"

if [ $? -eq 0 ]; then
  echo "Backup successful: ${BACKUP_ROOT}/${BACKUP_NAME}"
  exit 0
else
  echo "Backup failed." >&2
  exit 1
fi
