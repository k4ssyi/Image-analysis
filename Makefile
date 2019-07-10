ALL: build
build:
	docker-compose -f docker-compose.yml build
container:
	docker-compose -f docker-compose.yml up
up:
	docker-compose -f docker-compose.yml up -d
stop:
	docker-compose -f docker-compose.yml stop
shell:
	docker-compose exec app bash
