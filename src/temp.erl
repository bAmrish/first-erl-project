%%%-------------------------------------------------------------------
%%% @author abharatiya
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 29. Jul 2016 3:07 AM
%%%-------------------------------------------------------------------
-module(temp).
-author("abharatiya").

%% API
-export([format/1]).

format([]) ->
  ok;

format([Head | Rest]) ->
  print(convert(Head)),
  format(Rest).

convert({Name, {c, Temp}}) when is_integer(Temp)->
  {Name, {c, Temp}};

convert({Name, {f, Temp}}) when is_integer(Temp)->
  {Name, {c, (Temp - 32) * (5/9)}}.

print({Name, {c, Temp}}) ->
  io:format("~-15w ~w c~n", [Name, Temp]).