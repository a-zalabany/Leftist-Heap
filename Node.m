classdef Node < handle
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Node Class
%
%   This class is data type of a Node in a leftist tree
%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % member variables of the node
    % children, rank and key
    properties
        left=0
        right=0
        key;
        rank=1;
    end
    % the constructor sets the key of node
    methods
        function heap = Node(myKey)
            heap.key=myKey;
        end
    end
end
