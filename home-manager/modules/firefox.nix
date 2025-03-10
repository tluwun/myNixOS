{ pkgs, ... }: 
{
    programs.firefox = {
        enable = true;

        profiles.tluwun = {
            extensions.packages = with pkgs.nur.repos.rycee.firefox-addons; [
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
            ];
            settings = {
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
            };
        };
    };
}
