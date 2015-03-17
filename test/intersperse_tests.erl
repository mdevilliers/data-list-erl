-module (intersperse_tests).

-include_lib("eunit/include/eunit.hrl").


intersperse_basic_test() ->
	"a,b,c,d,e" = data_list_erl:intersperse(",", "abcde"),
	"a,!,b,!,c,!,d,!,e" = data_list_erl:intersperse(",!,", "abcde").

intersperse_empty_test() ->
	[] = data_list_erl:intersperse(",", "").

intersperse_empty_seperator_test() ->
	"abcde" = data_list_erl:intersperse("", "abcde").