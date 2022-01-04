# Automated Debloat Script for Android (Samsung)
# This is a very minimal debloat script. If you're looking for a deep debloat, try W1nst0n's Universal-Android-Debloater tool at: https://www.gitlab.com/w1nst0n/universal-android-debloater

# Make sure ADB is installed and in your PATH before proceeding.
# NOTE: -k lets you reinstall the app without redownloading the .APK file via ADB.
# You can choose to remove it, but you won't be able to reinstall the package --
# unless you have the .APK file, or by factory resetting your device.

# --- Google ---

# Google App (AKA The Mothership)
adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox
# Google Chrome
adb shell pm uninstall -k --user 0 com.android.chrome
# Google Chrome DNS Bypass Package (Ignores DNS settings to serve GoogleAds)
adb shell pm unninstall -k --user 0 com.android.partnerbrowsercustomizations.chromeHomepage
# Gmail
adb shell pm uninstall -k --user 0 com.google.android.gm
# Google Maps
adb shell pm uninstall -k --user 0 com.google.android.apps.maps
# Google Drive
adb shell pm uninstall -k --user 0 com.google.android.apps.docs
# Google Duo
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
# Google Movies and TV/Google TV
adb shell pm uninstall -k --user 0 com.google.android.videos
# Google Photos
adb shell pm uninstall -k --user 0 com.google.android.apps.photos
# Google Location History
adb shell pm uninstall -k --user 0 com.google.android.gms.location.history
# YT Music
adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music

# --- Microsoft ---

# Microsoft OneDrive
adb shell pm uninstall -k --user 0 com.microsoft.skydrive
# Microsoft Office
adb shell pm uninstall -k --user 0 com.microsoft.office.officehubrow

# --- Samsung ---

# Samsung Themes
adb shell pm uninstall -k --user 0 com.samsung.android.themestore
adb shell pm uninstall -k --user 0 com.samsung.android.themecenter
# Samsung Push Service
adb shell pm uninstall -k --user 0 com.sec.spp.push
# Samsung Email
adb shell pm uninstall -k --user 0 com.samsung.android.email.provider
# Samsung Members
adb shell pm uninstall -k --user 0 com.samsung.android.voc
# Samsung Experience Service
adb shell pm uninstall -k --user 0 com.samsung.android.mobileservice
# Samsung Cloud
adb shell pm uninstall -k --user 0 com.samsung.android.scloud
# Samsung Checkout
adb shell pm uninstall -k --user 0 com.sec.android.app.billing
# Samsung Find My Mobile (Google's Find My Phone is left intact)
adb shell pm uninstall -k --user 0 com.samsung.android.fmm
# Digital Welbeing
adb shell pm uninstall -k --user 0 com.samsung.android.forest
# Wearable Manager Stub
adb shell pm uninstall -k --user 0 com.samsung.android.app.watchmanagerstub

#---MULTI-CSC---
# These apps may be populated depending on the CSC code you've setup. Ignore any "not installed" errors.

# Samsung Global Goals
adb shell pm uninstall -k --user 0 com.samsung.sree
# AppCloud
adb shell pm uninstall -k --user 0 com.aura.oobe.samsung
# Config Update (NOT OTA updates)
adb shell pm uninstall -k --user 0 com.samsung.android.app.omcagent
# Facebook
adb shell pm uninstall -k --user 0 com.facebook.katana
# LinkedIn
adb shell pm uninstall -k --user 0 com.linkedin.android
# Spotify
adb shell pm uninstall -k --user 0 com.spotify.music
# Galaxy Shop (NOT Samsung Galaxy Apps)
	#adb shell pm uninstall -k --user 0

# Netflix
adb shell pm uninstall -k --user 0 com.netflix.mediaclient

# --- ADVANCED DEBLOATING (Be careful) ---#
# --- Don't uninstall unless you know what you're doing!!!

# Google Play Store
	#adb shell pm uninstall -k --user 0 com.android.vending
# Google Play Services
	#adb shell pm uninstall -k --user 0 com.google.android.gms
# Google Services Framework
	#adb shell pm uninstall -k --user 0 com.google.android.gsf
# Samsung Galaxy Store
	#adb shell pm uninstall -k --user 0 com.sec.android.app.samsungapps
# Samsung Browser (INSTALL ANOTHER WEB BROWSER BEFORE REMOVING!)
	#adb shell pm uninstall -k --user 0 com.sec.android.app.sbrowser
# Samsung Account (May break Settings APP)
	#adb shell pm uninstall -k --user 0 com.osp.app.signin
# Software Updates (OTA)
	#adb shell pm uninstall -k --user 0 com.sec.android.soagent
	#adb shell pm uninstall -k --user 0 com.wssyncmldm
# Samsung Keyboard (INSTALL ANOTHER KEYBOARD **WITH ROOT** BEFORE REMOVING!)
	#adb shell pm uninstall -k --user 0 com.sec.android.inputmethod
# Android Setup
	#adb shell pm uninstall -k --user 0 com.google.android.setupwizard
# Samsung Customisation Service (May break some Samsung apps)
	#adb shell pm uninstall -k --user 0 com.samsung.android.rubin.app

echo "Success"
