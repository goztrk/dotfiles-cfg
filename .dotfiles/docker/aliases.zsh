alias dcup='docker compose up -d'
alias dcdown='docker compose down'
alias dcbuild='docker compose up -d --no-deps --build'

function dcexec() {
	docker exec -it $1 bash
}
