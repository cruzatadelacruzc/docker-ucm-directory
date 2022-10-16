FROM adoptopenjdk/openjdk11:jre-11.0.10_9-alpine
COPY dependency/BOOT-INF/lib /app/lib
COPY dependency/META-INF /app/META-INF
COPY dependency/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","cu.sld.ucmgt.directory.DirectoryApp"]
