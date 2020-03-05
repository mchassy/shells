#cat ~/vc | xsel -ib
cd ~ || exit
xsel -ib < ~/vc
echo "Please enter aws account to access: PERSO or VC"
read -r AWSMODE
echo "Setting account to $AWSMODE"
case "$AWSMODE" in
  "PERSO")
    export AWS_PROFILE=mchassy
    ;;
  "VC")
    export AZURE_TENANT_ID=a68c657c-caa2-49db-a81b-2ba125e66393
    export AZURE_APP_ID_URI=f762d98a-d2a4-4053-bb31-938786cc4c65
    export AWS_PROFILE=default
    export AZURE_DEFAULT_USERNAME=mark.chassy@virtualclarity.com
    export AZURE_DEFAULT_DURATION_HOURS=12
    docker run --rm -it -v ~/.aws:/root/.aws sportradar/aws-azure-login --no-prompt
    ;;
  *)
    echo "Nothing to do, please choose PERSO or VC."
    return 1
    ;;
esac
aws s3 ls
