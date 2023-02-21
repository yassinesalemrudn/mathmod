model pr
Real y11(start=50000);
Real y21(start=39000);
parameter Real a=0.445;
parameter Real b=0.806;
parameter Real c=0.419;
parameter Real h=0.703;

Real y12(start=50000);
Real y22(start=39000);
parameter Real a2=0.203;
parameter Real b2=0.705;
parameter Real c2=0.203;
parameter Real h2=0.801;

equation
  der(y11) = -a*y11 - b*y21 + sin(time+7)+1;
  der(y21) = -c*y11 - h*y21 + cos(time+4)+1;
  
equation
  der(y12) = -a2*y12 - b2*y22 + sin(time*2);
  der(y22) = -c2*y12*y22 - h2*y22 + 2*cos(time);
end pr;
