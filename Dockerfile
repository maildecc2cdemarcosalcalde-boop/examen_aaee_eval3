FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
# Esta línea es la clave: copia el archivo JAR generado por Maven
COPY target/*.jar app.jar
# Esta línea le dice a Docker cómo arrancar la app
ENTRYPOINT ["java","-jar","/app.jar"]
