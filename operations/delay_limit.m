function [ f ] = delay_limit( A , S )
    f=zeros(size(A));
    
    for t=1:length(f)
        w=-1;
        x=Inf;
        while x>0
            w=w+1;
            if t+w>length(S)
                return
            end
            
            x=-Inf;
            for i=1:t
                xx=A(t)-A(i)-S(t+w)+S(i);
                x=max(x,xx);
            end
        end
        
        f(t)=w;
    end
end

