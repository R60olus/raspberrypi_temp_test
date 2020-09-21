# ABOUT
Use this script to make the temperatures of your Raspberry Pis comparable. Run this script in different cases or compare your results with those of ExplainingComputers from Youtube (https://www.youtube.com/channel/UCbiGcwDWZjz05njNPrJU7jA).

If you have temperature values and want to share them with the community, just send me this and I will add them to the list.

# INSTALL & RUN
Just execute the following commands
`sudo apt install sysbench`
`sudo apt install time`
`chmod +x temp_test.sh`

Run the Script:
`./temp_test.sh`

**NOTE:** The script will take about 10 minutes to run.

#COMPARISON 

|Raspberry Pi Version|Overclocked|Case|min. Temp|average Temp|max. Temp|
|----|----|----|----|----|----|
|RasPi 4 2GB|no|joy-it Design Gehäuse mit Doppellüfter für Raspberry Pi 4 (3.3V)|40.0°|57.0°|62.0°|
|RasPi 4 2GB|no|Pimoroni Fan SHIM|34.0°|47.125°|50.0°|
|RasPi 4 2GB|no|ICE Tower|29.0°|33.875°|35.0°|
|RasPi 4 2GB|no|FLIRC Case|38.0°|49.5°|54.0°|
|RasPi 4 2GB|no|TerraPi|36.0°|51.375°|54.0°|
