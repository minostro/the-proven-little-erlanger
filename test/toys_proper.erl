-module(toys_proper).
-include_lib("proper/include/proper.hrl").

prop_is_atom() ->
  ?FORALL(Element, atom(),
    toys:is_an_atom(Element) =:= true).

prop_is_not_atom() ->
  ?FORALL(Element, any(),
    ?IMPLIES(not is_atom(Element), toys:is_an_atom(Element) =:= false)).
