% First, some important notes:
% – Open a SWI-Prolog session in the command line with `swipl`.
% – Load a file with `consult(<filename>).` or `[<filename>].` (without file extension).
% – Use `pwd.` and `cd('path/to/folder').` to change the working directory.
% – Use `edit(<filename|predicate name|etc>).` to edit (using the standard editor, i. e. vim).
% – Use `make.` to reload a file.
% – `listing(<predicate name>).` shows the implementation of a predicate (don’t forget the arity,
%   e. g. `listing(test/1).`).
% – Exit the interpreter using `^D` or `halt.`
% – `help(<topic>).` opens the help with much information, `apropos(<topic>).` a short explanation.
% – The VSC command `>Prolog: load document` starts a new REPL and loads the file (although this
%   seems to be broken). `Prolog: query goal under cursor` additionally runs a query. Also useful:
%   `>References: Find all references`. 

main :-
    open("./day1.txt", read, Stream),
    read_string(Stream, "\n", "\t", _, String),
    write(String).