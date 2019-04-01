FROM docker.io/java
ADD target/*.jar /tmp
CMD java -jar -Dspring.profiles.active=mysql /tmp/*.jar
EXPOSE 8080