function [ adjMatrix ] = makeCompleteGraph(dim)
adjMatrix = zeros(dim,dim);
for i = 1:dim
    for j = 1:dim
        adjMatrix(i,j) = 1;
    end
end


end
