echo 创建备份项目文件夹
set ymd=%date:~0,4%-%date:~5,2%-%date:~8,2%
set hms=(%time:~0,2%%time:~3,2%%time:~6,2%%time:~9,2%)
set dt=%ymd%%hms%
mkdir bak\%dt%
echo 备份项目文件
copy simple-node-js-react-npm-app bak\%dt%
echo 删除项目文件夹
del /s /q simple-node-js-react-npm-app
echo 覆盖新的项目文件
copy simple-node-js-react-npm-app@tmp simple-node-js-react-npm-app