function [cp,arr]=bubbleSort(arr,cp)
n=length(arr);
for i=1:n
    for j=n-1:-1:i
        cp=cp+1;
        if(arr(j)>arr(j+1))
            temp=arr(j);
            arr(j)=arr(j+1);
            arr(j+1)=temp;
        end
    end
end
end