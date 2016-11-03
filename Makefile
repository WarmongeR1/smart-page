BASEDIR=$(CURDIR)

pip-tools:
		pip install pip
		pip install pip-tools

requirements: pip-tools
		pip-compile requirements.in
		pip-sync requirements.txt

dev-requirements: pip-tools
		pip-compile requirements.in
		pip-compile dev-requirements.in
		pip-sync dev-requirements.txt

test:
		py.test apps agents utils tests helpers


.PHONY: docs test
