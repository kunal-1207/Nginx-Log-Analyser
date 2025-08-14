# Nginx Access Log Analyzer

This script analyzes an Nginx access log file and displays the top 5 statistics for:
- IP addresses making the most requests
- Most requested paths
- Most common HTTP status codes
- Most frequent user agents

## Features

- Two versions available:
  - **Version 1**: Uses `awk` for parsing (recommended for better readability)
  - **Version 2**: Uses only basic commands (`cut`, `sort`, `uniq`, etc.) for environments where `awk` isn't available
- Works with standard Nginx combined log format
- Lightweight and fast processing
- Clear output formatting

## Related Resources

For a comprehensive learning path on building Nginx log analyzers, check out:
[roadmap.sh Nginx Log Analyzer Project](https://roadmap.sh/projects/nginx-log-analyser)

## Requirements

- Bash shell
- Standard Unix tools (`awk`, `sort`, `uniq`, `head`, `cut`, `sed` - depending on version)
- Nginx access log in combined format (default location assumed: `access.log`)

## Installation

1. Save the script to a file (e.g., `nginx_stats.sh`)
2. Make it executable:
   ```bash
   chmod +x nginx_stats.sh
   ```

## Usage

```bash
./nginx_stats.sh
```

To analyze a specific log file:
```bash
LOG_FILE="/path/to/your/access.log" ./nginx_stats.sh
```

## Output Example

```
Top 5 IP addresses with the most requests:
192.168.1.1 - 542 requests
10.0.0.3 - 421 requests
...

Top 5 most requested paths:
/ - 1200 requests
/about - 542 requests
...

Top 5 response status codes:
200 - 1850 requests
404 - 42 requests
...

Top 5 user agents:
Mozilla/5.0 (Windows NT 10.0) - 850 requests
Mozilla/5.0 (iPhone) - 420 requests
...
```

## Customization

To modify the script:
1. Change `LOG_FILE` variable to point to your log file
2. Adjust the `head -n 5` parameter to show more/less results
3. Modify output formatting by changing the `awk` or `sed` commands

## Notes

- The script assumes the log file follows the standard Nginx combined format
- For large log files, processing may take some time
- Version 2 (without awk) may be slightly less accurate with complex log formats

## License

This script is released under the MIT License.
