.PHONY: all

render: check_gomplate check_pbcopy render_template copy_to_clipboard

check_gomplate:
	@command -v gomplate >/dev/null 2>&1 || { echo >&2 "Gomplate is not installed. Please visit https://gomplate.ca/ to download and install it."; exit 1; }

check_pbcopy:
	@command -v pbcopy >/dev/null 2>&1 || { echo >&2 "pbcopy is not installed. Please install it using Homebrew or another package manager."; exit 1; }

render_template:
	gomplate -f coverletter.txt -d config=./config.yaml -o output.txt

copy_to_clipboard: render_template
	pbcopy < output.txt

