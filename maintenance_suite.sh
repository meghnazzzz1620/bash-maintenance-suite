while true; do
    echo "=============================="
    echo "🧰 SYSTEM MAINTENANCE SUITE"
    echo "=============================="
    echo "1. Backup Files"
    echo "2. System Update & Cleanup"
    echo "3. Log Monitor"
    echo "4. Exit"
    read -p "Choose an option [1-4]: " choice

    case $choice in
        1) ./backup.sh ;;
        2) ./update_cleanup.sh ;;
        3) ./log_monitor.sh ;;
        4) echo "👋 Exiting Suite. Goodbye!"; break ;;
        *) echo "❌ Invalid choice, please try again." ;;
    esac

    echo ""
done
