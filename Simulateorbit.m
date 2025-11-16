%Gravitational parameters for earth
mu=398600 ; %km3 per sec2 
%altitude of satallite in km 
alt=2000
re=6371 %radius of earth
ro=re+alt  %radius of orbit

x_sat=ro
y_sat=2000
%line([0 x_sat],[0 y_sat],'color','k','linestyle','--')
%{plot(x_sat ,y_sat, 'ro','MarkerSize',8,'MarkerFaceColor','r')}
hold on;
axis equal;
grid on;
xlabel('x(km)');
ylabel('y(km)');
title('satalite at 2000 km altitude');
theta=linspace(0,2*pi,1000);
x_earth=re*cos(theta);
y_earth=re*sin(theta);
fill(x_earth,y_earth,[0 0.7 1]);

%revolving the satallite
n_frames=200
theta_sat=linspace(0,2*pi,n_frames)

for i=1:n_frames
      x=ro*cos(theta_sat(i));
      y=ro*sin(theta_sat(i));

      h=plot(x,y,'ro','MarkerSize',8,'MarkerFaceColor','r');

      pause(0.05)
      
      delete(h);
      theta_orbit=linspace(0,2*pi,1000);
x_orbit=ro*cos(theta_orbit);
y_orbit=ro*sin(theta_orbit);
plot(x_orbit,y_orbit,'k--')
end
close(v);
