function [ adjMatrix ] = MakeBasicGraph
adjMatrix = zeros(5,5);
for i = 1:5
    adjMatrix(i,i) = 1;
    adjMatrix(3,i) = 1;
end

adjMatrix(1,2) = 1;
adjMatrix(1,3) = 1;
adjMatrix(2,1) = 1;
adjMatrix(2,3) = 1;
adjMatrix(4,5) = 1;
adjMatrix(4,3) = 1;
adjMatrix(5,4) = 1;
adjMatrix(5,3) = 1;
end