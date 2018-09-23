function is_arrival(in,A,t)
    figure;
    for s=1:length(in)
        Rs=in(s);
        ts=t(s);
        plot(t,in);
        hold on;
        plot(t+ts,A+Rs);
        axis([0 t(end) 0 max(in(end),A(end))]);
        drawnow;
        pause(0.01);
        clf;
    end
end