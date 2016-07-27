%%%-------------------------------------------------------------------
%%% @author abharatiya
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 27. Jul 2016 11:28 AM
%%%-------------------------------------------------------------------
-module(alist).
-author("abharatiya").

%% API
-export([len/1, max/1, min/1, reverse/1]).

%%%-------------------------------------------------------------------
len([]) ->
  0;

len([Head| Rest]) ->
  1 + len(Rest).
%%%-------------------------------------------------------------------
max([Head |  Rest]) ->
  max(Rest, Head).

max([], Result) ->
  Result;

max([Head | Rest], Current_Max) when Head > Current_Max ->
  max(Rest, Head);

max([Head | Rest], Current_Max) ->
  max(Rest, Current_Max).

%%%-------------------------------------------------------------------
min([Head |  Rest]) ->
  min(Rest, Head).

min([], Result) ->
  Result;

min([Head | Rest], Current_Max) when Head < Current_Max ->
  min(Rest, Head);

min([Head | Rest], Current_Max) ->
  min(Rest, Current_Max).

%%%-------------------------------------------------------------------
reverse([Head | Rest]) ->
  reverse(Rest, [Head | []]).

reverse([], Result) ->
  Result;

reverse([Head | Rest], Result) ->
  reverse(Rest, [Head | Result]).
%%%-------------------------------------------------------------------