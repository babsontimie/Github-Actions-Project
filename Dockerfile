FROM eclipse-temurin:17-jdk-alpine
    
EXPOSE 8080

RUN ls 


WORKDIR $APP_HOME
COPY app/*.jar $APP_HOME/app.jar

ENV APP_HOME=/usr/src/app

CMD ["java", "-jar", "app.jar"]
