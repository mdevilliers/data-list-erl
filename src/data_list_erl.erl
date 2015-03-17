-module (data_list_erl).

-export([intersperse/2]).

% The intersperse function takes an element and a list 
% and `intersperses' that element between the elements of the list. For example,
% intersperse ',' "abcde" == "a,b,c,d,e"
intersperse(_, []) -> [] ;
intersperse(Seperator, List) when is_list(Seperator), is_list(List) ->
	string:join([[X] || X <- List], Seperator).

