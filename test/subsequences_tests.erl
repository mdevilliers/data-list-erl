-module (subsequences_tests).

-include_lib("eunit/include/eunit.hrl").

basic_subsequences_test() ->
	[[1],[1,3],[1,2,3],[1,2],[2],[2,3],[3],[]] = data_list_erl:subsequences([1,2,3]).