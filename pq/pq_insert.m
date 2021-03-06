% function pq = pq_insert(pq, id, f)
% /**
%      * Insert an element at the given f.  If the queue is full,
%      * throw an exception.
%      * @param id A number between 0 and getSize()-1.  We can use the
%      * ID later to reset the element's f.  It is an error to
%      * attempt to put two distinct elements with the same ID in the
%      * queue simultaneously.
%      * @param f The numerical f.  (Lower numbers mean the
%      * element will be accessed sooner, which some might say is
%      * reversed from the usual definition of f.)
%      */
% Adapted from Yang Gu, 2006, ported from Geoff's pathplan code

function pq = pq_insert(pq, id, g, f, parent)

    pq.size = pq.size + 1;

    if pq.size > pq.maxsize
        error('Queue full');
    end

    pq.ids(pq.size) = id;
    pq.g(pq.size) = g;
    pq.f(pq.size) = f;
    pq.parents(pq.size) = parent;
    pq.directory(id) = pq.size;

    pq = pq_percolateUp(pq, pq.size);
end
