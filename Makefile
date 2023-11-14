build: build_app
	docker compose build myquarkusapp

run:
	docker-compose rm -f 2>/dev/null || true
	docker-compose up

build_app:
	mvnw package -Dnative -Dquarkus.native.container-build=true


run_image:
	docker run -i --rm -p 8080:8080 myapp


