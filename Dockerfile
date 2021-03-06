FROM openjdk:8u191-jdk-alpine3.9
# to wyżej wybiera się ze strony https://hub.docker.com/ i tam szukaj java i openjdk alpine jest dla linuxa
#ale działa też na windowsie tylko loguje ostrzeżenia jak poniżej
ADD target/sprinboot-docker-0.0.1-SNAPSHOT.jar .
EXPOSE 8000
CMD java -jar sprinboot-docker-0.0.1-SNAPSHOT.jar  --envname=prod

#PS D:\JV\SpringExamples> cd springboot-docker


#stream:v1    --    mojanazwa:wersja
#PS D:\JV\SpringExamples\springboot-docker> docker build -f Dockerfile -t stream:v1 .
#Sending build context to Docker daemon  17.88MB
#Step 1/4 : FROM openjdk:8u191-jdk-alpine3.9
#8u191-jdk-alpine3.9: Pulling from library/openjdk
#8e402f1a9c57: Pull complete                                                                                             4866c822999c: Pull complete                                                                                             a5e04b7d13ab: Pull complete                                                                                             Digest: sha256:d2e2716147d1f7fe73b1a9f72a9cff7a7aa92d32eb8de4fffbfddc596e004984
#Status: Downloaded newer image for openjdk:8u191-jdk-alpine3.9
# ---> e9ea51023687
#Step 2/4 : ADD target/sprinboot-docker-0.0.1-SNAPSHOT.jar .
# ---> ab357e3e52dd
#Step 3/4 : EXPOSE 8000
# ---> Running in 10a416f0b63e
#Removing intermediate container 10a416f0b63e
# ---> 411d515a71dc
#Step 4/4 : CMD java -jar sprinboot-docker-0.0.1-SNAPSHOT.jar
# ---> Running in ce8742d2ceee
#Removing intermediate container ce8742d2ceee
# ---> f6abac3be5c7
#Successfully built f6abac3be5c7
#Successfully tagged stream:v1
#SECURITY WARNING: You are building a Docker image from Windows against a non-Windows Docker host.
#All files and directories added to build context will have '-rwxr-xr-x' permissions.
#It is recommended to double check and reset permissions for sensitive files and directories.


#PS D:\JV\SpringExamples\springboot-docker> docker images
#REPOSITORY          TAG                   IMAGE ID            CREATED             SIZE
#stream              v1                    f6abac3be5c7        2 minutes ago       122MB
#hello-world         latest                bf756fb1ae65        4 months ago        13.3kB
#openjdk             8u191-jdk-alpine3.9   e9ea51023687        14 months ago       105MB


# 8000:8080 f6a   portDockera(teraz w przeglądarke trzeba wspisać localhost:8000/hello):port wewn aplikacji->
# f6a to początek IMAGE ID (możliwe że to hashcode) i wystarczy jeśi jest w miarę unikalne
#PS D:\JV\SpringExamples\springboot-docker> docker run -p 8000:8080 f6a

# docker ps   -> wyświelta wszystkie kontenery