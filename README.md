# mongo-drv
ctpapi开发依赖库

```json
{
    "clangd.path": "/home/remin/clangd/bin/clangd", //clangd路径
    "cmake.debugConfig": {
        "type": "lldb",
        "MIMode": "lldb",
        "miDebuggerPath": "/usr/bin/lldb-19",
        "args": [],
        "externalConsole": false,
        "env": {
            "TERM": "xterm-256color" // 启用终端颜色支持
        },
        "setupCommands": [
            {
                "description": "Enable pretty-printing for lldb",
                "text": "-enable-pretty-printing",
                "ignoreFailures": true
            }
        ]
    }
}
```