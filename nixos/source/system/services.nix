{ pkgs, ... }:
{
    services = {
		getty.autologinUser = "kitotavrik";

		greetd = {
			enable = true;
			settings = rec {
			initial_session = {
					command = "Hyprland";
					user = "kitotavrik";
				};
		    	default_session = initial_session;
			};
    	};
    };
}
