@echo off
Color 06
echo %USERDOMAIN%_%USERNAME%
echo =============================================================================

wmic path SoftwareLicensingService get OA3xOriginalProductKey >> %USERDOMAIN%_%USERNAME%.txt

wmic cpu get name, numberofcores, status >> %USERDOMAIN%_%USERNAME%.txt

wmic baseboard get product, manufacturer, version, serialnumber >> %USERDOMAIN%_%USERNAME%.txt

wmic memorychip get devicelocator, manufacturer, serialnumber >> %USERDOMAIN%_%USERNAME%.txt

wmic diskdrive get model, serialnumber >> %USERDOMAIN%_%USERNAME%.txt

wmic path win32_VideoController get name >> %USERDOMAIN%_%USERNAME%.txt

echo ------------Successfull-----------
clip < "%USERDOMAIN%_%USERNAME%.txt"

echo informations are copied, please paste this in skype and send it
echo Thank You
echo -CH
echo 
pause
exit