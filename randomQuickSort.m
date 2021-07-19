function [cp,a]=randomQuickSort(a,low,high,cp)
if (low<high)
    [cp,a,q]=randomPartition(a,low,high,cp);
    [cp,a]=randomQuickSort(a,low,q-1,cp);
    [cp,a]=randomQuickSort(a,q+1,high,cp);
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