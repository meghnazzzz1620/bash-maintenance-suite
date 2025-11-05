SCRIPTS_DIR="$(dirname "$0")"
BACKUP="$SCRIPTS_DIR/backup.sh"
UPDATE="$SCRIPTS_DIR/update_cleanup.sh"
LOGMON="$SCRIPTS_DIR/log_monitor.sh"

while true; do
  cat <<MENU
==========================
 Bash Maintenance Suite
==========================
1) Run Backup
2) Run Update & Cleanup
3) Run Log Monitor
4) Run All (backup -> update -> log monitor)
5) Exit
Enter choice:
MENU
  read -r choice
  case "$choice" in
    1) bash "$BACKUP" ;;
    2) bash "$UPDATE" ;;
    3) bash "$LOGMON" ;;
    4) bash "$BACKUP"; bash "$UPDATE"; bash "$LOGMON" ;;
    5) echo "Goodbye!"; exit 0 ;;
    *) echo "Invalid choice" ;;
  esac
done
