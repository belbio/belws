# Run make help or make list to find out what the commands are

# ensures list is not mis-identified with a file of the same name
.PHONY: serve deploy
.PHONY: test list help


serve:
	hugo server -D

deploy:
	hugo
	aws s3 sync "public" "s3://language.bel.bio" --acl "public-read"

list:
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'

help:
	@echo "List of commands"
	@echo "   help -- This listing "
	@echo "   list -- Automated listing of all targets"


