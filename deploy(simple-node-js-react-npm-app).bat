echo ����������Ŀ�ļ���
set ymd=%date:~0,4%-%date:~5,2%-%date:~8,2%
set hms=(%time:~0,2%%time:~3,2%%time:~6,2%%time:~9,2%)
set dt=%ymd%%hms%
mkdir bak\%dt%
echo ������Ŀ�ļ�
copy simple-node-js-react-npm-app bak\%dt%
echo ɾ����Ŀ�ļ���
del /s /q simple-node-js-react-npm-app
echo �����µ���Ŀ�ļ�
copy simple-node-js-react-npm-app@tmp simple-node-js-react-npm-app