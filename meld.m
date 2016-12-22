function heap = meld(h1,h2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Meld Function
%
%   #################
%   ### ARGUMENTS ###
%   #################
%   
%   h1, h2       : Pass two heaps you want to meld
%                  both heaps should be of type "Node"
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% if the heaps are empty
if(length(h1)==0)
    heap=h2;
elseif(length(h2)==0)
    heap=h1;
    % if the heaps are not empty
elseif(length(h2)~=0 && length(h1)~=0)
    heap=mesh(h1,h2);
end


end