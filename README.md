Container image for vscode-langservers-extracted - HTML/CSS/JSON/ESLint language servers extracted from vscode.

## Usage

### JSON language server

```shell
docker run --rm -it ghcr.io/r-xs-fi/vscode-langservers-extracted vscode-json-language-server --stdio
```
### CSS language server

```shell
docker run --rm -it ghcr.io/r-xs-fi/vscode-langservers-extracted vscode-css-language-server --stdio
```
### HTML language server

```shell
docker run --rm -it ghcr.io/r-xs-fi/vscode-langservers-extracted vscode-html-language-server --stdio
```

## Supported platforms


| OS    | Architecture  | Supported | Example hardware |
|-------|---------------|-----------|-------------|
| Linux | amd64 | ✅       | Regular PCs (also known as x64-64) |
| Linux | arm64 | ✅       | Raspberry Pi with 64-bit OS, other single-board computers, Apple M1 etc. |
| Linux | arm/v7 | ✅       | Raspberry Pi with 32-bit OS, older phones |
| Linux | riscv64 | ✅       | More exotic hardware |

## How does this software get to me?

```mermaid
flowchart TD
    subgraph "Origin"
        sourcerepo["Original source repo"]
        author_builds["Author builds the NPM package"]
    end
    subgraph "NPM registry"
        NPM_package[Package: vscode-langservers-extracted 🔗]

        click NPM_package "https://www.npmjs.com/package/vscode-langservers-extracted"
    end
    subgraph "Packaging build"
        rxsfi_build["r.xs.fi build (GitHub Actions)"]
    end
    subgraph "Container Registry"
        r_xs_fi_package_registry[ghcr.io/r-xs-fi/vscode-langservers-extracted 🔗]

        click r_xs_fi_package_registry "https://ghcr.io/r-xs-fi/vscode-langservers-extracted"
    end
    subgraph "user"
        docker_run[$ docker run ...]
    end
    sourcerepo -- used by --> author_builds -- upload --> NPM_package
    NPM_package -- download --> rxsfi_build
    rxsfi_build -- push --> r_xs_fi_package_registry
    r_xs_fi_package_registry -- pull --> docker_run[$ docker run ...]

```
