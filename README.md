# Linux System Diagnostics Script

A Bash script that automates quick system diagnostics on Linux — network identity, resource usage, running services, and disk usage — in a single run instead of manually chaining multiple commands.

## What it does

1. **Public IP** — retrieves the system's public-facing IP address
2. **Private IP** — extracts the private IP assigned to the network interface
3. **MAC address** — displays the MAC address with the vendor prefix masked for safe sharing
4. **CPU usage** — shows the top 5 processes by CPU consumption
5. **Memory usage** — reports total and available memory
6. **Running services** — lists all active system services
7. **Largest files** — finds the top 10 largest files under `/home`

## Tools & commands used

`curl`, `ifconfig`, `awk`, `sed`, `grep`, `ps`, `free`, `systemctl`, `find`, `du`

## Usage

```bash
chmod +x system_diagnostics.sh
./system_diagnostics.sh
```

## Example output

```
My public IP address is:
203.0.113.42

My private IP address is:
192.168.2.171

MAC address found (masked):
xx:xx:xx:4f:2a:9c

Top 5 processes by CPU usage:
%CPU COMMAND
 4.2 firefox
 2.1 Xorg
 ...

Total and available memory:
Total: 7.8Gi  Available: 5.2Gi

Running services:
ssh.service loaded active running OpenBSD Secure Shell server
...

Top 10 largest files in /home:
2.1G  /home/kali/Downloads/kali-linux.iso
...
