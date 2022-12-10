#frontend

FROM node
RUN mkdir /build
COPY app /build
RUN npm install --global serve -y
ENTRYPOINT ["serve","-s","build"]
EXPOSE 3000


#backend

FROM maven:3.8.9-jdk-11
RUN mkdir abc
COPY ./web /abc
WORKDIR /abc
RUN ["mvn","package"]
ENTRYPOINT ["mvn","spring-boot:run"]
EXPOSE 8080

