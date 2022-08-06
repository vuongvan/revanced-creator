printf "Download apksigner"

dl="curl -OL https://github.com/vuongvan/revanced-creator/releases/download/v0.1/apksigner.zip"
$dl
dl1="curl -OL https://github.com/vuongvan/revanced-creator/releases/download/v0.1/apksigner.jar"
$dl1

printf "Unzip apksigner\n"
unzip apksigner.zip
printf "Resign Apk\n"
reapk=$(find . -type f -name "revanced-*-non-root.apk")
base_cmd="java -jar ApkSigner.jar sign  --key key.pk8 --cert key.pem  --v4-signing-enabled false --out $reapk-resigned.apk $reapk"
$base_cmd
printf "Signed Apk\n"
