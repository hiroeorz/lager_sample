%%%-------------------------------------------------------------------
%%% @author Hiroe Shin <hiroe.orz@gmail.com>
%%% @copyright (C) 2012, Hiroe Shin
%%% @doc
%%% lagerの使用サンプル
%%% @end
%%% Created : 12 Aug 2012 by Hiroe Shin <hiroe.orz@gmail.com>
%%%-------------------------------------------------------------------
-module(lager_sample).

%% API
-export([start/0]).
-export([error/2, notice/2, debug/2, info/2]).

%%%===================================================================
%%% API
%%%===================================================================

start() ->
    application:start(compiler),
    application:start(syntax_tools),
    application:start(lager),
    lager:set_loglevel(lager_console_backend, debug),
    lager:set_loglevel(lager_file_backend, debug).    

%%--------------------------------------------------------------------
%% @doc
%% 
%% @end
%%--------------------------------------------------------------------
error(Msg, Args) ->
    lager:error(Msg, Args).

notice(Msg, Args) ->
    lager:notice(Msg, Args).

info(Msg, Args) ->
    lager:debug(Msg, Args).

debug(Msg, Args) ->
    lager:debug(Msg, Args).

%%%===================================================================
%%% Internal functions
%%%===================================================================
