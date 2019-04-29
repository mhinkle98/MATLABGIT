function processes = process_cost
processes = [];
stop = false;
fprintf('Enter process name, cost ($)\n');
fprintf('Enter hours Required to produce one unit\n');
fprintf('Hit Enter without any value to end the list\n');
count = 0;

while ~stop
    process = input('Process Name: ', 's');
    if isempty(process)
        break;
    end
    hourlycost = input(['Hourly cost of ', process, ': ']);
    if isempty(hourlycost)
        break;
    end
    product1 = input(['Hours required to produce one unit of product 1 by ', process, ': ']);
    if isempty(product1)
        break;
    end
    product2 = input(['Hours required to produce one unit of product 2 by ', process, ': ']);
    if isempty(product2)
        break;
    end
    product3 = input(['Hours required to produce one unit of product 3 by ', process, ': ']);
    if isempty(product3)
        break;
    end
    count = count + 1;
    processes(count).process = process;
    processes(count).hourlycost = hourlycost;
    processes(count).product1 = product1;
    processes(count).product2 = product2;
    processes(count).product3 = product3;

end

