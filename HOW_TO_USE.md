# How To Use

## Prerequisites
- **Docker**: Engine installed and running.
- **Docker Compose**: Installed (usually included with Docker Desktop/Plugin).

## Installation & Setup

1. **Clone/Navigate** to the directory containing the `docker-compose.yaml`.
2. **Build the Image** (Optional, Docker will do this automatically on first run):
   ```bash
   docker compose build
   ```

## Usage
The tool is designed to be run transiently (start, do work, exit).

### Start Interactive Shell
To drop into a shell inside the container:
```bash
docker compose run --rm network-testing-tool /bin/sh
```
*arguments `--rm` ensures the container is removed after you exit the shell.*

## Usage Examples

### 1. Check Connectivity
Test if you can reach an external server:
```bash
ping -c 4 google.com
```

### 2. DNS Lookup
Troubleshoot DNS resolution:
```bash
dig google.com
# or
nslookup google.com
```

### 3. Trace Route
Analyze the path packets take to a destination:
```bash
mtr -r -c 10 1.1.1.1
```

### 4. Inspect Network Traffic
Capture packets on the default interface (`eth0`):
```bash
tcpdump -i eth0 -n
```

### 5. Check Internal IP
View the container's network configuration:
```bash
ip addr show
```

### 6. Cleanup
If you used the `--rm` flag, the container is removed automatically.
To remove the network and any leftover stopped containers:
```bash
docker compose down
```
