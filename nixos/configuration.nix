{ config, lib, pkgs, ... }:
{
    imports =
    [
        ./hardware-configuration.nix

        ./source/system/boot.nix
        ./source/system/drivers.nix
        ./source/system/locale.nix
		./source/system/services.nix
		
		./source/users/kitotavrik.nix
    	./source/users/shell.nix
		
        ./source/networking.nix
		
        ./source/hyprland.nix
		
        ./source/programs/programs-and-pkgs.nix
		<home-manager/nixos>
	];
	
	nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
		# Drivers.
		"nvidia-x11"
		"nvidia-settings"
        

		# Install to kitotavrik.	
		"vscode"	
	    "discord"
    ];

	system.stateVersion = "23.11";
}

