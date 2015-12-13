function [ coordinates ] = createSpectralEmbedding( eVectors )
numV = size(eVectors,1);
coordinates = zeros(numV, 2);
for row = 1:numV
    coordinates(row,:) = eVectors(row,:);
end
end