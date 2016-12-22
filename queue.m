classdef queue < handle
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
%   Queue Class
%
%   This class represents a queue of nodes and its 
%   functions used to maintain the data structure
%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    properties
        % the memeber variables are
        % the queue of nodes and two pointers
        myQueue= Node(-1);
        front =0;
        rear=0;
    end
    
    methods
        % to check if the queue is empty
        function res = isEmpty(q)
            % the case where both pointers are pointing at 0
            if q.front==0 && q.rear==0
                res=1;
            else
                res=0;
            end
        end
        % to add an item to the q
        function add(q, item)
            % this is a special case where the queue
            % is still at the beginning and both pointers
            % are pointing to position 0
            if(q.isEmpty==1)
                q.rear =1;
                q.front =1;
                q.myQueue(1)=item;
            else
                q.rear = q.rear+1;
                q.myQueue(q.rear)=item;
            end
        end
        % to pop an element from q
        function res= pop(q)
            % self explanitory
            if (q.isEmpty==1)
                error( 'Queue is empty' );
                % in the case that there is only one element
                % in the queue we'll pop it and then return to 0
            elseif(q.rear==q.front)
                res= q.myQueue(q.rear);
                q.front=0;
                q.rear=0;
                q.myQueue=Node(-1);
                
            else
                % the normal case
                res=q.myQueue(q.front);
                q.front = q.front+1;
            end
        end
        
    end
    
    
end
