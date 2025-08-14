#!/bin/bash

LOG_FILE="access.log"

# Top 5 IP addresses
echo "Top 5 IP addresses with the most requests:"
cut -d' ' -f1 "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5 | sed 's/^ *\([0-9]*\) \(.*\)$/\2 - \1 requests/'
echo

# Top 5 requested paths
echo "Top 5 most requested paths:"
cut -d' ' -f7 "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5 | sed 's/^ *\([0-9]*\) \(.*\)$/\2 - \1 requests/'
echo

# Top 5 response status codes
echo "Top 5 response status codes:"
cut -d' ' -f9 "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5 | sed 's/^ *\([0-9]*\) \(.*\)$/\2 - \1 requests/'
echo

# Top 5 user agents
echo "Top 5 user agents:"
cut -d'"' -f6 "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5 | sed 's/^ *\([0-9]*\) \(.*\)$/\2 - \1 requests/'
