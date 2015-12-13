function [ newMatrix, indices ] = makeAdjMatrixForCategory( colWanted, value, local_info, A )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
col = local_info(:, colWanted);
indices = find(col == value);
newMatrix = A(indices, indices);
end

