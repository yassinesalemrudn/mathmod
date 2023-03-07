1032204121%70+1

using Plots
using DifferentialEquations

x0 = 4
y0 = 10
u0 = [x0; y0]

t = collect(LinRange(0, 100, 1000))
tspan = (0, 100)

a = 0.24
b = 0.044
c = 0.44
d = 0.024

function syst(dy, y, p, t)
    dy[1] = -a*y[1] + b*y[1]*y[2]
    dy[2] = c*y[2] - d*y[1]*y[2]
end

prob = ODEProblem(syst, u0, tspan)

sol = solve(prob, saveat = t)

plot(sol)

savefig("03.png")

plot(sol, idxs=(1,2))

savefig("04.png")


