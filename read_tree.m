function res = read_tree(node)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   
%   Read Tree Function: a function used to facilitate
%   reading and understanding the tree "after" performing
%   Heapify() or insertHeapify()
%
%   #################
%   ### ARGUMENTS ###
%   #################
%
%   node       : This function takes a ready heap of type "Node"
%       
%   ##############
%   ### OUTPUT ###
%   ##############
%
%   The output of the function consists of 4 lines:
%
%   1. Nodes in order
%   1. Parent Nodes in order
%   3. Ranks in order
%   4. Edges directions in order
%
%   Example of an output:
%
%               Nodes in order:          1, 2, 3, 5, 10, 9, 
%               Parent nodes in order: NaN, 1, 1, 2, 2, 3,  
%               Ranks in order:          2, 2, 1, 1, 1, 1, 
%               Edge directions in order:, L, R, L, R, L,
%
%   Which translates to:
%
%               (1)2
%               / \
%              /   \
%           (2)2   (3)1
%           / \     /
%          /   \  (9)1
%        (5)1 (10)1
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% initialize the queue we'll use
q = queue();
% path is an array of sorted nodes
path=[];
% the array of parents in order
parents=[];
% the array of ranks in order
ranks=[];
% an array of edge directions in order
edges=[];
% first elements in the rank array
% is the rank of the root node
ranks(1)=node.rank;
% first parent of the root node is nothing!
parents(1)=NaN;
% first element in the sorted array is the root node
path(1) = node.key;

% check if the root node has children
if(node.left~=0 || node.right~=0)
    % if there is a left child then
    % we'll set the direction of edge to left
    % and the parent of the left node to the root node
    % and then queue that node to deal with it later
    if(node.left ~=0)
        edges=[edges 'L '];
        parents = [parents node.key];
        q.add(node.left)
        path = [path node.left.key];
        
    end
    % same explanation as the left node
    if(node.right ~=0)
        edges=[edges 'R '];
        parents = [parents node.key];
        q.add(node.right)
        path = [path node.right.key];
        
    end
else
end
% here we'll look at the queue which contains the children nodes
while(~q.isEmpty)
    % pop the first child and put its rank in the
    % ranks array
    child=pop(q);
    ranks= [ranks child.rank];
    
    % here we'll check if the child node has other
    % children and then accordingly set the edge,
    % the parents, and queue the children
    if(child.left~=0 || child.right~=0)
        if(child.left ~=0)
            edges=[edges 'L '];
            parents=[parents child.key];
            q.add(child.left)
            path = [path child.left.key];
            
        end
        if(child.right ~=0)
            edges=[edges 'R '];
            parents=[parents child.key];
            q.add(child.right)
            path = [path child.right.key];
            
        end
    else
    end
end

% printing the nodes in order
fprintf('\n Nodes in order:          ');
for i=1:length(path)
    fprintf('%d, ',path(i));
end

% printing the parents
fprintf('\n Parent nodes in order: ');
for i=1:length(parents)
    fprintf('%d, ',parents(i));
end

% printing the ranks
fprintf('\n Ranks in order:          ');
for i=1:length(ranks)
    fprintf('%d, ',ranks(i));
end

% remove first element in the array of nodes
% which is root and also the parents which is NaN
% then split the string of edges and remove the last element
% which will be an empty white space
path(1)=[];
parents(1)=[];
if length(edges)>1
    edges =strsplit(edges);
end
edges=edges(1:end-1);

% now print the edges
fprintf('\n Edge directions in order:');
for i=1:length(edges)
    fprintf(', ');
    fprintf(edges{i});
end
fprintf('\n');
% this is the plotting process
%G= digraph(parents,path);
%plot(G);
end