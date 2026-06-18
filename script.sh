while IFS= read -r pass; do
    echo "Trying: $pass"
    7z t -p"$pass" yourfile.7z >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "PASSWORD FOUND: $pass"
        break
    fi
done < passwordlist.txt
