FROM eclipse-temurin:17-jdk-jammy

# 2. ?�플리�??�션 JAR ?�일??컨테?�너�?복사
ARG JAR_FILE=build/libs/ecs-practice-starter-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# 3. 컨테?�너가 ?�행?????�행??명령??ENTRYPOINT ["java","-jar","/app.jar"]

ENTRYPOINT ["java","-jar","/app.jar"]
# 4. ?�비???�트 ?�출 (Spring Boot 기본 8080)
EXPOSE 8080
