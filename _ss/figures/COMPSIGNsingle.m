close all

x = chebfun('x'); p = x;
delta = 0.1;
d = delta;

hold on

    xi = sqrt((1+delta+(delta)^2)/3);
    a = 3/(2*xi);
    b = -1/(2*xi^3);

    p = a*p + b*p^3; c = (p(1)+1)/2; delta = 2*c-1;
    f = c*sign(x);
    
    figure(1)
    plot(p,'b'), hold on, plot(f,'k')
    
    LS = 'linestyle'; IN = 'interpreter'; LT = 'latex';
    CO = 'color'; FS = 'fontsize'; MS = 'markersize';
    line([d d],[-1 1],LS,'--',CO,'r')
    text(d+0.02,-0.8,'$\delta$',IN,LT,FS,18,CO,'r')
    line([-d -d],[-1 1],LS,'--',CO,'r')
    text(-d-0.16,-0.8,'$-\delta$',IN,LT,FS,18,CO,'r')
    
    %figure(2),
    %g = f-p; plot(g,'k'), hold on
    %[ignored,extrema] = minandmax(g,'local');
    %plot(extrema,g(extrema),'.r','markersize',12)

%saveas(gcf,'COMPSIGNsingle','epsc')