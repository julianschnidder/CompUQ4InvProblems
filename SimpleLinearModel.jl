using LinearAlgebra
using Plots

datapoints=[2.4 420;
            2.0 350;
            2.1 310;
            1.8 280;
            1.3 75]
A = hcat(ones(size(datapoints,1)),datapoints[:,1])
b = datapoints[:,2]

x = A\b

line = t -> x[1] + x[2]*t

scatter(datapoints[:,1], datapoints[:,2], legend=:none)
plot!(line, legend=:none)
ylabel!("weight, in pounds")
xlabel!("length, in meters")
