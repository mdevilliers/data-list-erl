-module (init_tests).

-include_lib("eunit/include/eunit.hrl").


basic_init_test() ->
	[2,3,4,5] = data_list_erl:init([1,2,3,4,5]),
	[1] = data_list_erl:init([1]),
	["2","3","4","5"] = data_list_erl:init(["1","2","3","4","5"]).

init_empty_test() ->
	empty = data_list_erl:init([]).
