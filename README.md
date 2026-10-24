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
START

Create a graph

Initialize visited = empty list
Initialize stack = [1]

WHILE stack is not empty DO

    node = POP(stack)

    IF node is not in visited THEN

        Add node to visited

        Add the adjacent nodes of node to stack
        in reverse order

    END IF

END WHILE

PRINT visited

STOP

QUESTION 3:BFS
START

Create a graph

Initialize visited = empty list
Initialize queue = [1]

WHILE queue is not empty DO

    node = REMOVE the first element from queue

    IF node is not in visited THEN

        Add node to visited

        Add all adjacent nodes of node to queue

    END IF

END WHILE

PRINT visited

STOP

QUESTION 3:DFS
START

Create a graph

Initialize visited = empty list
Initialize stack = [1]

WHILE stack is not empty DO

    node = REMOVE the last element from stack

    IF node is not in visited THEN

        Add node to visited

        Add adjacent nodes of node to stack
        in reverse order

    END IF

END WHILE

PRINT visited

STOP

QUESTION 4:BFS
START

Create a graph

Initialize visited = empty list
Initialize queue = [0]

WHILE queue is not empty DO

    node = REMOVE the first element from queue

    IF node is not in visited THEN

        Add node to visited

        Add all adjacent nodes of node to queue

    END IF

END WHILE

PRINT visited

STOP


QUESTION 4:DFS
START

Create a graph

Initialize visited = empty list
Initialize stack = [0]

WHILE stack is not empty DO

    node = REMOVE the last element from stack

    IF node is not in visited THEN

        Add node to visited

        Add adjacent nodes of node to stack
        in reverse order

    END IF

END WHILE

PRINT visited

STOP

QUESTION 1:UCS

START

Create a weighted graph

Initialize queue = [(0, S)]
Initialize visited = empty list
Initialize parent = empty dictionary
Initialize cost[S] = 0

WHILE queue is not empty DO

    Sort queue by cost

    Remove the first element from queue
    Store its cost and node

    IF node is in visited THEN
        CONTINUE
    END IF

    Add node to visited
    PRINT visited node

    IF node = G THEN
        BREAK
    END IF

    FOR each neighbor of node DO

        new_cost = current_cost + edge cost

        IF neighbor is not in cost
           OR new_cost < cost[neighbor] THEN

            Update cost[neighbor] = new_cost
            Update parent[neighbor] = node

            Add (new_cost, neighbor) to queue

        END IF

    END FOR

END WHILE

Initialize path = empty list
Set node = G

WHILE node exists in parent DO

    Add node to path
    Set node = parent[node]

END WHILE

Add S to path
Reverse path

PRINT path
PRINT total cost of G

STOP

QUESTION 2:UCS
START

Create a weighted graph

Initialize handwritten_path = [V1, V3, V4, V5, V6]
Initialize total_weight = 0
Initialize calculation_steps = empty list

PRINT "Path Analysis"

FOR i = 0 TO length(handwritten_path) - 2 DO

    u = handwritten_path[i]
    v = handwritten_path[i + 1]

    IF edge u -> v exists in graph THEN

        weight = graph[u][v]

        PRINT edge and weight

        Add weight to calculation_steps
        total_weight = total_weight + weight

    ELSE

        PRINT "Error: Edge does not exist"
        STOP the loop

    END IF

END FOR

PRINT calculation_steps and total_weight
PRINT "Total Path Weight"

STOP

QUESTION 1:WATER JUG
START

Initialize jug1 = 0
Initialize jug2 = 0

WHILE jug1 is not equal to 4 DO

    IF jug1 = 0 THEN
        Fill jug1 to 5 litres
        PRINT jug1, jug2

    ELSE IF jug2 < 3 AND jug1 > 0 THEN
        pour = minimum of jug1 and (3 - jug2)

        jug1 = jug1 - pour
        jug2 = jug2 + pour

        PRINT jug1, jug2

    ELSE IF jug2 = 3 THEN
        Empty jug2
        PRINT jug1, jug2

    ELSE IF jug1 = 4 THEN
        BREAK

    END IF

END WHILE

STOP

QUESTION 2:WATER JUG

