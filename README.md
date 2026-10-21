# Log Archive Tool

A simple Bash scripting project that creates timestamped, compressed backups of log files using `tar` and `gzip`.

## Features

- Checks whether the logs directory exists.
- Checks whether the logs directory is empty.
- Creates timestamped backup filenames.
- Compresses log files into `.tar.gz` archives.
- Displays success or error messages.
- Uses exit codes for basic error handling.

## Project Structure

```text
log_archive_tool/
├── backup.sh
├── README.md
├── .gitignore
├── logs/
│   ├── app.log
│   └── system.log
└── archives/
    └── logs_archive_TIMESTAMP.tar.gz
```

## Requirements

- Linux or WSL Ubuntu
- Bash
- `tar`
- `gzip`

## Setup

Clone the repository:

```bash
git clone https://github.com/YOUR-USERNAME/log-archive-tool.git
cd log-archive-tool
```

Create the required directories:

```bash
mkdir -p logs archives
```

Add your log files inside the `logs/` directory.

## Usage

Run the backup script:

```bash
bash backup.sh
```

The script creates a compressed archive inside `archives/`, using the current date and time in its filename.

Example:

```text
archives/logs_archive_2026-10-21-16-54-47.tar.gz
```

## View Archive Contents

```bash
tar -tzf archives/your-backup-file.tar.gz
```

## Restore a Backup

Extract an archive into a separate directory:

```bash
mkdir -p restored
tar -xzf archives/your-backup-file.tar.gz -C restored
```

## Technologies Used

- Bash scripting
- Linux commands
- `tar`
- `gzip`

## Learning Outcomes

This project demonstrates basic shell scripting, variables, conditional statements, command substitution, timestamp generation, compression, and error handling.

## Disclaimer

This is a learning project. Test backup and restore operations before using the script with important production logs.

