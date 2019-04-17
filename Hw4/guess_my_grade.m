function guess_my_grade
n = 0;
while n ~= 88
    n = input('Try to guess my grade: ');
    if n < 88
        fprintf('Higher\n');
    end
    if n > 88
        fprintf('Lower\n');
    end
end
fprintf("That's it!");
end

