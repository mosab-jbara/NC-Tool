function [ f ] = affine(r,b,t)
    f=zeros(size(t));
    for i=1:length(t)
        if(t(i)>0)
            f(i)=r*t(i)+b;
        end
    end
end
