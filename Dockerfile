# 1. 자바 21 환경 (가장 안정적인 Amazon Corretto 사용)
FROM amazoncorretto:21-alpine-jdk

# 2. 빌드된 jar 파일을 컨테이너 안으로 복사
# (주의: build/libs/ 폴더에 생성된 jar 파일을 복사합니다)
COPY build/libs/*.jar app.jar

# 3. 앱 실행
ENTRYPOINT ["java", "-jar", "/app.jar"]