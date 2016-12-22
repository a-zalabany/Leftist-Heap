function rank = setRank(myNode)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Rank Setting Function
%
%   #################
%   ### ARGUMENTS ###
%   #################
%   
%   myNode      : Pass the node you want to set the rank for
%                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% in case there is a missing child
% then the rank will be automatically 1
if(myNode.left==0 || myNode.right==0)
    myNode.rank=1;
else
    % in other cases I'll use the minimum function
    myNode.rank=1+min(myNode.left.rank, myNode.right.rank);
end
rank=myNode.rank;
end
