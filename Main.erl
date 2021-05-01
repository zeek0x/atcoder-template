-module('Main').
-export([main/1]).

solve() ->
    L = input("~d~d"),
    output(L),
    ok.

main(_) ->
    solve(),
    halt().

input(Pat) ->
    {ok, L} = io:fread("", Pat),
    L.

output(L) ->
    output(L, " ").

output(L, Sep) ->
    Pat = lists:concat(lists:join(Sep, lists:duplicate(length(L), "~p"))),
    io:format(Pat ++ "~n", L).
