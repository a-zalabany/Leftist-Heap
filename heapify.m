function heap = heapify (list)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Leftist Tree Heapify Function
%
%   #################
%   ### ARGUMENTS ###
%   #################
%
%   list    : the list of numbers you need to creat 
%             a leftist tree from
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% create an empty array of nodes
nodes=[];

% fill the array of nodes with the nodes
% created from the list
for i=1:length(list)
    nodes=[nodes Node(list(i))];
end

% in case the nodes array has more or equal than 2 nodes
while(length(nodes)>=2)
    % meld first and second node then put the result at the end
    % of the nodes array
    nodes = [nodes meld(nodes(1),nodes(2))]
    nodes(1:2)=[];
end
% if the node array has no nodes
if (length(nodes))==0
    heap= nodes;
else
    heap=nodes(1);
end


end