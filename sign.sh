PATH=$PATH:$(pwd)
printf "Download apksigner\n"
curl -qLJO https://github.com/vuongvan/revanced-creator/releases/download/signer/apksigner.zip
printf "Unzip apksigner\n"
unzip apksigner.zip
printf "Resign Apk\n"
reapk=$(find . -type f -name "revanced-*-non-root.apk")
base_cmd="java -jar ApkSigner.jar sign  --key key.pk8 --cert key.pem  --v4-signing-enabled false --out $reapk-resigned.apk $reapk"
$base_cmd
printf "Signed Apk\n"