-module (intersperse_tests).

-include_lib("eunit/include/eunit.hrl").


intersperse_basic_test() ->
	[1,99,2,99,3,99,4,99,5] = data_list_erl:intersperse(99, [1,2,3,4,5]),
	"aAbAcAdAe" = data_list_erl:intersperse("A", "abcde").

intersperse_empty_test() ->
	[] = data_list_erl:intersperse(",", "").
