# see if point is in circle
function mapper(x)
    sqrt(sum(x.^2)) < 1.0
end

# count the number of points in the circle
function reducer(x, y)
    x + y
end
