function h1 = mesh(h1,h2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Mesh Function
%
%   #################
%   ### ARGUMENTS ###
%   #################
%   
%   h1, h2       : Pass two heaps you want to mesh
%                  both heaps should be of type "Node"
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% swap h1 and h2 if h1 is bigger in key
if(h1.key>h2.key)
    temp = h1;
    h1=h2;
    h2=temp;
end

% in case the right child is empty we'll put the node in the right
if(h1.right ==0)
    h1.right=h2;
    % if the right child is not empty then we'll mesh the right node
elseif(h1.right~=0)
    h1.right= mesh(h1.right,h2);
    
end
% if the left node is empty then we'll put the right in it instead
if(h1.left==0)
    h1.left=h1.right;
    h1.right=0;
    % if the rank of the left node is smaller then we'll swap
elseif(h1.left.rank < h1.right.rank)
    temp=h1.left;
    h1.left=h1.right;
    h1.right=temp;
end
% this function will set the rank
h1.rank = setRank(h1);

end