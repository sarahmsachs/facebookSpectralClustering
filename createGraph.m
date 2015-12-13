function [ coordinates ] = createGraph( adjMatrix )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
numVertices = size(adjMatrix,1);
dimGraph = floor(sqrt(numVertices));
count = 0;
coordinates = zeros(numVertices, 2);

for row = 1:dimGraph
    for col = 1:dimGraph
        count = count+1;
        eps1 = rand(1,1);
        eps2 = rand(1,1);
        if (count <= numVertices)
            coordinates(count,1) = row+eps1;
            coordinates(count,2) = col+eps2;
        end
    end
end
row = row + 1;
col = 0;
while (count < numVertices)
    eps1 = rand(1,1);
        eps2 = rand(1,1);
    count = count + 1;
    col = col + 1;
    coordinates(count,1) = row+eps1;
    coordinates(count,2) = col+eps2;
end


end


