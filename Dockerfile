FROM eclipse-temurin:17-jre

WORKDIR /app

COPY target/station-ski-1.0-SNAPSHOT.jar app.jar

CMD ["java", "-cp", "app.jar", "com.station.ski.App"]
