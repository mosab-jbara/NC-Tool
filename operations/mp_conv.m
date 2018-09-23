function [ f ] = mp_conv( A,S )
    f=zeros(size(S));
    for t=1:length(f)
        m=inf;
        for s=1:t
            m=min(m,A(t-s+1)+S(s));
        end
        f(t)=m;
    end
end

