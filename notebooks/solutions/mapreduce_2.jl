# see if point is in circle, store 1.0
function mapper(x)
    (sqrt(sum(x.^2)) < 1.0, 1.0)
end

# count the number of points in the circle, total points
function reducer(x, y)
    x .+ y
end
