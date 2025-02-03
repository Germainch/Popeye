# TODO

poll : 

REDIS_HOST

OPTION_A: Ansible
OPTION_B: Chef
OPTION_C: Puppet
OPTION_D: SaltStack

- flask python
- depends on redis
- the image is based on an official Python image ;
- the app exposes and runs on port 80 ;

result:
POSTGRES_USER
POSTGRES_PASSWORD
POSTGRES_HOST
POSTGRES_PORT
POSTGRES_DB

- the image is based on an official Node.js Alpine image ;
- the app exposes and runs on port 80 ;
- exclude node_modules from the build context.




worker:

REDIS_HOST
REDIS_PORT=6379
POSTGRES_HOST
POSTGRES_PORT
POSTGRES_DB
POSTGRES_USER
POSTGRES_PASSWORD


- The image is built using a multi-stage build:
  - First stage - compilation:
  - is based on maven:3.9.6-eclipse-temurin-21-alpine and is named builder.
  - is used to build and package the Worker application using:
- mvn dependency:resolve from within the folder containing pom.xml;
  4
- then mvn package from within the folder containing the src folder.
  - generates a file in the target folder named worker-jar-with-dependencies.jar
  - Second stage - run:
  - is based on eclipse-temurin:21-jre-alpine ;
  - is the one really running the worker using java -jar worker-jar-with-dependencies.jar.
