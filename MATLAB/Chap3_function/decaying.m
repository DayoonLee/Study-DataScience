function y = decaying(F)
 %Ethyl Alcohol
 a = 0.246;
 b = 0.806;
 x = -pi:pi;
 y = F .* exp(-a.*x).*sin(b.*x);
 plot(x,y)
 hold on;
 
 %Water
 a = 0.250;
 b = 1.000;
 x = -pi:pi;
 y = F .* exp(-a.*x).*sin(b.*x);
 plot(x,y)
 hold on;
 
 %Oil
 a = 0.643;
 b = 1.213;
 x = -pi:pi;
 y = F .* exp(-a.*x).*sin(b.*x);
 plot(x,y)
 
end
 