brew/bundle:
	brew bundle

brew/dump:
	brew bundle dump -f

brew/cleanup:
	brew bundle cleanup

brew/cleanup/exec:
	brew bundle cleanup --force

clone_repos:
	./ghq_repos.sh
