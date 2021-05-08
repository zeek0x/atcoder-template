-module('Main').
-export([main/1]).

-define(OUT(__Y__),
    begin
        __X__ = __Y__,
        case is_list(__X__) orelse is_binary(__X__) of
            true -> io:format("~s~n", [__X__]);
            false -> io:format("~p~n", [__X__])
        end
    end).
-define(OUT_L(__L__, __Sep__),
    begin
        __Pat__ = lists:concat(lists:join(__Sep__, lists:duplicate(length(__L__), "~p"))),
        io:format(__Pat__ ++ "~n", __L__)
    end).
-define(OUT_L(__L__), ?OUT_L(__L__, " ")).

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
