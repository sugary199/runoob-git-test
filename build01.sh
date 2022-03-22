commit_ts=`git log -1 --format="%ct"`
commit_time=`date -d@$commit_ts +"%Y-%m-%d %H:%M:%S"`
current_time=`date +"%Y-%m-%d %H:%M:%S"`
git_version=`git log -1 --format="%h"`
build_number=`git describe "`
sed  s/MYVERSION/"version: $build_number commit: $commit_time build: $current_time"/g version.h.tmp > version.h
make clean
make