function [ f ] = rate_latency(T,R,t)
    f=zeros(size(t));
    for i=1:length(t)
        if(t(i)>T)
            f(i)=R*(t(i)-T);
        end
    end
end
