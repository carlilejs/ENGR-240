clc
clear

x = linspace(1, 100, 20); %#ok<NOPTS>
y = x.^2;
plot(x, y);

x = linspace(0, 2*pi);
y = sin(x);
plot(x, y);