pwd()
readdir()
using CSV, DataFrames, Statistics


# Julia Data types ===============================================

a = [1, 2, 3, 4]
typeof(a)

t = (2, 3)
typeof(t)

nt = (name = "Oumar", age = 45)
typeof(nt)

m = [[1 2 3], [4 5 6], [7 8 9]]
typeof(m)
m1 = [[1,2,3] [4,5,6] [7,8,9]]
m2 = [[1 2 3]; [4 5 6]; [7 8 9]]
typeof(m1)
typeof(m2)

d = Dict("name" => "Oumar", "age" => 45)
typeof(d)

df = DataFrame(
    name = ["Oumar", "Joanna", "Aye"],
    gender = ["male", "female", "female"],
    age = [45, 39, 11],
    french = [true, true, false],
    wgt = [145.6, 130.5, 50.2]
)

typeof(df)


# Control workflow ================================================

# for loop
collect(1:10)

for i in 1:3, j in 1:3
    print("i=", i, " j=", j, "\n")
end

for i in 1:3, j in 1:3
    print("$i * $j = ", i*j, "\n")
end


fl
for i ∈ collect(1:5)
    println(i ^ 2)
end

mat = zeros(Int, 3, 3)
row = 3
col = 3
for r in 1:row
    for c in 1:col
        mat[r,c] = r * c
    end
end

mat


vec1 = []
for r = 1:row
    for c = 1:col
        push!(vec1, r * c)
    end
end
mat2 = reshape(vec1, 3, 3)

vec2 = []
for r ∈ 1:row
    for c ∈ 1:col
        push!(vec2, r + c)
    end
end
mat2 = reshape(vec2, 3, 3)


# if else
for i ∈ 1:5
    if i < 3
        println("$i is less that 3")
    elseif i == 3
        println("$i equal 3")
    else
        println("$i is greater than 3")
    end
end

# while loop

w = 1
while w < 5
    println("w is equal to $w, so less than 5")
    w += 1
end

# functions =============================================

function prod(x, y)
    return x * y
end
methods(prod)
prod(3, 4)
prod(2.5, 3.5)


function valsum(x::Int64, y::Int64)
    x + y
end
methods(valsum)

valsum(3, 4)
valsum(2.5, 3.5)

function valsum(x::Float64, y::Float64)
    x + y
end
methods(valsum)
valsum(2.5, 3.5)
valsum(2.5, "nbr")
valsum(2.5, 3)

function valsum(x::Int64, y::Float64)
    x + y
end
function valsum(x::Float64, y::Int64)
    x + y
end
methods(valsum)
valsum(2.5, 3)
valsum(2, 3.5)

using Plots
rand(4)
histogram(rand(100))