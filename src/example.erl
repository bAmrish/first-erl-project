%%%-------------------------------------------------------------------
%%% @author abharatiya
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 29. Jul 2016 3:01 AM
%%%-------------------------------------------------------------------
-module(example).
-author("abharatiya").

%% API
-export([fibonacci/1]).

fibonacci(0) ->
  0;

fibonacci(N) ->
  N + fibonacci(N - 1).