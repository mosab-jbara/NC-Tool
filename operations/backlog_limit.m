function [ f ] = backlog_limit( A , S )
    f=zeros(size(A));
    
    for t=1:length(f)
        b=-Inf;
        for i=1:t
            x=A(t)-A(i)-S(t)+S(i);
            b=max(b,x);
        end
        f(t)=b;
    end
end

