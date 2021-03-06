% function pq = pq_swap(pq, i, j)
% swap two nodes in the heap
% Adapted from Yang Gu, 2006, ported from Geoff's pathplan code
%  - pq: priority quene
%  - i,j : the index of the node to swap

function pq = pq_swap(pq, i, j)

    % Swapping ids
    swapi = pq.ids(j);
    pq.ids(j) = pq.ids(i);
    pq.ids(i) = swapi;

    % Swapping g
    swapg = pq.g(j);
    pq.g(j) = pq.g(i);
    pq.g(i) = swapg;

    % Swapping f
    swapf = pq.f(j);
    pq.f(j) = pq.f(i);
    pq.f(i) = swapf;

    % Swapping parents
    swapp = pq.parents(j);
    pq.parents(j) = pq.parents(i);
    pq.parents(i) = swapp;
    
    pq.directory(pq.ids(i)) = i;
    pq.directory(pq.ids(j)) = j;

end