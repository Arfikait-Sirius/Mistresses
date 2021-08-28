@ECHO OFF

set DIR_MISTRESSES=%1\mistresses
set DIR_GIRLS=%DIR_MISTRESSES%\girls

IF NOT exist %DIR_MISTRESSES% (
     mkdir %DIR_MISTRESSES%
     mkdir %DIR_GIRLS%
)

copy .\dir_Girls\Emily\emily.rb %DIR_GIRLS%\. > NUL
copy .\dir_Girls\Louise\louise.rb %DIR_GIRLS%\. > NUL

copy .\dir_Modules\mistresses.rb %1\. > NUL

echo Completed!
