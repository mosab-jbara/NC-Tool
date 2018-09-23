function [ f ] = TDMA(T,s,r,t)
    f=zeros(size(t));
    D=T-s;
    B=r*s;
    for i=1:length(t)
        if(t(i)<D)
            f(i)=0;
        elseif(mod(t(i)-D,T)<s)
            bs=floor((t(i)-D)/T)*B;
            f(i)=mod(t(i)-D,T)*r+bs;
        else
            bs=floor((t(i)-D)/T)*B;
            f(i)=bs+B;
        end
    end
end
