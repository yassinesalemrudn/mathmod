n = 1.9
s= 5.9
fi = 3*%pi/4

function dr=f(tetha, r)
    dr=r/sqrt(n^2-1)
endfunction

function xt=f2(t)
    xt=cos(fi)*t
endfunction

tetha0 = 0
tetha = 0:0.01:2*%pi
t=0:1:250

r0 = s/(n+1)
r = ode(r0, tetha0, tetha, f)
plot2d(t, f2(t), style = color('red'))
polarplot(tetha, r, style = color('green'))

figure()
r0 = s/(n-1)
r = ode(r0, tetha0, tetha, f)
plot2d(t, f2(t), style = color('red'))
polarplot(tetha, r, style = color('green'))
