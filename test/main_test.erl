-module(main_test).

-export([start/0]).

start() ->
  Results = [
    proper:module(toys_proper)
  ],
  case lists:flatten(Results) of
    [] -> erlang:halt(0);
    _ -> erlang:halt(1)
  end.
