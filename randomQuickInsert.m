function [cp,a]=randomQuickInsert(a,low,high,cp)
n=high-low+1;
if (low<high && n>5)
    [cp,a,q]=randomPartition(a,low,high,cp);
    [cp,a]=randomQuickInsert(a,low,q-1,cp);
    [cp,a]=randomQuickInsert(a,q+1,high,cp);
elseif(low<high && n<=5)
    [cp,a]=insertionSort(a,low,high,cp);
end
end

function [cp,a,q]=randomPartition(a,low,high,cp)
rp=randi([low,high]);
temp=a(high);
a(high)=a(rp);
a(rp)=temp;
x=a(high);
i=low-1;
for j=low:high-1
    cp=cp+1;
    if ( a(j)<=x )
        i=i+1;
        temp=a(i);
        a(i)=a(j);
        a(j)=temp;
    end    
end
temp=a(i+1);
a(i+1)=a(high);
a(high)=temp;
q=i+1;
end

function [cp,arr]=insertionSort(arr,low,high,cp)
for i=low+1:high
    key = arr(i);
    j=i-1;
    while( j>low  )
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