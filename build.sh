# build angular app image


buildImage () {
    docker image build -t angular-playground .
}

for param in "$@"
do
  case $param in
    build)
      buildImage
      ;;
    *)
      echo "Invalid argument : $param"
  esac
  if [ ! $? -eq 0 ]; then
    exit 1
  fi
done