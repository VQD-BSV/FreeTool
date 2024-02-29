@echo off
:start
title Download Software Fast v1.3 - Developed by Vu Quang Dai
cls&color f0
mode con: cols=90 lines=45
echo                Download Software Fast v1.3 - Developed by Vu Quang Dai
echo *Web browser:
echo 1.Download Coc Coc
echo 2.Download Firefox
echo 3.Download Vivaldi
echo 4.Download Chrome
echo 5.Download Opera
echo 6.Download Brave
echo =====================================================
echo *Support listening to music,watching videos:
echo 7.Download Media Player Classic
echo 8.Download VLC Media Player
echo 9.Download KMPlayer
echo =====================================================
echo *Compress and decompress files:
echo 10.Download WinRar
echo 11.Download 7-Zip
echo 12.Download WinZip
echo =====================================================
echo *Support Download:
echo 13.Download Internet Download Manager
echo 14.Download FlashGet
echo 15.Download Gigaget
echo =====================================================
echo *Check Driver:
echo 16.Download Intel Driver Support Assistant
echo 17.Download DriverPack Solution
echo 18.Download Driver Booster
echo 19.Download 3DP Chip
echo =====================================================
echo *Virus removal:
echo 20.Download Kaspersky Anti-Virus
echo 21.Download Avast Antivirus
echo 22.Download Bkav Home
echo =====================================================
echo *Chat, call, text:
echo 23.Download Messenger
echo 24.Download Facebook
echo 25.Download Zalo
echo =====================================================
set /p input=Select Number: 

if %input%==1 (start msedge.exe "https://files-cdn.coccoc.com/browser/x64/coccoc_vi_machine.exe")
if %input%==2 (start msedge.exe "https://v90.x8top.net/tmp082020/cf/soft/2022/8/ba/5/firefox_10401_64bit.exe")
if %input%==3 (start msedge.exe "https://downloads.vivaldi.com/stable/Vivaldi.5.4.2753.37.x64.exe")
if %input%==4 (start msedge.exe "https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B4E461FE0-84E2-EB87-C31A-B5DB3A33A174%7D%26lang%3Dvi%26browser%3D4%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe")
if %input%==5 (start msedge.exe "https://get.geo.opera.com/.private/OperaNeonSetup.exe?utm_tryagain=yes&dl_token=34683224")
if %input%==6 (start msedge.exe "https://referrals.brave.com/latest/BraveBrowserSetup.exe")
if %input%==7 (start msedge.exe "https://fa.getpedia.net/data/?q===wMyQjNyYzM2AzMzgzN2kzNzYDfwMDN1wXZ4VmL0YDetMTMtcTLx0yQI1yQQ10LxIzL3AzL3EDMy8SZslmZvEGdhR2L&e=o")
if %input%==8 (start msedge.exe "https://mirror.downloadvn.com/videolan/vlc/3.0.17.4/win64/vlc-3.0.17.4-win64.exe")
if %input%==9 (start msedge.exe "https://v90.x8top.net/tmp082020/cf/soft/2022/8/ba/3/kmplayer_42268.exe")
if %input%==10 (start msedge.exe "https://www.rarlab.com/rar/winrar-x64-611.exe")
if %input%==11 (start msedge.exe "https://d3.7-zip.org/a/7z2201-x64.exe")
if %input%==12 (start msedge.exe "https://download.winzip.com/gl/nkln/winzip26-home.exe")
if %input%==13 (start msedge.exe "https://mirror2.internetdownloadmanager.com/idman641build2.exe?v=lt&filename=idman641build2.exe")
if %input%==14 (start msedge.exe "http://www.flashget.com/apps/flashget3.7.0.1195en.exe" )
if %input%==15 (start msedge.exe "https://fc.getpedia.net/data/?q=zEDO1MTMwAzMzUDO3YTO3MjN8RDO5QDflhXZuQXZnF2Zpd0LxAzL4AzL0EDMy8Cdm92UvEGdhR2L&e=o")
if %input%==16 (start msedge.exe "https://dsadata.intel.com/installer" )
if %input%==17 (start msedge.exe "https://dl.driverpack.io/17-online/DriverPack-17-Online.exe")
if %input%==18 (start msedge.exe "https://cdn.iobit.com/dl/driver_booster_setup_trial.exe")
if %input%==19 (start msedge.exe "https://www.3dpchip.com/new/3DP_Chip_v2208.exe")
if %input%==20 (start msedge.exe "https://fc.getpedia.net/data/?q==kDM0IzN4kzN2cTN0gjN5czM2wXM2QDOzwXZ4VmLxIjdht2L1EzLzAzLxIDMy8SZslmZvEGdhR2L&e=o")
if %input%==21 (start msedge.exe "https://bits.avcdn.net/productfamily_ANTIVIRUS/insttype_FREE/platform_WIN/installertype_ONLINE/build_RELEASE/cookie_mmm_ava_008_999_a6h_m")
if %input%==22 (start msedge.exe "https://v51.x8top.net/tmp082020/cf/soft/2018/10/ba/3/bkav_home-5711.exe")
if %input%==23 (start msedge.exe "https://v90.x8top.net/tmp082020/cf/soft/2021/3/3/messenger_957118.exe")
if %input%==24 (start msedge.exe "https://v90.x8top.net/tmp082020/cf/soft/2017/3/ba/3/facebook-desktop_0002.exe")
if %input%==25 (start msedge.exe "https://res-download-pc-te-vnso-zn-12.zadn.vn/hybrid/ZaloSetup_22.7.2.exe")
goto start