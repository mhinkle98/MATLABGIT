%% Max Hinkle
% BME 2020 Computing Concepts & Applications
%%%%%%%%%%%%%%%% FINAL EXAM %%%%%%%%%%%%%%%%

%%
% P1
clear; clc;
% Part A

a = 6 * (10/13) + 18/(5*7) + 5 * 9^2

% Part B

b = 6 * 35^(1/4) + 14^0.35


%%
% P2
clear; clc;
x = -5 + 9j;
y = 6 - 2j;
% Part A

a = x + y

% Part B

b = (x*y) / (3*x - 4*y)^3

%%
% P3
clear; clc;

% Part A

temp = base2dec('101001', 2) * base2dec('10101', 2) - base2dec('11010', 2);
a = dec2base(temp, 2)

% Part B

temp2 = 892 - base2dec('1011', 2) + 1201;
b = dec2base(temp2, 2)


%%
% P4
clear;clc;

% Part A

u = cos(90):0.02:log10(100);
w = 5*sin(u)

% Part B

w(25)



%%
% P5
clear;clc;

p = [1 6 -11 290];
r = roots(p)


%%
% P6
clear; clc;
m = zeros(11);
m(2:10, 2:10) = 3*eye(9);
m(2:5, 7:10) = 3*ones(4);
m(2:5, 7:10) = 9*eye(4);
m(7:10, 2:5) = 9*eye(4);
m(2:10,1) = 1



%%
% P7
clear; clc;

tic;
M = 100*magic(350);
b = 100*rand(350,1);
V = M\b
toc;


%%
% P8
clear; clc;

i = 1.2:0.05:1.8;

h = 15;
r = 8;

V = (pi*r^2*h)*i;
r = sqrt(V/(pi*h));
fprintf("Volumes: ");
disp(V);
fprintf("Radii: ");
disp(r);

%%
% P9
clear;clc;










