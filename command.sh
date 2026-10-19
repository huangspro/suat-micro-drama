git pull

find script -maxdepth 1 -type f ! -name '*.pdf' ! -name '*.tex' -delete

echo '```' > README.md
tree -L 10 -I 'command.sh|README.md' >> README.md
echo '```' >> README.md

git add .
git commit -m "auto commit"
git push


