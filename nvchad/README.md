# Custom NVChad Config

Place in $NVCHAD_HOME/lua/custom

```bash
lua
├── custom
│   ├── chadrc.lua
│   ├── mappings.lua
│   └── plugins
│       ├── dap
│       │   ├── init.lua
│       │   ├── keymaps.lua
│       │   ├── lua.lua
│       │   └── python.lua
│       ├── init.lua
│       ├── lspconfig.lua
│       └── null-ls.lua
...
```

## Additional Requirements

### Prettierd

[Repo](https://github.com/fsouza/prettierd#installation-guide)

### ripgrep

[Repo](https://github.com/BurntSushi/ripgrep#installation)

### debugpy

[Repo](https://github.com/microsoft/debugpy)

> `pip install debugpy`

### vscode-node-debugger2

[Repo](https://github.com/microsoft/vscode-node-debug2)

> `git clone https://github.com/microsoft/vscode-node-debug2 $NVCHAD_HOME/lua/custom/vscode-node-debug2` > `cd $NVCHAD_HOME/lua/custom/vscode-node-debug2` > `npm i && npm run build`
