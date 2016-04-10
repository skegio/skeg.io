.PHONY: localdev
SHELL := /bin/bash

export ANSIBLE_NOCOWS = 1

localdev:
	docker run --rm --name skeg_jekyll -p 4000:4000 --volume=$(shell pwd):/srv/jekyll jekyll/jekyll:builder 
