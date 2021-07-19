function [cp,a] = mergeSort(arr,cp)
n = length(arr);
cp=cp+1;
if n==1
    a = arr;
else
    m = floor(n/2);
    [cp,arr1] = mergeSort(arr(1:m),cp);
    [cp,arr2] = mergeSort(arr(m+1:n),cp);
    [cp,a] = merge(arr1,arr2,cp);
end
end

function [cp,arr3] = merge(arr1,arr2,cp)
n = length(arr1);
m = length(arr2);
arr3 = zeros(1,n+m);
i = 1;
j = 1;
for k=1:(n+m)
    cp=cp+1;
    if i > n
        arr3(k) = arr2(j);
        j = j+1;        
    elseif j>m
        arr3(k) = arr1(i);
        i = i + 1;        
    elseif arr1(i) <= arr2(j)
        arr3(k) = arr1(i);
        i = i + 1;        
    else
        arr3(k) = arr2(j);
        j = j + 1;       
    end
end
end