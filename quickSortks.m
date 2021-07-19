function [val,wt]=quickSortks(val,low,high,wt)
if (low<high)
    [val,wt,q]=partition(val,low,high,wt);
    [val,wt]=quickSortks(val,low,q-1,wt);
    [val,wt]=quickSortks(val,q+1,high,wt);
end
end

function [val,wt,q]=partition(val,low,high,wt)
x=val(high);
i=low-1;
for j=low:high-1
    
    if ( val(j)<=x )
        i=i+1;
        temp=val(i);
        val(i)=val(j);
        val(j)=temp;
        temp=wt(i);
        wt(i)=wt(j);
        wt(j)=temp;
    end    
end
temp=val(i+1);
val(i+1)=val(high);
val(high)=temp;
temp=wt(i+1);
wt(i+1)=wt(high);
wt(high)=temp;
q=i+1;
end