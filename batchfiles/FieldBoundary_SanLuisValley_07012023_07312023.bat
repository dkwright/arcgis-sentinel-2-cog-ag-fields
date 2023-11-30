REM ********* Set Variable Values **************
set pPath="C:\Program Files\ArcGIS\Pro\bin\Python\envs\arcgispro-py3\python.exe" 
set mdcsPath=C:\Image_Mgmt_Workflows\MDCS\arcgis-sentinel-2-cog-ag-fields
set mdPath=C:\data\sentinel-2-l2a\SanLuisValley.gdb\SanLuisValley

REM bbox needs to be WGS84 4326 MINX,MINY,MAXX,MAXY
REM SanLuisValley
%pPath%  "%mdcsPath%\scripts\MDCS.py" -i:"%mdcsPath%\Parameter\Config\DEA.xml" -m:"%mdPath%" -c:CM+sentinelModifySrc+AF+AR+markduplicate+RRFMD+SP+CV -p:2023-07-01$startDate -p:2023-07-31$endDate -p:20$cloud -p:-106.54028166999996,36.93116725900006,-105.32903899399997,38.23272276600005$coordinate -p:1$interval 
