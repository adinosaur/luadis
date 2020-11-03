# luadis
类似于python的dis模块打印出函数的字节码

## Build
```
$ cd luadis
$ make
```

## Usage

`dis.dis(function)`打印出函数的字节码:
```
> dis = require("dis")
> dis.dis(function() print("hehe") end)

function <stdin:1,1> (4 instructions at 0x561fd1961ea0)
0 params, 2 slots, 1 upvalue, 0 locals, 2 constants, 0 functions
        1       [1]     GETTABUP        0 0 -1  ; _ENV "print"
        2       [1]     LOADK           1 -2    ; "hehe"
        3       [1]     CALL            0 2 1
        4       [1]     RETURN          0 1
```

`dis.disfull(function)`打印出函数的字节码、local变量、常量以及upvalue:

```
> dis.disfull(function() print("hehe") end)

function <stdin:1,1> (4 instructions at 0x561fd1962730)
0 params, 2 slots, 1 upvalue, 0 locals, 2 constants, 0 functions
        1       [1]     GETTABUP        0 0 -1  ; _ENV "print"
        2       [1]     LOADK           1 -2    ; "hehe"
        3       [1]     CALL            0 2 1
        4       [1]     RETURN          0 1
constants (2) for 0x561fd1962730:
        1       "print"
        2       "hehe"
locals (0) for 0x561fd1962730:
upvalues (1) for 0x561fd1962730:
        0       _ENV    0       0
```



