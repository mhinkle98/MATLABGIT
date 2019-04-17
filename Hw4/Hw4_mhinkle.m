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
disp(int);
disp(tt_int_ct);
disp(int_sum);
disp(num_int);
disp(last_int);


%%
% P3



