%% The Sun is a Deadly Laser: A GEOS 215 Project
% Jocelyn and Leafia


%% Read in geotiff files from Global Solar Atlas
[GHI] = geotiffread('GHI.tif');
TEMP_file = geotiffread('TEMP.tif');

figure
mapshow(GHI);

%% Read in temp data from GISS data

GISS_temp = readtable('GISS_temp.csv');

%% Read in albedo
% X, Y, T, albedo
% X = longitude in degrees east
% Y = latitude in degrees north
% T = time in months since 1960-01-01
% albedo = in percent, missing values are replaced with 999.99

lat_albedo = ncread('albedo.nc','Y');
lon_albedo = ncread('albedo.nc','X');
time_albedo = ncread('albedo.nc','T');
albedo = ncread('albedo.nc','albedo');
