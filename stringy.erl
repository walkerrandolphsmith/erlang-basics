-module(stringy).
-export([addA/0]).
-export([addB/0]).
 
addA() ->
	receive
	{Msg, Pid} ->
	Length = string:len(Msg),
	if
		(Length < 28) -> Temp = string:concat(Msg,"A"), Pid ! {Temp, sel    f()}, addA();
		true  -> io:format("~p~n",[Msg])
	end
end.

addB() ->
	receive
	{Msg, Pid} ->   Temp = string:concat(Msg,"B"), Pid ! {Temp,self()},
	addB()
end.
