#!/bin/ruby
def findPoint(px, py, qx, qy)
    [2*qx-px, 2*qy-py]
end

n = gets.to_i
n.times do |n_itr|
    pxPyQxQy = gets.rstrip.split

    px = pxPyQxQy[0].to_i

    py = pxPyQxQy[1].to_i

    qx = pxPyQxQy[2].to_i

    qy = pxPyQxQy[3].to_i

    result = findPoint px, py, qx, qy

    p result.join " "
end
