# Contributing to jonas-thelemann_stack

Thank you for your interest in contributing!

The fullstack environment composes several services, among those are the following first-party:

| Repository | Required | Access |
|---|---|---|
| [dargmuesli/creal](https://github.com/dargmuesli/creal) | ✅ | public |
| [dargmuesli/creal-strapi](https://github.com/dargmuesli/creal-strapi) | ✅ | public |
| [dargmuesli/jonas-thelemann](https://github.com/dargmuesli/jonas-thelemann) | ✅ | public |
| [dargmuesli/jonas-thelemann_stack](https://github.com/dargmuesli/jonas-thelemann_stack) | ✅ | public |
| [dargmuesli/trapparty](https://github.com/dargmuesli/trapparty) | ✅ | public |

## Development Setup

> 🪟 **Windows users:** Set up [WSL](https://docs.microsoft.com/en-us/windows/wsl/install) first and continue inside the Linux subsystem.
> If you use VS Code, see [VS Code + WSL](https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode).

### Automated Setup

```sh
dargstack clone
```

### Manual Setup

If you prefer to step through each action yourself:

1. Install prerequisites

    1. [Git](https://git-scm.com/): version control
    2. [Docker](https://docs.docker.com/engine/install/): container runtime
    3. [dargstack](https://github.com/dargstack/dargstack#install): stack management CLI

2. Create a parent directory and clone the sibling repositories into it:

   ```sh
   mkdir jonas-thelemann && cd jonas-thelemann
   git clone git@github.com:dargmuesli/creal.git
   git clone git@github.com:dargmuesli/creal-strapi.git
   git clone git@github.com:dargmuesli/jonas-thelemann.git
   git clone git@github.com:dargmuesli/jonas-thelemann_stack.git
   git clone git@github.com:dargmuesli/trapparty.git
   ```

   <details>
     <summary>Click here if you don't have SSH set up (you should!) to use HTTPS URLs instead</summary>

   ```sh
   mkdir jonas-thelemann && cd jonas-thelemann
   git clone https://github.com/dargmuesli/creal.git
   git clone https://github.com/dargmuesli/creal-strapi.git
   git clone https://github.com/dargmuesli/jonas-thelemann.git
   git clone https://github.com/dargmuesli/jonas-thelemann_stack.git
   git clone https://github.com/dargmuesli/trapparty.git
   ```
   </details>

3. Initialize all cloned projects for development according to their READMEs.

4. Build development container images:

   ```sh
   cd jonas-thelemann_stack
   dargstack build
   ```

   An interactive selection dialog will let you choose which services to build.

5. Deploy:

   ```sh
   dargstack deploy
   ```

6. You should now be able to access the main project at [https://localhost](https://localhost) 🎉

## Guidelines

### Git & GitHub

Follow [@dargmuesli's Contributing Guidelines](https://gist.github.com/dargmuesli/430b7d902a22df02d88d1969a22a81b5#contribution-workflow) for branch naming, commit formatting, and the pull request workflow.

### Semantic Versioning

Read [@dargmuesli's guide on Semantic Versioning](https://gist.github.com/dargmuesli/430b7d902a22df02d88d1969a22a81b5#file-semantic-versioning-md) for how to format PR, issue and commit titles.

### dargstack

- Service files live in `src/development/<service>/compose.yaml` (full Compose document) and `src/production/<service>/compose.yaml` (production delta only).
- Run `dargstack build` to interactively select and build development container images after making changes to a service's source code.
- Run `dargstack document` to regenerate `artifacts/docs/README.md` after adding or modifying services.
- Do not edit `artifacts/` files directly: they are generated or gitignored.

### Code Style

- Keep YAML keys sorted lexicographically where order is semantically irrelevant.
- Use natural language in comments; refer to code artifacts with backticks.
- Do not use abbreviations in names unless omitting them would look unnatural.
