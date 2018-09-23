function [ f ] = random_curve( mu , sigma , t )
    f=zeros(size(t));
    for i=1:length(t)
        if(t(i)>0)
            x=mu+sigma.* randn(1,1);
            if(x<0)
                x=0;
            end
            if(i==1)
                f(i)=x;
            else
                f(i)=f(i-1)+x;
            end
        end
    end
end
