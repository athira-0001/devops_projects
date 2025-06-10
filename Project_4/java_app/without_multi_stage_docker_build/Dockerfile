FROM ubuntu
WORKDIR /app
COPY . .
RUN apt-get update && \
    apt-get install -y openjdk-21-jdk && \
    apt-get clean
RUN javac CalculatorApp.java
ENTRYPOINT ["java", "CalculatorApp"]
