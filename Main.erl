-module('Main').
-export([main/1]).

-define(OUT(P), io:format("~p~n", [P])).
-define(OUT_S(S), io:format("~s~n", [S])).
-define(OUT_L(L, Sep), io:format(lists:concat(lists:join(Sep, lists:duplicate(length(L), "~p"))) ++ "~n", L)).
-define(OUT_L(L), ?OUT_L(L, " ")).

solve() ->
    [S] = in("~s"),
    % [N] = in("~d"),
    % Pat = "~d" ++ lists:append(lists:duplicate(N-1, " ~d")),
    % L = in(Pat),
    ?OUT_S(S),
    ok.

main(_) ->
    solve(),
    halt().

in(Pat) ->
    {ok, L} = io:fread("", Pat),
    L.
