-module(loop).
-export([run/1]).

run(start) ->
    Ts=erlang:system_time()/1000000000,
    run(10000000),
    Te=erlang:system_time()/1000000000,
    io:fwrite("~p\n",[Te-Ts]);
run(0) ->
    io:fwrite("");
run(C) ->
    run(C-1).
