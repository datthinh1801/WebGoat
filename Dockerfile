FROM maven:3.8.1-openjdk-15
WORKDIR build

COPY pom.xml ./pom.xml
copy .mvn ./.mvn
COPY config ./config
COPY docker ./docker
COPY webgoat-container ./webgoat-container
COPY webgoat-integration-tests ./webgoat-integration-tests
COPY webgoat-lessons ./webgoat-lessons
COPY webgoat-server ./webgoat-server
COPY webwolf ./webwolf
CMD mvn clean install -DskipTest -f ./pom.xml