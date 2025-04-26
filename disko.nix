{
    disko.devices = {
        disk = {
            main = {
                type = "disk";

                device = "/dev/sda";

                content = {
                    type = "gpt";

                    partitions = {
                        ESP = {
                            size = "600M";

                            type = "EF00";

                            content = {
                                type = "filesystem";

                                format = "vfat";

                                mountpoint = "/boot";

                                mountOptions = [ "umask=0077" ];
                            };
                        };

                        swap = {
                            size = "24G";

                            content = {
                                type = "swap";

                                resumeDevice = true;
                            };
                        };

                        luks = {
                            size = "100%";

                            content = {

                                type = "luks";
                                name = "disk";


                                extraOpenArgs = [ ];

                                settings = {

                                    allowDiscards = true;

                                };

                                content = {

                                    type = "btrfs";
                                    
                                    extraArgs = [ "-f" ];

                                    subvolumes = {
                                        "@" = {
                                            mountpoint = "/";
                                            mountOptions = [ "compress=zstd:3" "noatime" ];
                                        };
                                    };
                                };
                            };
                        };
                    };
                };
            };
        };
    };
}
