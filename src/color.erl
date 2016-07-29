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
-export([new/4, blend/2]).
-define(is_channel(V), (is_float(V) andalso V >= 0 andalso V=<1)).

new (R, G, B, A)
  when ?is_channel(R), ?is_channel(G), ?is_channel(B), ?is_channel(A) ->
    #{red => R, green => G, blue => B, alpha => A}.

blend(Src, Des) ->
  blend(Src, Des, alpha(Src, Des)).

blend(Src, Dest, Alpha) when Alpha > 0.0 ->
  Dest#{
    red := red(Src, Dest) / Alpha,
    blue := blue(Src, Dest) / Alpha,
    green := green(Src, Dest) / Alpha,
    alpha := Alpha
  };

blend(_, Dest, _) ->
  Dest#{
    red := 0.0,
    blue:= 0.0,
    green:= 0.0,
    alpha:= 0.0
  }.

alpha(#{alpha := SA}, #{alpha := DA}) ->
  SA + DA * (1.0 - SA).

red(#{alpha := SA, red := SV}, #{alpha := DA, red := DV}) ->
  SA*SV + DA*DV*(1.0 - DV).

blue(#{alpha := SA, blue := SV}, #{alpha := DA, blue := DV}) ->
  SA*SV + DA*DV*(1.0 - DV).

green(#{alpha := SA, green := SV}, #{alpha := DA, green := DV}) ->
  SA*SV + DA*DV*(1.0 - DV).
