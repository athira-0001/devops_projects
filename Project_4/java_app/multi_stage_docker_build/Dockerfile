###########################################
# STAGE 1: Build the Java Application
###########################################

FROM ubuntu AS build
WORKDIR /app
COPY . .
RUN apt-get update && \
    apt-get install -y openjdk-21-jdk && \
    apt-get clean
RUN javac CalculatorApp.java

###########################################
# STAGE 2: Run the Java Application
###########################################

FROM gcr.io/distroless/java21-debian11
WORKDIR /app
COPY --from=build /app /app
ENTRYPOINT ["java", "CalculatorApp"]
