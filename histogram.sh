echo "DATE,WV,WT"
for DATE in `ls wv* | sed -e "s/wv//"`
do
	echo "$DATE,`cat wv$DATE | grep -v "Welcome to" | grep -v "User creation log" | grep -v "Block log" | grep -v "Deletion log" | grep -v "Reverted edits" | wc -l`,`cat wt$DATE | grep -v "Welcome to" | grep -v "User creation log" | grep -v "Block log" | grep -v "Deletion log" | grep -v "Reverted edits" | wc -l`"
done
