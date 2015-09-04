while :
do
  curl --header "Connection: keep-alive" "http://10.245.1.3:31000"
  sleep 1
  printf "\n"
done
