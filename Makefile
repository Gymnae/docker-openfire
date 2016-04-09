all: build

build:
	@docker build --tag=gymnae/openfire .

release: build
	@docker build --tag=gymnae/openfire:$(shell cat VERSION) .
