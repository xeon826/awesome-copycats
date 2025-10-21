#! /bin/bash
NOW=$(date '+%Y-%m-%d %H:%M')
NOWEPOCH=$(date +%s)
ENDEPOCH=$((NOWEPOCH+2592000))
END=$(date -d @$ENDEPOCH '+%Y-%m-%d %H:%M')

> /tmp/tareas

IFSORI=$IFS
IFS=$'\n'

/usr/bin/gcalcli --calendar xeon826@gmail.com agenda --tsv "$NOW" "$END" | while read -r LINE; do
    echo 'asdf';
    # Skip header line
    # if [[ "$LINE" == start_date* ]]; then
    #     continue
    # fi
    # YEAR=$(echo $LINE | awk -F "-" '{print $1}')
    # MONTH=$(echo $LINE | awk -F "-" '{print $2}')
    # DAY=$(echo $LINE | awk -F "-" '{print $3}' | awk -F " " '{print $1}')
    # case $MONTH in
    #     01) MONTHLETTERS=Jan ;;
    #     02) MONTHLETTERS=Feb ;;
    #     03) MONTHLETTERS=Mar ;;
    #     04) MONTHLETTERS=Apr ;;
    #     05) MONTHLETTERS=May ;;
    #     06) MONTHLETTERS=Jun ;;
    #     07) MONTHLETTERS=Jul ;;
    #     08) MONTHLETTERS=Aug ;;
    #     09) MONTHLETTERS=Sep ;;
    #     10) MONTHLETTERS=Oct ;;
    #     11) MONTHLETTERS=Nov ;;
    #     12) MONTHLETTERS=Dec ;;
    # esac
    # TXT=$(echo $LINE | cut -f5-)
    # echo -e "** $TXT" >> /tmp/tareas
    # echo -e "SCHEDULED: <$YEAR-$MONTH-$DAY $MONTHLETTERS>" >> /tmp/tareas
done

IFS=$IFSORI
