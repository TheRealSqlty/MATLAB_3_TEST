clc; clear; close all;
hold on;
axis equal;

% Kruh
theta = linspace(0, 2*pi, 100);
r = 1;
x_circle = r*cos(theta);
y_circle = r*sin(theta);
plot(x_circle, y_circle, 'r', 'LineWidth', 2);

% Čtverec
n = 4; % počet vrcholů
r_square = 1.5; % poloměr opsané kružnice
theta_square = linspace(0, 2*pi, n+1); % n+1 aby se spojil první a poslední bod
x_square = r_square * cos(theta_square);
y_square = r_square * sin(theta_square);
plot(x_square, y_square, 'g', 'LineWidth', 2);

% Trojúhelník
n = 3;
r_tri = 1.5;
theta_tri = linspace(0, 2*pi, n+1);
x_tri = r_tri*cos(theta_tri);
y_tri = r_tri*sin(theta_tri);
plot(x_tri, y_tri, 'b', 'LineWidth', 2);

% Šestiúhelník
n = 6;
r_hex = 1.5;
theta_hex = linspace(0, 2*pi, n+1);
x_hex = r_hex*cos(theta_hex);
y_hex = r_hex*sin(theta_hex);
plot(x_hex, y_hex, 'm', 'LineWidth', 2);

legend('Kolečko','Čtverec','Trojúhelník','Šestiúhelník')
title('Tvary')
grid on