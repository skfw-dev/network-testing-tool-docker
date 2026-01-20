# Technical Documentation

## Overview
This project provides a lightweight, containerized environment for network troubleshooting and analysis. It is built on top of Alpine Linux to ensure a small footprint while including a comprehensive suite of networking tools.

## System Architecture

### Base Image
- **OS**: Alpine Linux (`alpine:latest`)
- **Justification**: Minimal size, fast package installation, and security.

### Container Configuration
The container is configured with elevated privileges to perform restricted network operations:
- **`NET_ADMIN`**: usage of network configuration and troubleshooting tools (e.g., modifying routing tables, interface configuration).
- **`NET_RAW`**: Allows the use of raw sockets, essential for tools like `ping`, `tcpdump`, and `nmap`.

## Included Tools

| Tool | Package | Description |
|------|---------|-------------|
| **Ping** | `iputils` | Send ICMP ECHO_REQUEST to network hosts. |
| **Curl** | `curl` | Command line tool for transferring data with URLs. |
| **Wget** | `wget` | Network utility to retrieve files from the Web. |
| **DNS Tools** | `bind-tools` | Includes `dig` and `nslookup` for DNS querying. |
| **Net Tools** | `net-tools` | Includes legacy tools like `ifconfig` and `netstat`. |
| **IP Route** | `iproute2` | Modern collection of utilities for controlling TCP/IP networking (`ip` command). |
| **MTR** | `mtr` | A network diagnostic tool that combines the functionality of `traceroute` and `ping`. |
| **Tcpdump** | `tcpdump` | A powerful command-line packet analyzer. |
| **Nmap** | `nmap` | Network exploration tool and security / port scanner. |

## Network Setup
- The service defaults to the standard Docker bridge network but can be attached to other networks as defined in `docker-compose.yaml`.
- The container is designed to be run interactively or for one-off commands.
