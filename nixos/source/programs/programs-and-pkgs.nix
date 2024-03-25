{ pkgs, lib, ... }:
{
	programs = {
		git.enable = true;  
	};
	
	environment.systemPackages = with pkgs; [
		
		# Base hyprland apps.
		eww-wayland
        rofi-wayland
        swww
		
		# Screenshots.
		grim
		slurp
		wl-clipboard

		
        bitwarden
		chromium
		qemu

		# System 
        btop
		fastfetch
		wezterm
		wget
		p7zip

		# Compilers.
		gcc
		
		# LSP for neovim.
		asm-lsp
		pyright
	];

    fonts.packages = with pkgs; [
		fira-code
		font-awesome
	];
}
