-module (permutation_tests).

-include_lib("eunit/include/eunit.hrl").


basic_permutations_test() ->
	["abc","acb","bac","bca","cab","cba"] = data_list_erl:permutations("abc"),
	[[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]] = data_list_erl:permutations([1,2,3]).