user_pref("browser.cache.disk.parent_directory", "/run/user/1000/firefox");
user_pref("browser.compactmode.show", true);
user_pref("browser.tabs.insertAfterCurrentExceptPinned", true);
user_pref("browser.urlbar.trimURLs", false);
user_pref("media.hardware-video-decoding.force-enabled", true); // FEATURE_FAILURE_VIDEO_DECODING_TEST_FAILED

// revert betterfox
user_pref("browser.cache.disk.enable", true);
user_pref("dom.security.https_only_mode", false);
