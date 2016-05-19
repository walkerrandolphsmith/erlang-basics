# Erlang Basics
 
Module stringy contains two functions `addA` and `addB`.
 
`addA` always responds to a message in the form `{A<string>, Process}`.  
`A<string>` represents a string that is being constructed.  Process is the process id of the process that sent the string to `addA`.
 
1. If the string has length 28, print it.
2. Otherwise, append an “A” on the right and send it back the sending process.
 
`addB` always responds to a message in the form `{A<string>, Process}`.  
`A<string>` represents a string that is being constructed.  Process is the process id of the process that sent the string to `addB`.

1. Always append an “B” on the right and sends it back the sending process.

## Run 
```
A = spawn(fun addA/0).
B = spawn(fun addB/0).
A ! {“”, B}.
``` 
 “” is the null string.
The cooperating processes should return `“ABABABABABABABABABABABABABAB”`