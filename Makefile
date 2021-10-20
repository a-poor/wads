default:
	@echo ...

test:
	wasm-pack test --headless --firefox

build:
	wasm-pack build --scope a-poor

deploy: build
	cd pkg && npm publish --access=public
