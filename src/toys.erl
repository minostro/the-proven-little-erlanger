-module(toys).

%% API exports
-export([is_an_atom/1]).

%%====================================================================
%% API functions
%%====================================================================
is_an_atom(Atom) when is_atom(Atom) ->
  true;
is_an_atom(_) ->
  false.


%%====================================================================
%% Internal functions
%%====================================================================