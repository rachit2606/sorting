function [cp,arr]=insertionSort(arr,cp)
n=length(arr);
for i=2:n
    key = arr(i);
    j=i-1;
    while j>0
        cp=cp+1;
        if(arr(j)>key)
            temp=arr(j);
            arr(j)=arr(j+1);
            arr(j+1)=temp;
        else
            break;
        end
        j=j-1;
    end
end
end