LOG_FILE="/var/log/syslog"
ERROR_LOG="$HOME/log_errors_$(date +%Y%m%d_%H%M%S).txt"

echo "🔍 Scanning $LOG_FILE for errors and warnings..."
grep -iE "error|fail|warning" "$LOG_FILE" > "$ERROR_LOG"

if [ -s "$ERROR_LOG" ]; then
    echo "⚠️  Issues found! Check $ERROR_LOG"
else
    echo "✅ No major issues found in logs."
fi
