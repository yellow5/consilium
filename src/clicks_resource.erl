%% @author Cameron Dykes <yellow5c@gmail.com>
%% @copyright 2014 author.
%% @doc clicks webmachine_resource.

-module(clicks_resource).
-export([init/1, content_types_provided/2, to_json/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.

content_types_provided(ReqData, State) ->
    {[ {"application/json", to_json} ], ReqData, State}.

to_json(ReqData, State) ->
    Resp = mochijson:encode({struct, [
                                        {id, 2}
                                     ]}),
    {Resp, ReqData, State}.
