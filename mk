current_dir=`pwd`
make_dir="/home3/zefu.du/`echo $current_dir|cut -d '/' -f 4`"
cd $make_dir
GIT_HOME=/home3/zefu.du/git_home make V=99 && ds
cd $current_dir

