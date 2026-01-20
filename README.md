# Network Testing Tool

A lightweight, Docker-based toolkit designed for network troubleshooting and diagnostics. Built on Alpine Linux, it includes a curated set of essential networking utilities like `nmap`, `tcpdump`, `mtr`, and `curl`.

## Quick Start

```bash
# Run the tool interactively (starts shell, exits when done)
docker compose run --rm network-tool /bin/sh
```

## Documentation

- **[Technical Documentation](DOCUMENTATION.md)**: Details on the architecture, included packages, and capabilities.
- **[How To Use](HOW_TO_USE.md)**: Step-by-step specific instructions, prerequisites, and usage examples.

## Features
- **Minimalist**: Based on Alpine Linux.
- **Powerful**: Includes `NET_ADMIN` and `NET_RAW` capabilities for advanced diagnostics.
- **Transient**: Starts on demand and cleans up after exit.
