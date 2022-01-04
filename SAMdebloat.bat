@ECHO off
echo Debloating...
REM Automated Debloat Script for Android (Samsung)
REM This is a very minimal debloat script. If you're looking for a deep debloat, try W1nst0n's Universal-Android-Debloater tool at: https://www.gitlab.com/w1nst0n/universal-android-debloater

REM Make sure ADB is installed and in your PATH before proceeding.
REM NOTE: -k lets you reinstall the app without redownloading the .APK file via ADB.
REM You can choose to remove it, but you won't be able to reinstall the package --
REM unless you have the .APK file, or by factory resetting your device.

REM --- Google ---

REM Google App (AKA The Mothership)
adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox
REM Google Chrome
adb shell pm uninstall -k --user 0 com.android.chrome
REM Google Chrome DNS Bypass Package (Ignores DNS settings to serve GoogleAds)
adb shell pm unninstall -k --user 0 com.android.partnerbrowsercustomizations.chromeHomepage
REM Gmail
adb shell pm uninstall -k --user 0 com.google.android.gm
REM Google Maps
adb shell pm uninstall -k --user 0 com.google.android.apps.maps
REM Google Drive
adb shell pm uninstall -k --user 0 com.google.android.apps.docs
REM Google Duo
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
REM Google Movies and TV/Google TV
adb shell pm uninstall -k --user 0 com.google.android.videos
REM Google Photos
adb shell pm uninstall -k --user 0 com.google.android.apps.photos
REM Google Location History
adb shell pm uninstall -k --user 0 com.google.android.gms.location.history
REM YT Music
adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music

REM --- Microsoft ---

REM Microsoft OneDrive
adb shell pm uninstall -k --user 0 com.microsoft.skydrive
REM Microsoft Office
adb shell pm uninstall -k --user 0 com.microsoft.office.officehubrow

REM --- Samsung ---

REM Samsung Themes
adb shell pm uninstall -k --user 0 com.samsung.android.themestore
adb shell pm uninstall -k --user 0 com.samsung.android.themecenter
REM Samsung Push Service
adb shell pm uninstall -k --user 0 com.sec.spp.push
REM Samsung Email
adb shell pm uninstall -k --user 0 com.samsung.android.email.provider
REM Samsung Members
adb shell pm uninstall -k --user 0 com.samsung.android.voc
REM Samsung Experience Service
adb shell pm uninstall -k --user 0 com.samsung.android.mobileservice
REM Samsung Cloud
adb shell pm uninstall -k --user 0 com.samsung.android.scloud
REM Samsung Checkout
adb shell pm uninstall -k --user 0 com.sec.android.app.billing
REM Samsung Find My Mobile (Google's Find My Phone is left intact)
adb shell pm uninstall -k --user 0 com.samsung.android.fmm
REM Digital Welbeing
adb shell pm uninstall -k --user 0 com.samsung.android.forest
REM Wearable Manager Stub
adb shell pm uninstall -k --user 0 com.samsung.android.app.watchmanagerstub

REM ---MULTI-CSC---
REM These apps may be populated depending on the CSC code you've setup. Ignore any "not installed" errors.

REM Samsung Global Goals
adb shell pm uninstall -k --user 0 com.samsung.sree
REM AppCloud
adb shell pm uninstall -k --user 0 com.aura.oobe.samsung
REM Config Update (NOT OTA updates)
adb shell pm uninstall -k --user 0 com.samsung.android.app.omcagent
REM Facebook
adb shell pm uninstall -k --user 0 com.facebook.katana
REM LinkedIn
adb shell pm uninstall -k --user 0 com.linkedin.android
REM Spotify
adb shell pm uninstall -k --user 0 com.spotify.music
REM Galaxy Shop (NOT Samsung Galaxy Apps)
	REM adb shell pm uninstall -k --user 0

REM Netflix
adb shell pm uninstall -k --user 0 com.netflix.mediaclient

REM --- ADVANCED DEBLOATING (Be careful) ---
REM --- Don't uninstall unless you know what you're doing!!!

REM Google Play Store
	REM adb shell pm uninstall -k --user 0 com.android.vending
REM Google Play Services
	REM adb shell pm uninstall -k --user 0 com.google.android.gms
REM Google Services Framework
	REM adb shell pm uninstall -k --user 0 com.google.android.gsf
REM Samsung Galaxy Store
	REM adb shell pm uninstall -k --user 0 com.sec.android.app.samsungapps
REM Samsung Browser (INSTALL ANOTHER WEB BROWSER BEFORE REMOVING!)
	REM adb shell pm uninstall -k --user 0 com.sec.android.app.sbrowser
REM Samsung Account (May break Settings APP)
	REM adb shell pm uninstall -k --user 0 com.osp.app.signin
REM Software Updates (OTA)
	REM adb shell pm uninstall -k --user 0 com.sec.android.soagent
	REM adb shell pm uninstall -k --user 0 com.wssyncmldm
REM Samsung Keyboard (INSTALL ANOTHER KEYBOARD **WITH ROOT** BEFORE REMOVING!)
	REM adb shell pm uninstall -k --user 0 com.sec.android.inputmethod
REM Android Setup
	REM adb shell pm uninstall -k --user 0 com.google.android.setupwizard
REM Samsung Customisation Service (May break some Samsung apps)
	REM adb shell pm uninstall -k --user 0 com.samsung.android.rubin.app

echo Success
