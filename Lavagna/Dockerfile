FROM maven:3.8.6-openjdk-8 as builder



# copy source files
COPY src /app/src
COPY pom.xml LICENSE-GPLv3.txt /app/

WORKDIR /app
# build and verify
RUN mvn verify

COPY entrypoint.sh .

RUN ["chmod", "+x", "entrypoint.sh"]


# # set the entrypoint script
FROM openjdk:8-jre-alpine 

RUN mkdir -p /app/target

COPY --from=builder  /app/target /app/target

COPY --from=builder app/entrypoint.sh /

ENTRYPOINT ["./entrypoint.sh"]
