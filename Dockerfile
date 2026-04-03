# 1. JDK ?´ë?ì§€ë¥?ë² ì´?¤ë¡œ ?¬ìš©
FROM eclipse-temurin:17-jdk-jammy

# 2. ? í”Œë¦¬ì??´ì…˜ JAR ?Œì¼??ì»¨í…Œ?´ë„ˆë¡?ë³µì‚¬
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

# 3. ì»¨í…Œ?´ë„ˆê°€ ?¤í–‰?????¤í–‰??ëª…ë ¹??ENTRYPOINT ["java","-jar","/app.jar"]

# 4. ?œë¹„???¬íŠ¸ ?¸ì¶œ (Spring Boot ê¸°ë³¸ 8080)
EXPOSE 8080
