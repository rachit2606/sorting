function [time,a]=quickSort(a,low,high,cp)
tic
if (low<high)
    [cp,a,q]=partition(a,low,high,cp);
    [cp,a]=quickSort(a,low,q-1,cp);
    [cp,a]=quickSort(a,q+1,high,cp);
end
time=toc;
end

function [cp,a,q]=partition(a,low,high,cp)
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