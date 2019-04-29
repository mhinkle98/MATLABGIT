function p = process_cost
p = [];
stop = false;
fprintf('Enter process name, cost ($)\n');
fprintf('Enter hours Required to produce one unit\n');
fprintf('Hit Enter without any value to end the list\n');
count = 0;

while ~stop
    process = input('Process Name: ', 's');
    if isempty(p)
        break;
    end
    hourlycost = input(['Hourly cost of ', p, ': ']);
    if isempty(hourlycost)
        break;
    end
    product1 = input(['Hours required to produce one unit of product 1 by ', p, ': ']);
    if isempty(product1)
        break;
    end
    product2 = input(['Hours required to produce one unit of product 2 by ', p, ': ']);
    if isempty(product2)
        break;
    end
    product3 = input(['Hours required to produce one unit of product 3 by ', p, ': ']);
    if isempty(product3)
        break;
    end
    count = count + 1;
    p(count).process = process;
    p(count).hourlycost = hourlycost;
    p(count).product1 = product1;
    p(count).product2 = product2;
    p(count).product3 = product3;

end

