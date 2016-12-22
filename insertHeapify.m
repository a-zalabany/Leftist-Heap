function h = insertHeapify(h, list)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Leftist Tree Insert
%
%   #################
%   ### ARGUMENTS ###
%   #################
%   
%   h       : The heap you want to insert to.
%             when starting a new heap, you have to pass
%             h as an empty array -->  h=[];
%
%   list    : The list of numbers you need to creat 
%             a leftist tree from
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% traverse the list and keep inserting number by number
for i=1:length(list)
    h= insert(h,list(i));
end
end