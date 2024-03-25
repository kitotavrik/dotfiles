{ pkgs, ... }:
{
    # Doas.
    security.doas.enable = true;
    security.sudo.enable = false;
    security.doas.extraRules = [{
        groups = [ "wheel" ];
        persist = true;
        keepEnv = true;
    }];


    environment.interactiveShellInit = ''
	    alias git-install="git clone --depth=1"

		hash -d hdd=/media/hdd
	'';

    # Zsh.
    users.defaultUserShell = pkgs.zsh;	
    programs.zsh = { 
        enable = true;
        syntaxHighlighting.enable = true;
        promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
             
        ohMyZsh = {
            enable = true;
            customPkgs = [];
            plugins = [ "git" ]; 
        };
    };
}
