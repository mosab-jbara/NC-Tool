function [ f ] = staircase(T,tau,t)
    f=zeros(size(t));
    for i=1:length(t)
        if(t(i)>0)
            f(i)=ceil((t(i)+tau)/T);
        end
    end
end
