{ config, pkgs, ... }:
{
    services = {
        xserver.videoDrivers = [ "nvidia" "modesetting" ];
        
        pipewire = {
			enable = true;
			alsa.enable = true;
			alsa.support32Bit = true;
			pulse.enable = true;
			jack.enable = true; 
        };
    };

    environment.etc = {
        "wireplumber/bluetooth.lua.d/51-bluez-config.lua".text = ''
            bluez_monitor.properties = {
                ["bluez5.enable-sbc-xq"] = true,
                ["bluez5.enable-msbc"] = true,
                ["bluez5.enable-hw-volume"] = true,
                ["bluez5.headset-roles"] = "[ hsp_hs hsp_ag hfp_hf hfp_ag ]"
            }
        '';
    };

    hardware = {
        cpu.intel.updateMicrocode = true;

        opengl = {
            enable = true;
            driSupport = true;
            driSupport32Bit = true;
        };

        # Video drivers.
        nvidia = {
            modesetting.enable = true;
            powerManagement.enable = false;
            powerManagement.finegrained = false;
            open = false;
            nvidiaSettings = true;
            package = config.boot.kernelPackages.nvidiaPackages.stable;

            prime = {
                sync.enable = false;
                intelBusId = "PCI:0:2:0";
                nvidiaBusId = "PCI:1:0:0";
            };
        };
    };

    fileSystems."/media/hdd" = {
        device = "/dev/sdb1";
        fsType = "ext4";
    };
}
