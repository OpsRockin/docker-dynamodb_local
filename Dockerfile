FROM  java:7-jre
MAINTAINER SAWANOBORI Yukihiko<sawanoboriyu@higanworks.com>
## http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tools.DynamoDBLocal.html

WORKDIR /opt
RUN curl -L http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz | tar xvzf -

EXPOSE 8000
CMD java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -inMemory
