function [ f ] = peak_rate( R,t )
    f=zeros(size(t));
    for i=1:length(t)
        if(t(i)>0)
            f(i)=R.*t(i);
        end
    end
end

