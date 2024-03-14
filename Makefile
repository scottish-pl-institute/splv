usage:
	echo "The website is based on jekyll and github-pages"
	echo ""
	echo "We suggest you install them using your system's package or"
	echo "if you are using nix invoke a nix shell."
	echo ""
	echo "We provide the following targets:"
	echo ""
	echo "  make nix-shell"
	echo ""
	echo "invokes a nix shell with the required dependencies"
	echo "to exit run `exit`"
	echo ""
	echo "  make healthcheck"
	echo ""
	echo "invokes github-pages healthcheck"
	echo ""
	echo "  make build"
	echo ""
	echo "invokes github-pages build (generating a `_site`)"
	echo ""

.PHONY: usage nix-shell healthcheck build

nix-shell:
	nix-shell -p jekyll \
		     rubyPackages.jekyll-feed \
		     rubyPackages.jekyll-redirect-from \
		     rubyPackages.github-pages

healthcheck:
	github-pages healthcheck

build:
	github-pages build
