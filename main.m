clc;
clear;
close all;
%%
N = 500

goldenRatio = (1 + sqrt(5))/2

i = [0:N-1].';

azimuth = 2*pi*i/goldenRatio;
elevation = acos(1-2*(i+0.5)/N);

sources = cell(N,1);

figure;
hold on
for idx = 1:N
   tmp = [cos(azimuth(idx))*sin(elevation(idx)) sin(azimuth(idx))*sin(elevation(idx)) cos(elevation(idx))];
   sources{idx} = tmp;
   plot3(tmp(1),tmp(2),tmp(3),'r*')
end
grid on
grid minor
xlabel('x')
ylabel('y')
zlabel('z')
