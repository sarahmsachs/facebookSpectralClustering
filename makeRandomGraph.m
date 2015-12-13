function [ adjMatrix ] = makeRandomGraph(dim)
adjMatrix = zeros(dim,dim);
for i = 1:dim
    adjMatrix(i,i) = 1;
end
for row = 1:dim
    for col = 1:row-1
        myRand = round(rand);
        adjMatrix(row,col) = myRand;
        adjMatrix(col,row) = myRand;
        
    end
end

end



