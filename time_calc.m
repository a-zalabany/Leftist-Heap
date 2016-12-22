function [] = time_calc(n)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Performance Calculation function
%
%   #################
%   ### ARGUMENTS ###
%   #################
%
%   n           : the number of elements in the heap
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%generate random integers from 1 to 1000
testarray= randi([1,1000],1,n);

% testing method: heapify
% begin counting
begin= tic;
% executing the function
heapify(testarray);
% end counting
stop1=toc(begin);
% testing method: insertHeapify
% send the empty heap that we will insert to
emptyHeap=[];
% begin counting
begin= tic;
% executing the function
insertHeapify(emptyHeap,testarray);
% end tcounting
stop2=toc(begin);
fprintf('The heapify took %f seconds \n' ,stop1);
fprintf('The insert took %f seconds \n' ,stop2);
fprintf('The speed factor is %f \n' ,stop1/stop2);



end