
wait_for_container() {
	# any linked container that has to be working before anything happen
	LINK_CONTAINER={% raw %}${{% endraw %}{{ cookiecutter.linked_container|upper }}_PORT}
	LINKED_CONTAINER_ADDR=${{ cookiecutter.linked_container|upper }}_PORT_{{ cookiecutter.linked_container_port }}_TCP_ADDR
	LINKED_CONTAINER_PORT=${{ cookiecutter.linked_container|upper }}_PORT_{{ cookiecutter.linked_container_port }}_TCP_PORT

	echo "waitig for other linked container"
	while ! exec 6<>/dev/tcp/${LINKED_CONTAINER_ADDR}/${LINKED_CONTAINER_PORT}; do
	    echo "$(date) - still trying to connect to container at ${LINK_CONTAINER}"
	    sleep 1
	done
}
