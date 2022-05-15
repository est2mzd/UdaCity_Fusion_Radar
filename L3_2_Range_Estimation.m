clc;clear;close all;
%Using the following MATLAB code sample, 
% complete the TODOs to calculate the range in meters of four targets 
% with respective measured beat frequencies [0 MHz, 1.1 MHz, 13 MHz, 24 MHz].
%You can use the following parameter values:
%
%    The radar maximum range = 300m
%    The range resolution = 1m
%    The speed of light c = 3*10^8
range_resolution = 1.0;
c = 3*10^8;

% TODO : Find the Bsweep of chirp for 1 m resolution
%        range_resolution = c / (2 * B_sweep)
Bsweep = (c/2)/range_resolution;

% TODO : Calculate the chirp time based on the Radar's Max Range


% TODO : define the frequency shifts 


% Display the calculated range
%disp(calculated_range);
