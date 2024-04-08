for file in $(cat wordlist.txt); do
  subfinder -d example.com -silent | httpx -silent -path /$file%/.jsp -title -status-code -content-length
done
