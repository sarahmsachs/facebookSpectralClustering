a = unique(local_info(:,4));
finalTable = zeros(size(a,1),5);
% finalTable = zeros(4,5);
distinctIndex = 1;
for anum = 2:size(a, 1);
    colVal = a(anum);
    [ adjMatrix, indices ] = makeAdjMatrixForCategory( 4, colVal, local_info, A );
    cutGraph
    finalTable(anum,1) = a(anum);
    numGirlsAbove = sum(1==above(:,distinctIndex));
    numBoysAbove = sum(2==above(:,distinctIndex));
    numGirlsBelow = sum(1==below(:,distinctIndex));
    numBoysBelow = sum(2==below(:,distinctIndex));
    finalTable(anum,2) = numGirlsAbove + numGirlsBelow;
    finalTable(anum,3) = (numBoysAbove + numBoysBelow);
    finalTable(anum,4) = numGirlsAbove/(numGirlsAbove+numGirlsBelow);
    finalTable(anum,5) = numBoysAbove/(numBoysBelow + numBoysAbove);
 end
