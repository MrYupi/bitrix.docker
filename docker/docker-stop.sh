if [[ $(docker ps -q) ]]
then
	# shellcheck disable=SC2046
	docker stop $(docker ps -q)
fi

if [[ $(docker ps -qa) ]]
then
	# shellcheck disable=SC2046
	docker rm $(docker ps -qa)
fi