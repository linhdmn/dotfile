cd /home/dnlinh/Projects/dotfile && \
git pull && \
git add . && \
git commit --message="$(date '+%Y-%m-%d %H:%M:%S')" && \
git push origin master