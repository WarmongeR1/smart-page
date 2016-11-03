BASEDIR=$(CURDIR)
VIRTUAL_ENV=$(shell echo "$${VIRTUAL_ENV:-'.env'}")

all: $(VIRTUAL_ENV)

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

# target: clean - Display callable targets
clean:
		rm -rf build/ dist/ docs/_build *.egg-info
		find $(CURDIR) -name "*.py[co]" -delete
		find $(CURDIR) -name "*.orig" -delete
		find $(CURDIR)/$(MODULE) -name "__pycache__" | xargs rm -rf


run:
		muffin project run --config=project.config

.PHONY: docs test
