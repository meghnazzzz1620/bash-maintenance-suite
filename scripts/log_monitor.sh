LOG_FILE="${1:-/var/log/syslog}"
ALERT_FILE="${HOME}/log_alerts.log"
KEYWORDS=("error" "fail" "failed" "critical" "panic")

if [ ! -f "$LOG_FILE" ]; then
  echo "Log file not found: $LOG_FILE" >&2
  exit 1
fi

echo "Scanning $LOG_FILE for keywords: ${KEYWORDS[*]}"
tail -n 200 "$LOG_FILE" | while IFS= read -r line; do
  for kw in "${KEYWORDS[@]}"; do
    if echo "$line" | grep -iq "$kw"; then
      echo "$(date): Found '$kw' -> $line" >> "$ALERT_FILE"
      echo "ALERT: $line"
      break
    fi
  done
done

echo "Done. Alerts saved to $ALERT_FILE"
