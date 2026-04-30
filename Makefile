PORT ?= 4500

.PHONY: help
help: ## Show this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  \033[1m%-12s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: dev
dev: ## Serve the site locally on :$(PORT)
	@echo "serving stonecamp on http://localhost:$(PORT)"
	@python3 -m http.server $(PORT)

.PHONY: check
check: ## Echo all referenced hrefs/srcs for a quick eyeball
	@grep -oE 'href="[^"]+"|src="[^"]+"' index.html | sort -u

.PHONY: update-motif
update-motif: ## Refresh vendored motif CSS from sibling pointegrity site
	cp ../pointegrity/static/motif/*.css static/motif/
	@echo "motif CSS updated — review with: git diff static/motif/"
