COMMIT_TIME=$(TZ=":Asia/Tokyo" date '+%Y-%m-%d=%H.%M.%S')
echo ""
echo ""
echo "Time Now! -------------> $COMMIT_TIME"

git add .
git commit -m $COMMIT_TIME
git push


