function [ f ] = burst_delay( T,t )
    f=zeros(size(t));
    for i=1:length(t)
        if(t(i)>T)
            f(i)=Inf;
        end
    end
end

