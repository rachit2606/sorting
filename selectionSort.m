function [cp,arr]=selectionSort(arr,cp)
n=length(arr);
for i=1:n
    j = i;
    for k=i+1:n
        cp=cp+1;
        if(arr(k)<arr(j))
            j=k;
        end
    end
    temp=arr(i);
    arr(i)=arr(j);
    arr(j)=temp;
end
end