BASE_URL ?= https://www.sunderner-heimatbund.de

build:	## Compile static Hugo site
	hugo --gc --minify --baseURL "$(BASE_URL)"

help:	## Show this help and exit.
	@grep -E -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-30s\033[0m %s\n", $$1, $$2}'

dev:	## Run hugo dev server
	HUGO_MODULE_WORKSPACE=hugo.work hugo server -D --disableFastRender --noHTTPCache --ignoreVendorPaths "**"
