SHELL := /bin/sh

init:
	@echo "Installing dependencies for Mac OS."
	brew update
	brew install lua ripgrep

link:
	@echo "Creating link at ~/nvim to this repository."
	ln -sf $(shell pwd) ~/.config/nvim
