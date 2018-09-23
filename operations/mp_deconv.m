function [ f ] = mp_deconv( A,S )
    f=zeros(size(S));
    for t=1:length(f)
        m=-inf;
        for u=1:length(f)-t+1
            m=max(m,A(t+u-1)-S(u));
        end
        f(t)=m;
    end
end
