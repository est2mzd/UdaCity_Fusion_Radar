clc;clear;close all;
%Using the following MATLAB code sample, 
% complete the TODOs to calculate the range in meters of four targets 
% with respective measured beat frequencies [0 MHz, 1.1 MHz, 13 MHz, 24 MHz].
%You can use the following parameter values:
%    The radar maximum range = 300m
%    The range resolution = 1m
%    The speed of light c = 3*10^8
R_max   = 300;
D_res   = 1.0;
c       = 3*10^8;
fb_list = [0.0, 1.1, 13.0, 24.0].*10^6;

% TODO : Find the Bsweep of chirp for 1 m resolution
%        D_res   = c / (2 * B_sweep)
B_sweep = (c/2)/D_res; % 0.15 * 10^9

% TODO : Calculate the chirp time based on the Radar's Max Range
%        The sweep time can be computed based on the time needed 
%        for the signal to travel the maximum range. In general, 
%        for an FMCW radar system, the sweep time should be at least 
%        5 to 6 times the round trip time. 
%        This example uses a factor of 5.5:
round_trip_time = 2 * R_max / c;
Ts = 5.5 * round_trip_time; % 1.1E-5

% TODO : define the frequency shifts 
%        R = ( fb * Ts * c) / ( 2*B )
R_list = (fb_list * Ts * c) / (2*B_sweep); 

% Display the calculated range
disp(R_list); % [0   12.1000  143.0000  264.0000]

figure;
plot(fb_list, R_list, 'ro-'); grid on; hold on;
xlabel('Beat Freq [Hz]');
ylabel('Range [m]');
set(gca, 'FontSize', 14);