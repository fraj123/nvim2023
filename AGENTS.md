# Repository Guidelines

## Project Structure & Module Organization
- `init.lua` sets UI defaults, editor options, and defers all plugin setup to `require('plugins')`.
- `lua/plugins.lua` is the single Packer manifest; saving it auto-runs `PackerCompile` via the augroup at the top.
- `after/plugin/*.lua` hosts focused configs (cmp, lsp, telescope, autopairs, CopilotChat, etc.); add new modules here to keep startup lean.
- `after/filetype.lua` carries filetype-specific tweaks, while `plugin/packer_compiled.lua` is generated code and must never be edited manually.

## Build, Test & Development Commands
- `nvim --headless +"PackerSync" +qa` installs/updates plugins and rewrites the compiled loader.
- `nvim --headless +"TSUpdate" +qa` refreshes tree-sitter parsers after grammar changes.
- `nvim --headless +"checkhealth telescope" +qa` validates external deps (`ripgrep`, `fd-find`) listed in the README.
- Launching `nvim` normally is the quickest smoke test; add `-u init.lua` if experimenting outside your `$XDG_CONFIG_HOME`.

## Coding Style & Naming Conventions
- Lua files use two-space indentation, lowercase snake_case filenames (mirroring the current layout), and favor `local` helpers within modules.
- Use descriptive augroup names (`packer_user_config`) and table-style plugin specs to match the packer style already present.
- Format Lua via `stylua --indent-width 2 init.lua lua after` before submitting; there is no config file, so pass flags explicitly.

## Testing Guidelines
- After changing plugins or language servers, run `nvim --headless +"PackerSync | TSUpdate" +qa` and confirm `:PackerStatus` reports no errors.
- For LSP-related edits, execute `nvim --headless +"lua vim.lsp.start_client" +qa` or open a relevant buffer and verify `:LspInfo`.
- Document manual checks (e.g., CopilotChat prompt execution, `:Telescope find_files`) in your PR so reviewers can replicate.

## Commit & Pull Request Guidelines
- Follow the repository’s Conventional Commit history (`feat:`, `fix:`, `chore:`) for both local commits and squash titles.
- Keep PRs focused: describe the motivation, list touched plugins or keymaps, and paste any headless command output or screenshots that prove success.
- Link to related issues, mention required manual setup (like external binaries), and note whether `packer_compiled.lua` changed automatically.

## Security & Configuration Tips
- Before first `PackerSync`, comment out the colorscheme in `init.lua` as documented in the README to avoid missing-theme errors.
- Ensure system dependencies (ripgrep, fd, language servers, clipboard tools) are installed per your distro; `:checkhealth` flags missing binaries early.
- Store API tokens (e.g., GitHub Copilot) in the environment, never in this repo; use `.env` or OS keychains instead.
