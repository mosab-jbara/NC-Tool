function [ f ] = find_output( A , S )
    f=zeros(size(A));
    d=0;
    for i=1:length(f)
        b=A(i)-d;
        if i>1
            s=S(i)-S(i-1);
        else
            s=S(i);
        end
        %b,s,d
        d=d+min(s,b);
        f(i)=d;
    end
end

