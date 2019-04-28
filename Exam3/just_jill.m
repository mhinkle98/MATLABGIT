function [output] = just_jill(input)
%Removes jack, him, his, he
%   Detailed explanation goes here
newStr = strsplit(input);
for i = 1:(length(newStr))
    if newStr(i) == "his" || newStr(i) == "His"
        newStr(i) = "her";
    end
    if newStr(i) == "he" || newStr(i) == "He"
        newStr(i) = "she";
    end
    if newStr(i) == "jack" || newStr(i) == "Jack" 
        newStr(i) = "Jill";
    end
    output = string(newStr);
end

