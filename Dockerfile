FROM amazoncorretto:17
RUN mkdir /app
ADD /build/libs/gcp-demo-0.0.1.jar /app
CMD [ "java", "-jar", "/app/gcp-demo-0.0.1.jar" ]