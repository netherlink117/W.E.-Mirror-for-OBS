@echo off
docker build . -t netherlink117:we-mirror-for-obs
echo;
echo Install complete.
echo Now open Docker desktop to run a container with the image "netherlink117:we-mirror-for-obs" with the desired port.
echo;
set /p "exit=Press enter to exit, or just close this window..."
goto :eof