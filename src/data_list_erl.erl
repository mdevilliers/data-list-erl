-module (data_list_erl).

-export([intersperse/2]).
-export([init/1]).
-export([null/1]).
-export ([permutations/1]).
-export ([subsequences/1]).

% The intersperse function takes an element and a list 
% and `intersperses' that element between the elements of the list. For example,
% intersperse (',' "abcde") = "a,b,c,d,e"

-spec intersperse(_,[any()]) -> [any()].

intersperse(_, []) -> [] ;
intersperse(_,[A]) -> [A];
intersperse(Seperator, List) when is_list(Seperator) ->
	string:join([[X] || X <- List], Seperator);
intersperse(Seperator, [H|T]) ->
	[H, Seperator|intersperse(Seperator, T)].

% Return all the elements of a list except the last one. The list must be non-empty.
% Review : is empty return value correct?

-spec init(any()) -> any() | empty.

init([]) -> empty;
init(List) when is_list(List),length(List) == 1 -> List;
init(List) when is_list(List) -> tl(List).


% Test whether a list is empty.

-spec null([any()]) -> boolean().

null([]) -> true;
null(List) when is_list(List), length(List) > 0 -> false. 

% The 'permutations' function returns the list of all permutations of the argument.
% permutations "abc" = ["abc","bac","cba","bca","cab","acb"]
% from http://www.erlang.org/doc/programming_examples/list_comprehensions.html

-spec permutations([any()]) -> [[any()]].

permutations([]) -> [[]];
permutations(List)  when is_list(List) -> [[H|T] || H <- List, T <- permutations(List--[H])].


% The 'subsequences' function returns the list of all subsequences of the argument.
% subsequences ("abc") = ["","a","b","ab","c","ac","bc","abc"]
% TODO : resolve sending strings rather than arrays...shrug
-spec subsequences([any()]) -> [[any()]].


subsequences([]) -> [[]];
subsequences([H|T]) -> PT = subsequences(T),
  subsequences(H, PT, PT).
 
subsequences(_, [], Acc) -> Acc;
subsequences(X, [H|T], Acc) -> subsequences(X, T, [[X|H]|Acc]).

% TODO
% and(_List, _Expected) -> true.
% any(_List, _Expected) -> true.
% all(_List, _Expected) -> true.
% repeat(_Value, _N) -> [Value,Value]. %infinite
% replicate(Value, _N) -> [Value,Value].
% cycle(Value) -> [Value,Value]. %infinite
% take(_List, _N) -> [].
% drop(_List, _N) -> [].
% span(_List,_Fun) -> [].
% break(_List,_Fun) -> [].
% stripPrefix(List) -> [].
% group(_List) -> [].
% inits(_List) -> [].
% tails(_List) -> [].
% isPrefixOf(_List, _List2) -> [].
% isSuffixOf(_List, _List2) -> [].
% isInfixOf(_List, _List2) -> [].
% elem(_List, _Elem) -> true.
% notElem(_List, _Elem) -> true.








