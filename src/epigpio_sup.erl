%%%-------------------------------------------------------------------
%%% @author vasco
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 28. Oct 2016 23:23
%%%-------------------------------------------------------------------
-module(epigpio_sup).
-author("vasco").

%% Starts up epigpio children which communicate with a PiGPIO http.
%% The http server forwards commands to the GPIO pins on the Pi.

-behaviour(supervisor).

-export([start_link/0]).
-export([init/1]).

start_link() ->
  supervisor:start_link({local, ?MODULE}, ?MODULE, []).

init(_Args) ->

  SupFlags = #{strategy => simple_one_for_one,
               intensity => 1000,
               period => 5},

  EpigpioChildSpec = #{id => epigpio,
                       start => {epigpio, start_link, []},
                       shutdown => brutal_kill},

  {ok, {SupFlags, [EpigpioChildSpec]}}.
