build: build_app
	docker compose build myquarkusapp

run:
	docker-compose rm -f 2>/dev/null || true
	docker-compose up

build_app:
	mvnw package -Dnative -Dquarkus.native.container-build=true

build_dev:
	mvnw compile quarkus:dev