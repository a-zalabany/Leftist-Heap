function h = insert (h, number)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Insert Function
%
%   #################
%   ### ARGUMENTS ###
%   #################
%   
%   h           : The heap you want to insert into
%
%   number      : Single number you want to insert to the heap              
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% construct a node from the number
item = Node(number);
% call the meld
h = meld(item,h);
end