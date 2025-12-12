# Modular FiveM Resource Template
This repository provides a clean, scalable, and VSCode-friendly template for building structured FiveM resources.

This template focuses mainly on:

- Modular feature structure
- Typed config & functions using Lua annotation (`---@class`, `---@type`, etc.)
- Automatic client/server config loading based on filename prefixes
- Shared utility layers

This template is perfect for developers who want readable code, long-term maintainability, and strong IntelliSense in VSCode without relying on external type packs.

---

## Dependencies

- ox_lib

## Folder Structure
```
my_resource/
|
├── fxmanifest.lua
├── config.lua -- Global config
|
├── utils/
│ ├── c_func.lua -- Client utilities
│ └── s_func.lua -- Server utilities
│
├── modules/
│ └── example/
│ ├── config.lua -- Module config (shared)
│ ├── c_config.lua -- Module config (client only)
│ ├── s_config.lua -- Module config (server only)
│ ├── client.lua -- Module client side logic
│ └── server.lua -- Module server side logic
|
└── locales/
└── en.json -- Optional example locale
```

---

## Getting Started

### 1. Clone the Rempository

```sh
git clone https://github.com/rigoormortis/duskfall-resource-template.git
```

Or download the ZIP directly from GitHub.

### 2. Rename the Template

Rename the folder to your resource name:

```
df_myscript
```

### 3. Update Type Namespace

Search for:

```
RENAME_ME
```

Replace it with your resource name, for example:

```
MYRESOURCE.Config
MYRESOURCE.CFunc
MYRESOURCE.Example
```

This keeps your typed hints clean and organized.

---

## How Modules Work
Each feature lives inside:

```
modules/<module_name>/
```

A module can contain:

| File | Purpose |
|------|---------|
| `config.lua` | Shared config for both client and server |
| `c_config.lua` | **Client only config** |
| `s_config.lua` | **Server only config** |
| `client.lua` | Client logic |
| `server.lua` | Server logic |

---

## VSCode IntelliSense (No Type Packs Needed)

Lua Language Server fully understands:

- `---@class`
- `---@type`
- `---@field`
- `---@param`

This gives you:
✔ Autocomplete for config values
✔ Parameter hints for utility functions
✔ Hover documentation from comments
✔ Type checking for mistakes

Example:

```lua
---@class MYRESOURCE.Config
---@field debug boolean

---@type MYRESOURCE.Config
local config = {
  debug = true
}
```

VSCode now knows exactly what `config.debug` is anywhere in your script.

---

## Adding a New Module

### 1. Create the folder:

```
modules/newfeature/
```

### 2. Add the config:

```
-- modules/newfeature/config.lua
---@class MYRESOURCE.NewFeature
local newfeature = {
  enabled = true
}

return newfeature
```

### 3. Add the logic files:

- `client.lua`
- `server.lua`
- `c_config.lua`
- `s_config.lua`

### 4. You're done!

The manifest will automatically load the files in:

- `modules/**/config.lua`
- `modules/**/c_config.lua`
- `modules/**/s_config.lua`
- `modules/**/client.lua`
- `modules/**/server.lua`

---

## Contributing

Contributions are always welcome!

To contribute:

1. Fork the repo
2. Create a feature branch
3. Submit a pull request with your changes

Released under the **MIT License**.  
You may freely use this template in personal or commercial FiveM projects.