BEGIN

    SET jug12 = 12
    SET jug8 = 0
    SET jug5 = 0

    PRINT jug12, jug8, jug5

    STEP 1:
        SET jug8 = 8
        SET jug12 = jug12 - 8
        PRINT jug12, jug8, jug5

    STEP 2:
        SET jug5 = 5
        SET jug8 = jug8 - 5
        PRINT jug12, jug8, jug5

    STEP 3:
        SET jug12 = jug12 + jug5
        SET jug5 = 0
        PRINT jug12, jug8, jug5

    STEP 4:
        SET jug5 = jug8
        SET jug8 = 0
        PRINT jug12, jug8, jug5

    STEP 5:
        SET jug8 = 8
        SET jug12 = jug12 - 8
        PRINT jug12, jug8, jug5

    STEP 6:
        SET pour = 5 - jug5
        SET jug5 = jug5 + pour
        SET jug8 = jug8 - pour
        PRINT jug12, jug8, jug5

    STEP 7:
        SET jug12 = jug12 + jug5
        SET jug5 = 0
        PRINT jug12, jug8, jug5

END

QUESTION 3:WATER JUG

BEGIN

    SET jug3 = 0
    SET jug5 = 0
    SET jug8 = 8

    PRINT jug3, jug5, jug8

    STEP 1: Transfer 8L to 5L
        SET jug5 = 5
        SET jug8 = 3
        PRINT jug3, jug5, jug8

    STEP 2: Transfer 5L to 3L
        SET jug3 = 3
        SET jug5 = 2
        PRINT jug3, jug5, jug8

    STEP 3: Transfer 3L to 8L
        SET jug8 = jug8 + jug3
        SET jug3 = 0
        PRINT jug3, jug5, jug8

    STEP 4: Transfer 5L to 3L
        SET jug3 = 2
        SET jug5 = 0
        PRINT jug3, jug5, jug8

    STEP 5: Transfer 8L to 5L
        SET jug5 = 5
        SET jug8 = jug8 - 5
        PRINT jug3, jug5, jug8

    STEP 6: Transfer 5L to 3L
        SET jug5 = 4
        SET jug3 = 3
        PRINT jug3, jug5, jug8

    STEP 7: Transfer 3L to 8L
        SET jug8 = jug8 + jug3
        SET jug3 = 0
        PRINT jug3, jug5, jug8

END

QUESTION-1 A STAR SEARCH

START

1. Initialize OPEN list with start node S
2. Set g[S] = 0
3. Initialize PARENT as empty

4. WHILE OPEN list is not empty:

       Select node CURRENT with minimum
       f(n) = g(n) + h(n)

       Remove CURRENT from OPEN list

       IF CURRENT = G:
           BREAK

       FOR each NEIGHBOR of CURRENT:

           COST = g[CURRENT] + edge cost

           IF NEIGHBOR is not visited
           OR COST < g[NEIGHBOR]:

               g[NEIGHBOR] = COST
               PARENT[NEIGHBOR] = CURRENT

               IF NEIGHBOR is not in OPEN:
                   Add NEIGHBOR to OPEN

5. Set NODE = G
6. Initialize PATH as empty

7. WHILE NODE has a parent:
       Add NODE to PATH
       NODE = PARENT[NODE]

8. Add S to PATH
9. Reverse PATH

10. Print PATH
11. Print total cost g[G]

STOP

QUESTION 2-A STAR SEARCH

START

1. Initialize OPEN list with A
2. Set g[A] = 0
3. Initialize PARENT as empty

4. WHILE OPEN list is not empty:

       Select CURRENT node with minimum
       f(n) = g(n) + h(n)

       Remove CURRENT from OPEN list
       Print CURRENT

       IF CURRENT = G:
           BREAK

       FOR each NEIGHBOR of CURRENT:

           COST = g[CURRENT] + edge cost

           IF NEIGHBOR is not in g
           OR COST < g[NEIGHBOR]:

               g[NEIGHBOR] = COST
               PARENT[NEIGHBOR] = CURRENT

               IF NEIGHBOR is not in OPEN:
                   Add NEIGHBOR to OPEN

5. Set NODE = G
6. Initialize PATH as empty

7. WHILE NODE has a parent:
       Add NODE to PATH
       NODE = PARENT[NODE]

8. Add A to PATH
9. Reverse PATH

10. Print PATH
11. Print total cost g[G]

STOP






