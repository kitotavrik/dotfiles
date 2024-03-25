{ cpkgs, ... }:
{
	users.users.kitotavrik = {
        isNormalUser = true;
        extraGroups = [ "wheel" ];
        home = "/home/kitotavrik";
	};
	
	home-manager.useGlobalPkgs = true;
	home-manager.users.kitotavrik = { pkgs, ... }:{
		home.packages = with pkgs; [	
			xclip # Need for clipboard neovim

            telegram-desktop
            discord 
        ];
		

		gtk = {
			enable = true;
			theme = {
				name = "WhiteSur-Dark";
				package = pkgs.whitesur-gtk-theme;
			};
			iconTheme = {
				name = "WhiteSur-dark";
				package = pkgs.whitesur-icon-theme;
			};
			cursorTheme = {
				name = "WhiteSur-cursosrs";
				package = pkgs.whitesur-cursors;
				size = 24;
			};
		};
		
		programs = {
			neovim = {
				enable = true;
				defaultEditor = true;
				
				viAlias = true;
				vimAlias = true;
				plugins = with pkgs.vimPlugins; [
					lazy-nvim
				];	
			};

			qutebrowser.enable = true;

			vscode = {
				enable = true;
			};
			
		};
		
		services.dunst.enable = true;

		home.stateVersion = "23.11";
	};


}
