# markmap

[![Join the chat at https://gitter.im/gera2ld/markmap](https://badges.gitter.im/gera2ld/markmap.svg)](https://gitter.im/gera2ld/markmap?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Visualize your Markdown as mindmaps.

This project is heavily inspired by [dundalek's markmap](https://github.com/dundalek/markmap).

👉 [Try it out](https://markmap.js.org/repl).

## Quick Start

### Prerequisites

- [Node.js](https://nodejs.org/) v22 or higher
- [pnpm](https://pnpm.io/) v9 or higher

### Installation

```bash
# Clone the repository
git clone https://github.com/MelvinSiaw/software-evolution.git
cd software-evolution

# Install dependencies
pnpm install

# Approve build scripts when prompted
pnpm approve-builds
```

### View a Mind Map

Install the CLI tool and convert any Markdown file into an interactive mind map:

```bash
# Install markmap CLI
npm install -g markmap-cli

# Convert a Markdown file to a mind map (opens in browser automatically)
npx markmap-cli your-file.md
```

### Run Tests

```bash
pnpm test
```

### Build All Packages

```bash
pnpm build
```

## Project Structure

This is a monorepo containing the following packages:

| Package | Description |
|---|---|
| `markmap-lib` | Core Markdown parser and transformer |
| `markmap-view` | Browser SVG renderer |
| `markmap-cli` | Command-line interface |
| `markmap-toolbar` | UI toolbar component |
| `markmap-common` | Shared types and utilities |
| `markmap-render` | HTML rendering utilities |
| `markmap-autoloader` | Auto-loading script for browser use |

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a new branch: `git checkout -b feature/your-feature-name`
3. Make your changes and write tests
4. Commit your changes: `git commit -m "feat: describe your change"`
5. Push to your fork and open a Pull Request

Please ensure your code passes linting before submitting:

```bash
pnpm lint
```

## Recent Improvements (TT2L Group 7 — CSE6364)

- **SVG Node Overlap Fix**: Fixed a bug where deeply nested nodes (4+ levels) overlapped in the SVG output. The new `calculateNodeSpacing()` function in `markmap-view` adds progressive spacing based on node depth, ensuring all levels render clearly.

## Related Projects

Markmap is also available in:

- [VSCode](https://marketplace.visualstudio.com/items?itemName=gera2ld.markmap-vscode) and [Open VSX](https://open-vsx.org/extension/gera2ld/markmap-vscode)
- Vim / Neovim:
  - [coc-markmap](https://github.com/gera2ld/coc-markmap) ![NPM](https://img.shields.io/npm/v/coc-markmap.svg) - powered by [coc.nvim](https://github.com/neoclide/coc.nvim)
  - [markmap.vim](https://github.com/Zeioth/markmap.nvim): for using without [coc.nvim](https://github.com/neoclide/coc.nvim)
- Emacs: [eaf-markmap](https://github.com/emacs-eaf/eaf-markmap) -- powered by [EAF](https://github.com/emacs-eaf/emacs-application-framework)
- MCP Server: [markmap-mcp-server](https://github.com/jinzcdev/markmap-mcp-server) [![NPM Version](https://img.shields.io/npm/v/@jinzcdev/markmap-mcp-server.svg)](https://www.npmjs.com/package/@jinzcdev/markmap-mcp-server) - powered by [MCP TypeScript SDK](https://github.com/modelcontextprotocol/typescript-sdk)

## Usage

👉 [Read the documentation](https://markmap.js.org/docs) for more detail.
