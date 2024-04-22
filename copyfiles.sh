#!/bin/zsh

copy_files() {
    # Get the directory of the script
    local script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

    # Loop through the remaining arguments (file paths)
    for file_path in "$@"; do
        # Get the base filename from the file path
        local file_name=$(basename "$file_path")
        # Destination path where the file will be copied
        local destination_path="$script_dir/$file_name"
        # Copy the file
        cp "$file_path" "$destination_path"
        echo "Copied '$file_path' to '$destination_path'"
    done
}

file_paths=(
    "$HOME/.zshrc"
    "$HOME/.config/tmux/tmux.conf"
    "$HOME/.hushlogin"
)

copy_files "${file_paths[@]}"
