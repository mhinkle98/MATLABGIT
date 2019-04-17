% HW 4
% Max Hinkle

%%
% P1

guess_my_grade


%%
% P2
% integer summation
int = 1;
int_sum = 0;
max_val = 300;
tt_int_cnt = 0;
num_int = 0;
i = 0;
while int_sum < max_val
    int_sum = int_sum + int; % sum
    int = int + 1; % counter
    i = i + 1;
end
last_int = i;
if int_sum == max_val
    num_int = int - 1;
    tt_int_ct = int_sum;
elseif int_sum > max_val
        num_int = int - 1;
        tt_int_ct = int_sum + last_int;
end

int
num_int




%%
% P3

A = imread('lifeguard.jpg');
B = imread('shark5.jpg');
C = imread('surfer5.jpg');

AB = imfuse(A, B, 'blend','Scaling','joint');
ABC = imfuse(AB, C, 'blend','Scaling','joint');
imshow(ABC);

%%
% P4
close all; clear; clc;
x = -2:0.1:5;
m = linspace(1/8,10,length(x));
figure;

for i=1:length(x)
    y1(i,:) = i.*sin(m(i).*x);
    y2(i,:) = i.*cos(m(i).*x);
end

for anistep=1:length(m)
    hold on
    plot(x,y1(anistep,:));
    plot(x,y2(anistep,:));
    xlim([2,5]);
    ylim([-70,70]);
    title_string=['Y = sin(', + num2str(anistep),')'];
    title(title_string, 'FontSize',24);
    drawnow;
    pause(1/30);
    hold off
end
