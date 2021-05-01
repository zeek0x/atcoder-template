-module('Main').
-export([main/1]).

-define(OUT(S), io:format("~s~n", [S])).
-define(OUT_L(L, Sep),
    begin
        Pat = lists:concat(lists:join(Sep, lists:duplicate(length(L), "~p"))),
        io:format(Pat ++ "~n", L)
    end).
-define(OUT_L(L), ?OUT_L(L, " ")).

solve() ->
    [S] = in("~s"),
    % [N] = input("~d")
    ?OUT(S),
    ok.

main(_) ->
    solve(),
    halt().

in(Pat) ->
    {ok, L} = io:fread("", Pat),
    L.
