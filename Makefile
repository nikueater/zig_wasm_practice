
.PHONY: all clean
all: dist/index.html

server:
	npx parcel src/index.html

dist/index.html: src/lib.wasm src/index.html src/index.js
	npx parcel build src/index.html -d dist

src/lib.wasm: src/lib.zig
	zig build-lib $< -target wasm32-freestanding --output-dir src

clean:
	rm dist/*
	rm src/lib.o src/lib.wasm
