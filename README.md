# DrQuine
> A quine is a computer program which takes no input and produces a copy of its own source code as its only output. ([Wikipedia](https://en.wikipedia.org/wiki/Quine_(computing)))  

The objective of this 42 School project is to write 3 differents quines, in 3 different languages : C, Assembly and a language of our choosing (Racket, in my case).  
This code has been tested both on my own computers (Fedora 32/openSuse Tumbleweed) and on the VM provided by the school (Xubuntu 18.04).

Here's a quick overview of what's expected for each quine (more details are available in the [subject](dr_quine.en.pdf)) :
#### Colleen
- The program must simply display a copy of its own source code as its only output.
- There must be a `main` function and another function (to be called from `main`).
- There must be 2 comments (one inside `main`, one outside of our program).

#### Grace
- The program must writes a copy of its own source code in a file called `Grace_kid.c`/`Grace_kid.s`/`Grace_kid.rkt`
- There must be a single comment.
- No `main` must be declared.
- All the code must fit in 3 `#define` (in C) and the program will run by calling a macro. Since not all languages have `#define`, the subject asks us to adapt to the specifics of the language:
  - ASM: Since I used the [GNU Assembler](https://en.wikipedia.org/wiki/GNU_Assembler), I considered [macro](https://sourceware.org/binutils/docs-2.34/as/Macro.html#index-macro-directive) to be the best equivalent.
  - Racket: I used [`define-syntax-rule`](https://docs.racket-lang.org/reference/stx-patterns.html?q=define-syntax-rule#%28form._%28%28lib._racket%2Fprivate%2Fmisc..rkt%29._define-syntax-rule%29%29).

#### Sully
- The program must set an integer `i` to 5.
- The first execution of the binary `Sully_5` will do the necessary to create a new binary `Sully_4`, which will create `Sully_3` and so on. E.g. in C, we have to write the code in `Sully_4.c`, compile it and launch the resulting binary `Sully_4`.
- The resulting program is only executed if `i` is greater than 0.
- The only difference allowed in the source code of all these programs is the initial value of `i`:
```
$> diff Sully_5.c Sully_0.c 
8c8
<   int i = 5;
---
>   int i = 0;
```
