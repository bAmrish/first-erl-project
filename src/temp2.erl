%%%-------------------------------------------------------------------
%%% @author abharatiya
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 29. Jul 2016 3:29 AM
%%%-------------------------------------------------------------------
-module(temp2).
-author("abharatiya").

%% API
-export([format/1]).

format(Cities) ->
  print(convert(Cities)).

convert([]) ->
  [];

convert([{City, {f, Temp}} | Rest]) ->
  Converted_City = {City, {c, ((Temp - 32) * (5/9))}},
  [Converted_City | convert(Rest)];

convert([City | Rest]) ->
  [City | convert(Rest)].

print([]) ->
  ok;

print([{City, {c, Temp} }| Rest]) ->
  io:format("~-15w ~w c~n", [City, Temp]),
  print(Rest).
