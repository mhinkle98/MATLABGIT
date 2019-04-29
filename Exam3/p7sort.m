function sorted = p7sort(package)

packagefields = fieldnames(package);

packagecell = struct2cell(package);
sz = size(packagecell);

packagecell = reshape(packagecell, sz(1), []);
packagecell = packagecell';

packagecell = sortrows(packagecell, 3);
packagecell = reshape(packagecell', sz);
sorted = cell2struct(packagecell, packagefields, 1);

end

