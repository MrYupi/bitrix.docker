if [[ $(docker ps -q) ]]
then
	# shellcheck disable=SC2046
	docker stop $(docker ps -q)
fi