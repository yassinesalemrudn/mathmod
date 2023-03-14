1032204121%70 + 1

N = 18000
I = 118
R = 18
S = N-I-R

a = 0.05
b = 0.02
tspan = (0, 200)
t = collect(LinRange(0, 200, 1000))
u0 = [S; I; R]

using Plots
using DifferentialEquations

function syst(dy, y, p, t)
    dy[1] = 0
    dy[2] = b*y[2]
    dy[3] = -b*y[2]
end

prob=ODEProblem(syst, u0, tspan)
sol = solve(prob, saveat=t)

plot(sol)

savefig("03.png")

function syst(dy, y, p, t)
    dy[1] = -a*y[1]
    dy[2] = a*y[1]-b*y[2]
    dy[3] = b*y[2]
end

prob=ODEProblem(syst, u0, tspan)
sol = solve(prob, saveat=t)

plot(sol)

savefig("04.png")


