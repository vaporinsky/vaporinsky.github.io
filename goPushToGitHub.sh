COMMIT_TIME=$(TZ=":Asia/Tokyo" date '+%Y-%m-%d=%H.%M.%S')
echo '-------------> $COMMIT_TIME'

git add .
git commit -m $COMMIT_TIME
git push


