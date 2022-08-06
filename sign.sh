printf "Resign Apk\n"
reapk=$(find . -type f -name "revanced-*-non-root.apk")
base_cmd="java -jar apksigner.jar sign  --key key.pk8 --cert key.pem  --v4-signing-enabled false --out $reapk-resigned.apk $reapk"
$base_cmd
printf "Signed Apk\n"
