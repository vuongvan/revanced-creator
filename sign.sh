#!/bin/sh
printf "Resign Apk\n"
reapk=$(find . -name "revanced-*-non-root.apk")
#printf "$reapk\n"
#reapk=${reapk:2}
#printf "$reapk\n"
base_cmd="java -jar apksigner.jar sign  --key key.pk8 --cert key.pem  --v4-signing-enabled false --out $reapk-resigned.apk $reapk"
$base_cmd
printf "Signed Apk\n"
