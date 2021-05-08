-module('Main').
-export([main/1]).

-define(OUT(X),
    begin
        case is_list(X) orelse is_binary(X) of
            true -> io:format("~s~n", [X]);
            false -> io:format("~p~n", [X])
        end
    end).
-define(OUT_L(L, Sep),
    begin
        Pat = lists:concat(lists:join(Sep, lists:duplicate(length(L), "~p"))),
        io:format(Pat ++ "~n", L)
    end).
-define(OUT_L(L), ?OUT_L(L, " ")).

solve() ->
    [S] = in("~s"),
    % [N] = in("~d"),
    % Pat = "~d" ++ lists:append(lists:duplicate(N-1, " ~d")),
    % L = in(Pat),
    ?OUT(S),
    ok.

main(_) ->
    solve(),
    halt().

in(Pat) ->
    {ok, L} = io:fread("", Pat),
    L.
