function [cp,e]=quickSelect(a,low,high,k,cp)
if (k>0 && (k<=(high-low+1)))
    [cp,a,q]=partition(a,low,high,cp);
    if(q-low==k-1)
        e=a(q);
        return;
    elseif(q-low>k-1)
        [cp,e]=quickSelect(a,low,q-1,k,cp);
    else
        [cp,e]=quickSelect(a,q+1,high,k-q+low-1,cp);
    end
end
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