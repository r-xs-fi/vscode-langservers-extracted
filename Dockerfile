# not using `node:alpine` because it doesn't support riscv64
FROM alpine:latest

# there's multiple tools in here (for CSS, JSON etc.)
ENTRYPOINT []

RUN apk add --no-cache nodejs npm && \
  npm install --global vscode-langservers-extracted

# running as unprivileged user not possible because: language servers need permission to access files
