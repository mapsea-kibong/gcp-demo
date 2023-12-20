FROM amazoncorretto:17

COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src
RUN chmod +x ./gradlew
RUN ./gradlew build --exclude-task test

RUN cp ./build/libs/gcp-demo-0.0.1.jar ./app.jar
EXPOSE 80

CMD [ "java", "-jar", "app.jar" ]