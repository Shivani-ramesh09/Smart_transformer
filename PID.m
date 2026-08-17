clc;
clear;
close all;

s = tf('s');

% Plant
G = 1/(s^2 + 3*s + 2);

% PID gains
Kp = 7.2;
Ki = 7.2;
Kd = 1.8;

% PID controller
C = pid(Kp, Ki, Kd);

% Closed-loop transfer function
T = feedback(C*G, 1);

% Step response
figure;
step(T);
grid on;
title('Closed-loop Step Response with PID');

% Step response information
info = stepinfo(T)