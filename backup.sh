
#!/bin/bash

# Define directories
log_dir="logs"
archive_dir="archives"

# Check if logs directory exists
if [ ! -d "$log_dir" ]; then
    echo "ERROR: Logs directory not found"
    exit 1
fi

# Check if logs directory contains files
if [ -z "$(ls -A "$log_dir")" ]; then
    echo "ERROR: Logs directory is empty"
    exit 1
fi

# Create timestamp
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

# Create archive filename
backup_file="logs_archive_${timestamp}.tar.gz"

# Create compressed archive
if tar -czf "$archive_dir/$backup_file" "$log_dir"; then
    echo "SUCCESS: Backup created"
    echo "Archive: $archive_dir/$backup_file"
else
    echo "ERROR: Backup failed"
    exit 1
fi
