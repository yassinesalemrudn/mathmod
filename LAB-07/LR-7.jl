1032204121%70+1

using Plots
using DifferentialEquations

a = 0.83
b = 0.00013
N = 885
n = 3

tmax = 5
tspan = (0, tmax)
t = collect(LinRange(0, tmax, 500))

function syst(dy, y, p, t)
    dy[1] = (a+b*y[1])*(N-y[1])
end

prob = ODEProblem(syst, [n], tspan)
sol = solve(prob, saveat=t)

plot(sol)

savefig("04.png")

a = 0.000024
b = 0.29
N = 885
n = 3

tmax = 0.2
tspan = (0, tmax)
t = collect(LinRange(0, tmax, 500))

function syst(dy, y, p, t)
    dy[1] = (a+b*y[1])*(N-y[1])
end

prob = ODEProblem(syst, [n], tspan)
sol = solve(prob, saveat=t)

plot(sol)

savefig("05.png")

a = 0.5
b = 0.3
N = 885
n = 3

tmax = 0.5
tspan = (0, tmax)
t = collect(LinRange(0, tmax, 500))

function syst(dy, y, p, t)
    dy[1] = (a*t+b*t*y[1])*(N-y[1])
end

prob = ODEProblem(syst, [n], tspan)
sol = solve(prob, saveat=t)

plot(sol)

savefig("06.png")


