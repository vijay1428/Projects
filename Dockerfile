#frontend

FROM node
RUN mkdir /build
COPY app /build
RUN npm install --global serve -y
ENTRYPOINT ["serve","-s","build"]
EXPOSE 3000
