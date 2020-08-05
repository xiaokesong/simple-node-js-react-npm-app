SET ymd=%date:~0,4%-%date:~5,2%-%date:~8,2%
SET hms=(%time:~0,2%%time:~3,2%%time:~6,2%%time:~9,2%)
SET dt=%ymd%%hms%
MKDIR bak\%dt%
XCOPY simple-node-js-react-npm-app bak\%dt% /E /Y
RD /S /Q simple-node-js-react-npm-app
MKDIR simple-node-js-react-npm-app
XCOPY simple-node-js-react-npm-app@tmp\build simple-node-js-react-npm-app /E /Y
RD /S /Q simple-node-js-react-npm-app@tmp\build