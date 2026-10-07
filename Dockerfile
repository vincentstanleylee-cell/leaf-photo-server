# Leaf Photo server for hosting services such as Render.
# The server program (leaf-photo-server.jar) is built and tested on the owner's PC by HOSTING.bat;
# this file only runs it.
FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY leaf-photo-server.jar /app/leaf-photo-server.jar

# The hosting service sends traffic from outside the container and sets PORT itself.
# The Java options keep the memory small enough for a 512 MB free plan.
ENV HOST=0.0.0.0 \
    TRUST_PROXY=true \
    LOG_DIR=/tmp/leaf-photo-logs \
    JAVA_TOOL_OPTIONS="-XX:MaxRAMPercentage=60 -XX:+UseSerialGC -XX:TieredStopAtLevel=1"
EXPOSE 10000
USER 10001
CMD ["java", "-jar", "/app/leaf-photo-server.jar"]