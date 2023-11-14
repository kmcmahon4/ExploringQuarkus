FROM amazoncorretto:21

WORKDIR /app

COPY target/*-runner /app/app

EXPOSE 8080

CMD ["./app", "-Dquarkus.http.host=0.0.0.0"]
