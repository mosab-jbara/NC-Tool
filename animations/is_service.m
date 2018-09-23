function is_service(in,out,S,t)
    figure;
    for s=1:length(in)
        Rs=in(s);
        ts=t(s);
        plot(t,in);
        hold on;
        plot(t,out);
        plot(t+ts,S+Rs);
        axis([0 t(end) 0 max(in(end),S(end))]);
        drawnow;
        pause(0.01);
        clf;
    end
end