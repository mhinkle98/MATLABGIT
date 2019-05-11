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
m = zeros(1, 11);
m2 = ones(4,1);
m3 = ones(1,4);
m4 = 3*eye(4);
m5 = 6*ones(4) + 3*eye(4);
m6 = ones(1,11);
M = [m; m2 m4 m2 m5 m2; m6; m2 m5 m2 m4 m2; m]



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

% Part A

A = 40; % in degrees (use sind)
g = 9.81;
v0 = 20;
t = 0:0.1:10;
h = v0.*t.*sind(A) - 0.5*g.*t.^2;
v = sqrt(v0^2 - 2*v0*g.*t.*sind(A) + g^2.*t.^2);
disp(h);
disp(v);

% Part B

and(h>=6, v<= 16)


%%
% P10

% Method 2
% With a continue statement

clear; clc;
numbers = [7 -2 0 -4];

for ii = 1:length(numbers)
    x = numbers(ii);
    fprintf('x = %d\n',x);
    fprintf('x^2 = %d\n', x^2);
    fprintf('x^4 = %d\n', x^4);
    if x >= 0
        fprintf('x^(1/2) = %f\n',x^(1/2));
        fprintf('x^(1/4) = %f\n',x^(1/4));
    else
        continue
    end
end


%%
% P11



%% Problem 14
clear; clc; close all

data = xlsread('circuits.xls',1);

r1 = data(1,1);
v1 = data(2,1);
i1 = v1/r1;
p1 = (v1)^2/r1;

r2 = data(1,2);
v2 = data(2,2);
i2 = v2/r2;
p2 = (v2)^2/r2;

r3 = data(1,3);
v3 = data(2,3);
i3 = v3/r3;
p3 = (v3)^2/r3;

r4 = data(1,4);
v4 = data(2,4);
i4 = v4/r4;
p4 = (v4)^2/r4;

r5 = data(1,5);
v5 = data(2,5);
i5 = v5/r5;
p5 = (v5)^2/r5;

current_and_power_data = [i1 i2 i3 i4 i5; p1 p2 p3 p4 p5];
power_data = [p1 p2 p3 p4 p5];
max_power = max(power_data);
fprintf('highest average power:');
disp(max_power);
xlswrite('Power_data.xls',power_data);



