function answer = recursiveFac(number)
%% Write a recursive function file to compute  x =7!/(3!4!); where n! = n(n?1)(n?2)..(2)(1).
if number <= 1
    answer = 1;
else
    answer = number * recursiveFac(number - 1);
end

end

