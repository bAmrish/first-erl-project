%%%-------------------------------------------------------------------
%%% @author abharatiya
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 27. Jul 2016 11:47 AM
%%%-------------------------------------------------------------------
-module(color).
-author("abharatiya").

%% API
-export([]).
-define(is_channel(V), (is_float(V) andalso V >= 0 andalso V=<1)).

new (R, G, B, A)
  when ?is_channel(R), ?is_channel(G), ?is_channel(B), ?is_channel(A) ->
    #{red => R, green => G, blue => B, alpha => A}.