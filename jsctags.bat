@echo off
::------------------------------------------------------------------------------
 
:: Path to node.exe
set nodejs_exe=node
 
:: Path to doctorjs installation directory
set doctorjs_install=d:\dist\doctorjs\
 
::------------------------------------------------------------------------------
set NODE_PATH=%doctorjs_install%\lib\jsctags
%nodejs_exe% %doctorjs_install%\bin\jsctags.js %*