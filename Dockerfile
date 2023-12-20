FROM amazoncorretto:17

COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src
RUN chmod +x ./gradlew
RUN ./gradlew build --exclude-task test

RUN mkdir /app
ADD /build/libs/gcp-demo-0.0.1.jar /app
CMD [ "java", "-jar", "/app/gcp-demo-0.0.1.jar" ]