[![ci status][ci-image]][ci-url]

[ci-image]: https://img.shields.io/github/actions/workflow/status/dargmuesli/jonas-thelemann_stack/ci.yml
[ci-url]: https://github.com/dargmuesli/jonas-thelemann_stack/actions/workflows/ci.yml

# jonas-thelemann_stack

The Docker stack configuration for [jonas-thelemann.de](https://jonas-thelemann.de/), closely related to [jonas-thelemann's source code](https://github.com/dargmuesli/jonas-thelemann/).

This project uses [dargstack](https://github.com/dargstack/dargstack/), a CLI tool for managing Docker Swarm stacks. Install it before getting started.

## Prerequisites

- [Git](https://git-scm.com/)
- [Docker](https://docs.docker.com/engine/install/)
- [dargstack](https://github.com/dargstack/dargstack/#install)

> 💡 **Windows users:** use [WSL](https://docs.microsoft.com/en-us/windows/wsl/install).

## Quick Start

```sh
dargstack clone
```

This clones all sibling repositories and initializes the fullstack development environment.

## Contributing

Before making changes, read [CONTRIBUTING.md](CONTRIBUTING.md) for development modes, manual setup, and guidelines.

## Documentation

- [`artifacts/docs/README.md`](artifacts/docs/README.md): see an overview of all services, secrets, and volumes in the stack (auto-generated)
