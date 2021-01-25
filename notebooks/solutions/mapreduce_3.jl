# compute number of samples, average over samples
@everywhere function av_mapper(x)
    n = length(x)
    μ = sum(x) / n
    (n, μ)
end

# combine two (n, μ) tuples
@everywhere function av_reducer(x, y)
    n = x[1] + y[1]
    μ = (x[1] * x[2] + y[1] * y[2]) / n
    (n, μ)
end
