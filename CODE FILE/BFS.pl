% Graph connections
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(c, g).

% BFS implementation
bfs(Start, Goal, Path) :-
    bfs_queue([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

bfs_queue([[Goal|Path]|_], Goal, [Goal|Path]).

bfs_queue([Path|Rest], Goal, Result) :-
    Path = [Node|_],
    findall([Next,Node|Path],
            (edge(Node, Next),
             \+ member(Next, Path)),
            NewPaths),
    append(Rest, NewPaths, Queue),
    bfs_queue(Queue, Goal, Result).