COMMIT_TIME=$(date '+%Y%m%d%S')
echo $COMMIT_TIME

git add .
git commit -m $COMMIT_TIME
git push


