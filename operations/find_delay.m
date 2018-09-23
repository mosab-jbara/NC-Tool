function [ f ] = find_delay( A , D )
    f=zeros(size(A));
    
    for t=1:length(f)
        w=0;
        x=A(t)-D(t+w);
        while x>0
            w=w+1;
            if t+w>length(D)
                return
            end
            x=A(t)-D(t+w);
        end
        
        f(t)=w;
    end
end

