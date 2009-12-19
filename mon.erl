%%%-------------------------------------------------------------------
%%% File    : mon.erl
%%% Author  : Ari Lerner
%%% Description : 
%%%
%%% Created :  Wed Dec 16 17:15:56 PST 2009
%%%-------------------------------------------------------------------

-module (mon).

-compile(export_all).

start() ->
  Cmd = "thin -R /Users/auser/Sites/heroku/config.ru start",
  WorkingDir = "/tmp",
  port_handler:start(Cmd, WorkingDir, self(), [stderr_to_stdout]),
  loop().

loop() ->
  receive
    X ->
      io:format("Got: ~p~n", [X]),
      loop()
    after 30000 ->
      exit(norma)
  end.
  