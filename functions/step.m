function [ f ] = step(T,t)
    f=zeros(size(t));
    for i=1:length(t)
        if(t(i)>T)
            f(i)=1;
        end
    end
end
