# Contributing to Markmap

Thank you for your interest in contributing to Markmap! This guide will help you get started.

## Prerequisites

- [Node.js](https://nodejs.org/) v22 or higher
- [pnpm](https://pnpm.io/) v9 or higher
- Basic knowledge of TypeScript

## Setting Up the Development Environment

```bash
# 1. Fork and clone the repository
git clone https://github.com/MelvinSiaw/software-evolution.git
cd software-evolution

# 2. Install all dependencies
pnpm install

# 3. Approve build scripts when prompted
pnpm approve-builds

# 4. Build all packages
pnpm build
```

## Project Structure

```
markmap/
├── packages/
│   ├── markmap-lib/        # Core Markdown parser
│   ├── markmap-view/       # SVG renderer (browser)
│   ├── markmap-cli/        # Command-line interface
│   ├── markmap-toolbar/    # UI toolbar
│   ├── markmap-common/     # Shared types and utilities
│   ├── markmap-render/     # HTML rendering
│   └── markmap-autoloader/ # Browser auto-loader
├── adr/                    # Architecture Decision Records
└── overlap-test.md         # Test file for SVG node spacing
```

## Making Changes

1. Create a new branch from `main`:
   ```bash
   git checkout -b fix/your-bug-name
   # or
   git checkout -b feat/your-feature-name
   ```

2. Make your changes in the relevant package under `packages/`

3. Test your changes:
   ```bash
   pnpm test
   ```

4. Check your code style:
   ```bash
   pnpm lint
   ```

5. To quickly preview your changes, use the CLI:
   ```bash
   npx markmap-cli overlap-test.md
   ```

## Commit Message Format

Use the following prefixes for your commit messages:

| Prefix | When to use |
|---|---|
| `fix:` | Bug fixes |
| `feat:` | New features |
| `docs:` | Documentation changes only |
| `refactor:` | Code changes that neither fix a bug nor add a feature |
| `test:` | Adding or updating tests |
| `chore:` | Build process or tooling changes |

Example: `fix: improve SVG node spacing for deeply nested nodes`

## Submitting a Pull Request

1. Push your branch to your fork
2. Open a Pull Request against the `main` branch
3. Describe what your change does and why
4. Reference any related GitHub issues

## Reporting Bugs

Please use the [GitHub Issues](https://github.com/MelvinSiaw/software-evolution/issues) page and include:
- A clear description of the bug
- Steps to reproduce
- Expected vs actual behaviour
- Screenshots if applicable (especially for SVG rendering issues)

## Key Areas for Contribution

- **markmap-view**: SVG rendering logic and node layout
- **markmap-lib**: Markdown parsing and transformation
- **markmap-cli**: CLI commands and options
- **Documentation**: README, inline comments, guides
