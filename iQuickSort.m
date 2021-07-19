function a=iQuickSort(a,low,high)
n=high-low+1;
stack=zeros(1,n);
top=1;
stack(top)=low;
top=top+1;
stack(top)=high;
while top>0
    high=stack(top);
    top=top-1;
    low=stack(top);
    top=top-1;
    
    [a,p]=partition(a,low,high);
    if p-1>low
        top=top+1;
        stack(top)=low;
        top=top+1;
        stack(top)=p-1;    
    elseif p+1<high
        top=top+1;
        stack(top)=p+1;
        top=top+1;
        stack(top)=high;
    end
end
end

function [a,q]=partition(a,low,high)
x=a(high);
i=low-1;
for j=low:high-1
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