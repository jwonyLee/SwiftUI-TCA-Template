module:
	tuist scaffold $(type) --name $(name)
	chmod +x ./update-modules.sh
	./update-modules.sh
	tuist edit