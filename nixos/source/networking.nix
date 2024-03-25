{
    networking = { 
        hostName = "cat";
        
        wireless.enable = true;
        wireless.networks = {

        };


		# Optimization boot.
		dhcpcd.wait = "background";
		dhcpcd.extraConfig = "noarp";
    };
}
