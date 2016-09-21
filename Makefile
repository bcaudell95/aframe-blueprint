
#
# Examples
#
boot::  examples/hello-world/index.html \
        examples/hello-edit/index.html
	echo done        

examples/hello-world/index.html: examples/src/Main.hs
	mkdir -p examples/hello-world
	cabal exec runghc examples/src/Main.hs hello-world $@

examples/hello-edit/index.html: examples/src/Main.hs
	mkdir -p examples/hello-edit
	cabal exec runghc examples/src/Main.hs hello-edit $@

server::
	npm run dev &
