{ pkgs, ... }: 
{
    programs.firefox = {
        enable = true;

        languagePacks = [ "en_US" ];
        profiles.tluwun = {

            extensions = { 

                packages = with pkgs.nur.repos.rycee.firefox-addons; [
                    privacy-badger
                    keepassxc-browser
                    darkreader
                    simple-translate
                    return-youtube-dislikes
                    decentraleyes
                    duckduckgo-privacy-essentials
                    ublock-origin
                    surfingkeys
                    remove-youtube-s-suggestions
                    adaptive-tab-bar-colour
                    sponsorblock
                    videospeed
                    stylus
                ];

                settings = {
                    # "uBlock0@raymondhill.net" = {
                        
                    # };
                    # "simple-translate@sienori" = {
                            
                    # };

                };
            };

            settings = {
                # This is settings need for privacy and security in Firefox
                "toolkit.telemetry.archive.enabled" = false;
                "toolkit.telemetry.bhrPing.enabled" = false;
                "toolkit.telemetry.cachedClientID" = "";
                "toolkit.telemetry.firstShutdownPing.enabled" = false;
                "toolkit.telemetry.hybridContent.enabled" = false;
                "toolkit.telemetry.newProfilePing.enabled" = false;
                "toolkit.telemetry.previousBuildID" = "";
                "toolkit.telemetry.reportingpolicy.firstRun" = false;
                "toolkit.telemetry.server" = "";
                "toolkit.telemetry.server_owner" = "";
                "toolkit.telemetry.shutdownPingSender.enabled" = false;
                "toolkit.telemetry.unified" = false;
                "toolkit.telemetry.updatePing.enabled" = false;
                "datareporting.healthreport.infoURL" = "";
                "datareporting.healthreport.uploadEnabled" = false;
                "datareporting.policy.dataSubmissionEnabled" = false;
                "datareporting.policy.firstRunURL" = "";
                "browser.tabs.crashReporting.sendReport" = false;
                "browser.tabs.crashReporting.email" = false;
                "browser.tabs.crashReporting.emailMe" = false;
                "breakpad.reportURL" = "";
                "security.ssl.errorReporting.automatic" = false;
                "toolkit.crashreporter.infoURL" = "";                
                "network.allow-experiments" = false;
                "dom.ipc.plugins.reportCrashURL" = false;
                "dom.ipc.plugins.flash.subprocess.crashreporter.enabled" = false;
                # The other settings
                "browser.startup.homepage" = "https://duckduckgo.com";
                "general.useragent.locale" = "uk-UA";
                # This is need to turn off fullscreen animation
                "full-screen-api.transition-duration.enter" = "0";
                "full-screen-api.transition-duration.leave" = "0";
                "full-screen-api.warning.timeout" = 0; 
                # Turn off a Pocket 
                "extensions.pocket.api" = "";
                "extensions.pocket.enabled" = false;
                "extensions.pocket.site" = "";
                "extensions.pocket.oAuthConsumeKey" = "";
                # Tell sites "Please don't track me"
                "privacy.trackingprotection.enabled" = true;
                "privacy.donottrackheader.enabled" = true;
            };
            bookmarks = {
                settings = [
                    {
                        name = "x4";
                        url = "javascript:void(document.querySelector('video').playbackRate = 4)";
                        #toolbar = true;
                    }
                ];
                force = true;
            };
        };
    };
}
