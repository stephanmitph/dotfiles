copy_files_and_folders() {
    # Get the directory of the script
    local script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

    # Loop through the remaining arguments (file and folder paths)
    for path in "$@"; do
        # Get the base name from the path
        local name=$(basename "$path")
        # Destination path where the file or folder will be copied
        local destination_path="$script_dir/$name"

        if [[ -d "$path" ]]; then
            # If it's a directory, copy recursively
            cp -r "$path" "$destination_path"
            echo "Copied directory '$path' to '$destination_path'"
        elif [[ -f "$path" ]]; then
            # If it's a file, copy normally
            cp "$path" "$destination_path"
            echo "Copied file '$path' to '$destination_path'"
        else
            echo "Skipping '$path' (not a file or directory)"
        fi
    done
}

# List of file and folder paths to copy
file_paths=(
    "$HOME/.zshrc"
    "$HOME/.config/tmux/tmux.conf"
    "$HOME/.hushlogin"
    "$HOME/.config/nvim"
)

copy_files_and_folders "${file_paths[@]}"
