%%%-------------------------------------------------------------------
%%% @author vasco
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 28. Oct 2016 22:49
%%%-------------------------------------------------------------------
-module(epigpio_api).
-author("cwmaguire@gmail.com").

%%% Start up 

-export([start_pigpio/1]).

start_pigpio(Client) ->
  {ok, _Pid} = supervisor:start_child(epigpio_sup, [Client]).
