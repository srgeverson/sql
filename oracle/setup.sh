git clone git clone https://github.com/oracle/docker-images.git
cd docker-images/OracleDatabase/SingleInstance/dockerfiles 
./buildContainerImage.sh -v 21.3.0 -x
docker images
docker run --name oracle \
    -d \
    -p 51521:1521 \
    -p 55500:5500 \
    -e ORACLE_PWD=9e9f4fd45db1fa6f894aec0f3929a05c \
    -e ORACLE_CHARACTERSET=AL32UTF8 \
  oracle/database:21.3.0-xe