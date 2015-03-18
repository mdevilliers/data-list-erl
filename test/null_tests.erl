-module (null_tests).

-include_lib("eunit/include/eunit.hrl").


null_basic_test() ->
	true = data_list_erl:null([]),
	true = data_list_erl:null(""),
	false = data_list_erl:null([1,2,3]),
	false = data_list_erl:null("abc").

