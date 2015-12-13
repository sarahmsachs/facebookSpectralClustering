function [ laplacianMatrix ] = makeLaplacian( adjMatrix )
laplacianMatrix = zeros(5,5);
for row = 1:size(adjMatrix, 1)
     deg = -1;
    for col = 1:size(adjMatrix, 2)
        if (adjMatrix(row,col) == 1)
            laplacianMatrix(row,col) = -1;
            deg = deg+1;
        end
    end
    laplacianMatrix(row, row) = deg;
    
end 

end

