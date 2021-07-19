function [cp,arr]=modifiedBubbleSort(arr,cp)
n=length(arr);
for i=1:n
    flag=0;
    for j=n-1:-1:i
        cp=cp+1;
        if(arr(j)>arr(j+1))
            temp=arr(j);
            arr(j)=arr(j+1);
            arr(j+1)=temp;
            flag=1;
        end
    end
    if (flag==0)
        break;
    end
end
end