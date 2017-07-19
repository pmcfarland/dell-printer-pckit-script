@echo off
rem @Author pmcfarland
rem @Date: 09.12.2014

rem This batch file takes the printer page ip address as the 1st cmd line arg, fetches the page and returns the status if it matches the error
rem This batch file utilizes others 3rd party utilities:
rem 1) Curl For Windows: https://curl.haxx.se/download.html
rem 2) Grep For Windows: http://gnuwin32.sourceforge.net/packages/grep.htm

set url="http://%1/cgi-bin/dynamic/printer/PrinterStatus.html"

rem Change to the install/extract directory for curl, mine was c:\curl
rem Curl pulls the webpage at the given IP address and saves it to a txt file in that same directory, overwriting if it already exists
cd C:\curl
curl %url% > file.txt
echo:

rem Now changes to the GnuWin32 folder in order to use grep
rem Grep searches the text file to match a given string
rem If it matches then it will echo the message.
rem Alterntively it could perform an action such as printing a reminder sheet to the site to replace the PC kit.
cd C:\Program Files\GnuWin32\bin
grep -qi "Reset PC kit" c:\curl\file.txt && echo PC Kit needs replaced

rem back to C to finish
cd  C:\