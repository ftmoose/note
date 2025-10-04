# note

A simple command-line tool for capturing timestamped notes with tags.

## Quick Start

```bash
# Add a quick note
note "just had a great idea for the project"

# Add a note with tags
note "working on the #ffm dashboard with #python"

# Open your editor for longer notes
note

# View recent notes
note -n 5
```

## Installation

```bash
./deploy.sh
```

This installs `note` to `/usr/local/bin` (requires sudo).

## Features

### Create Notes

```bash
# Quick note from command line
note "your note here"

# Or simply
note your note here

# Multi-line note in your editor, $EDITOR or defaults to vim
note
```

### View Notes

```bash
note -n 10              # Show last 10 notes
note -a                 # Show all notes
note -d 2025-10-04      # Show notes from a specific date
note --from 2025-10-01  # Notes from date onwards
note --to 2025-10-04    # Notes up to date
```

### Tags

Notes automatically detect hashtags like `#work` or `#python`.

```bash
note -T work            # Show notes with #work tag
note -T work python     # Notes with #work OR #python
note --tags-all work python  # Notes with BOTH tags
note --list-tags        # List all tags (cleans up unused ones)
```

### Manage Notes

```bash
note -i 42              # View full note by ID
note -D 5               # Delete last 5 notes
```

## How It Works

- Notes are stored in `~/.note_log.db` (SQLite)
- Timestamps use your local timezone
- Notes longer than 4 lines are truncated in lists (use `-i ID` to see the full note)
- Tags are case-insensitive and always stored lowercase

## Examples

```bash
# Take a quick note about a meeting
note "Meeting with team - discussed Q4 goals #work #meeting"

# Find all work-related notes
note -T work

# Review today's notes
note -d 2025-10-04

# See what tags you've been using
note --list-tags
```

## Tips

- Use tags to organize notes by project, topic, or context
- The default editor is `vim`, set `$EDITOR` to use your preferred editor
- Notes show timezone abbreviations when viewing from a different timezone

---

That's it! Start taking notes with `note your thought here`.
