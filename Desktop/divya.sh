echo "kernal version:"
uname -v
echo "opeating system details:"
cat/etc/issue.net
echo "all available shells :"
cat /etc/shells
echo "mouse setting:"
xinput|grep pointer
echo "cpu info"
cat/proc/cpuinfo
echo "memory information"
cat/proc/meminfo
echo "hard disk information"
/sys/block/sd*/device/*
echo "file system:"
cat/proc/mounts

