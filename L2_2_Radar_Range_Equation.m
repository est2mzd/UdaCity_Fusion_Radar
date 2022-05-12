clear; clc;close all;
%Operating frequency (Hz)
fc = 77.0e9;

%Transmitted power (W)
Ps = 3e-3;

%Antenna Gain (linear)
G =  10000;

%Minimum Detectable Power
Pe = 1e-10;

%RCS of a car
RCS = 100;

%Speed of light
c = 3*10^8;

%TODO: Calculate the wavelength
lambda = c / fc; % 0.0039 [m] / 3.9 [mm]

%TODO : Measure the Maximum Range a Radar can see. 
range = ( (Ps * G^2 * lambda^2 * RCS)/(Pe * (4*pi)^3) ) ^ (1/4);
disp(range); % 218.87 [m]