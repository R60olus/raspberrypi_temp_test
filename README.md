# ABOUT
Use this script to make the temperatures of your Raspberry Pis comparable. Run this script in different cases or compare your results with those of ExplainingComputers from Youtube (https://www.youtube.com/channel/UCbiGcwDWZjz05njNPrJU7jA).

If you have temperature values and want to share them with the community, just send me this and I will add them to the list.

# INSTALL
## install sysbench
`sudo apt install sysbench`

## install time
`sudo apt install time`

## make the script runable
`chmod +x temp_test.sh`

# Comparison

|Raspberry Pi Version|Case|min. Temp|average Temp|max. Temp|
|----|----|----|----|----|
|2GB|joy-it Design Gehäuse mit Doppellüfter für Raspberry Pi 4|40.0°|57.0°|62.0°|
|2GB|Pimoroni Fan SHIM|34.0°|47.125°|50.0°|
|2GB|ICE Tower|29.0°|33.875°|35.0°|
|2GB|FLIRC Case|38.0°|49.5°|54.0°|
|2GB|TerraPi|36.0°|51.375°|54.0°|
