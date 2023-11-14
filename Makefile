build: build_app
	docker compose build myquarkusapp

run:
	docker-compose rm -f 2>/dev/null || true
	docker-compose up

build_app:
	mvn package -Dnative -Dquarkus.native.container-build=true

build_dev:
	mvn compile quarkus:dev