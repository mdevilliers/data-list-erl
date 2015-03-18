-module (data_list_erl).

-export([intersperse/2]).
-export([init/1]).

% The intersperse function takes an element and a list 
% and `intersperses' that element between the elements of the list. For example,
% intersperse (',' "abcde") = "a,b,c,d,e"
intersperse(_, []) -> [] ;
intersperse(_,[A]) -> [A];
intersperse(Seperator, List) when is_list(Seperator) ->
	string:join([[X] || X <- List], Seperator);
intersperse(Seperator, [H|T]) ->
	[H, Seperator|intersperse(Seperator, T)].

% intersperse(Seperator, List) when is_number(Seperator), is_list(List) ->
% 	lists:flatten([[X, Seperator] || X <- List]);
% intersperse(Seperator, List) when is_list(Seperator), is_list(List) ->
% 	string:join([[X] || X <- List], Seperator).

% Return all the elements of a list except the last one. The list must be non-empty.
% Review : is empty return value correct?
init([]) -> empty;
init(List) when length(List) == 1 -> List;
init(List) when is_list(List) -> tl(List).