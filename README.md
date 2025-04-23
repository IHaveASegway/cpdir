# cpdir - Directory Contents to Clipboard

A command-line tool that copies directory structures and file contents to the clipboard.

## Features

- Copy directory structure to clipboard (`-s` flag)
- Copy both structure and file contents (default)
- Exclude directories/files using ignore patterns
- Control the depth of directory traversal
- Debug mode for troubleshooting

## Installation

### Prerequisites

- brew

## Installation Steps

```bash
brew tap IHaveASegway/cpdir
brew install cpdir
```

## Example Usage

```bash
# Need some help?
cpdir -h
# Copy directory structure to clipboard
cpdir -s /path/to/directory
# Copy directory structure and file contents to clipboard
cpdir /path/to/directory
# Copy directory structure and file contents to clipboard with depth 2
cpdir -d 2 /path/to/directory
# Copy directory structure and file contents to clipboard with ignore patterns
cpdir -i "*.tmp" -i "node_modules" /path/to/directory
# Or just copy specific files
cpdir file1.py file2.sql
```

### Running `cpdir . -i .*` Example Output:

```text
Directory Trees:
==================================================

Tree for /Documents/GitHub/homebrew-cpdir:
└── homebrew-cpdir/
    └── Formula/
        └── cpdir.rb

--------------------------------------------------

==================================================

File: /Documents/GitHub/homebrew-cpdir/Formula/cpdir.rb
--------------------------------------------------
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cpdir < Formula
    desc "Copy specific files and the directory structure to the clipboard"
    homepage "https://github.com/IHaveASegway/cpdir"
    url "https://github.com/IHaveASegway/cpdir/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "aasdfwfefrftwg5ter5t3qwq"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"cpdir", "."
    end
  
    test do
      assert_match "Usage", shell_output("#{bin}/cpdir --help")
    end
  end
  

==================================================
```
