#!/bin/sh
printf "Resign Apk\n"
reapk="revanced-17.29.34-non-root.apk"
#reapk=$(find . -name "revanced-*-non-root.apk")
#printf "$reapk\n"
#reapk=${reapk:2}
#printf "$reapk\n"
base_cmd="java -jar apksigner.jar sign  --key key.pk8 --cert key.pem  --v4-signing-enabled false --out /home/runner/work/revanced-creator/revanced-creator/revanced-17.29.34-non-root-signed.apk /home/runner/work/revanced-creator/revanced-creator/revanced-17.29.34-non-root.apk"
$base_cmd
printf "Signed Apk\n"
