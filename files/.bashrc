
gin_info="$(who | head -n1 | cut -d'(' -f2 | cut -d')' -f1)"
message="$(
printf "ALERT - Root Shell Access (%s) on:\n" "$(hostname)"
date
echo
who
)"
mail -s "Alert: Root Access from ${login_info}" admin <<< "${message}"
