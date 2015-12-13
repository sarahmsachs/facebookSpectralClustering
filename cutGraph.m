function [spectralEmbedCoordinates ] = cutGraph( adjMatrix )
%CUTGRAPH Summary of this function goes here
%   Detailed explanation goes here
numVertices = size(adjMatrix,1);
laplacian = makeLaplacian(adjMatrix);
[V,D] = eigs(laplacian, 3, 'SA');
%come back to edge cases
eVector = V(:,2);
l = sort(eVector);
C = zeros(numVertices,3); %color array
for row = 1:numVertices
    if (eVector(row) < 0)
        C(row,1) = 1;
    elseif (abs(eVector(row)) == 0)
        C(row,2) = 1;
    else
        C(row,3) = 1;
    end
    
end


notPlanarCoordinates = createGraph(adjMatrix);
spectralEmbedCoordinates = createSpectralEmbedding(V(:, 2:3));

figure
grey = [.8,.8,.8];

subplot (2,1,2)
hold on
gplot(adjMatrix, spectralEmbedCoordinates);
scatter(spectralEmbedCoordinates(:,1), spectralEmbedCoordinates(:,2), 100, C, 'filled');
set(findall(gcf,'type','line'),'LineWidth',3)
set(findall(gcf,'type','line'),'Color',grey, 'LineStyle', ':');
hold off

subplot(2,1,1)
hold on
gplot(adjMatrix, notPlanarCoordinates);
scatter(notPlanarCoordinates(:,1), notPlanarCoordinates(:,2), 100, C, 'filled');
set(findall(gcf,'type','line'),'LineWidth',3)
set(findall(gcf,'type','line'),'Color',grey)
hold off



%create a list of
blue = [0,0,1];
red = [1,0,0];
numVertices = size(adjMatrix,1);
for vNum = 1:numVertices
    if (spectralEmbedCoordinates(vNum,1)>0)
        for connectNum = vNum+1:numVertices
            if(spectralEmbedCoordinates(connectNum,1)>0)
                subplot (2,1,2)
                hold on
                coords = zeros(2,2);
                coords(1,:) = spectralEmbedCoordinates(vNum,:);
                coords(2,:) = spectralEmbedCoordinates(connectNum,:);
                gplot(ones(2,2), coords, 'b');
                set(findall(gcf,'type','line'),'LineWidth',3)
                hold off
                
            end
        end
    end
    if (spectralEmbedCoordinates(vNum,1)<=0)
        for connectNum = vNum+1:numVertices
            if(spectralEmbedCoordinates(connectNum,1)<=0)
                subplot (2,1,2)
                hold on
                coords = zeros(2,2);
                coords(1,:) = spectralEmbedCoordinates(vNum,:);
                coords(2,:) = spectralEmbedCoordinates(connectNum,:);
                gplot(ones(2,2), coords, 'r');
                set(findall(gcf,'type','line'),'LineWidth',3)
                hold off
                
            end
        end
    end
end
hold off

end

