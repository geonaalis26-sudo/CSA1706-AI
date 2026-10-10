QUESTION 1:BFS
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


QUESTION 2:DFS
START

Create the graph

Initialize visited = empty list

DEFINE DFS(node)

    IF node is not in visited THEN

        Print node
        Add node to visited

        FOR each neighbour of graph[node]
            DFS(neighbour)
        END FOR

    END IF

END DFS

Call DFS(1)

STOP


QUESTION 2:BFS
START

Create the graph

Initialize visited = empty list
Initialize queue = [1]

WHILE queue is not empty

    Remove the first node from queue

    IF node is not in visited THEN

        Add node to visited

        Add all neighbours of node to queue

    END IF

END WHILE

Print "BFS:", visited

STOP

QUESTION 2:DFS

