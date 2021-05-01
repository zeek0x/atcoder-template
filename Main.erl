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

output(X) ->
    output(X, " ").

output(X, Sep) when is_list(X) ->
    Pat = lists:concat(lists:join(Sep, lists:duplicate(length(X), "~p"))),
    io:format(Pat ++ "~n", X);
output(X, Sep) ->
    output([X], Sep).
