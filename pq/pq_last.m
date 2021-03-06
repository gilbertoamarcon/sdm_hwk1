% function [pq, res] = pq_pop(pq)
% /**
% Getting highest cost element
% Adapted from Yang Gu, 2006, ported from Geoff's pathplan code

function id = pq_last(pq)
    if pq.size == 0
        error('popped empty queue');
    end
    id = pq.ids(pq.size);
end