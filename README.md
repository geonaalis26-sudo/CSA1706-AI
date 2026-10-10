START

Create the graph

Initialize visited = empty list
Initialize queue = [1]

WHILE queue is not empty

    Remove the first node from queue

    IF node is not in visited THEN

        Print node
        Add node to visited

        FOR each neighbour of node

            IF neighbour is not in visited THEN
                Add neighbour to queue
            END IF

        END FOR

    END IF

END WHILE

STOP
