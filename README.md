В данном проекте 2е папки (DockerFirstEdition  DockerSecondEdition)

1) DockerFirstEdition

В данной папке 2а файла (Dokerfile scriptdb.py). 

В данной папке Dockerfile, который был создан на основе документации (https://docs.docker.com/engine/examples/postgresql_service/). "Классическая настройка Dockerfile" 
Запускать контейнер обычной командой dockerа: sudo docker run ....

1) DockerSecondEdition

Запускать контейнер командой 
sudo docker run --rm --name test1 -p 5432:5432 (имя образа)

Описание 

В данной папке 2а файла (Dokerfile scriptdb.py). 

Исходный образ убунты был скачен с докерхаба + на него были доустановлены сопутствующие библиотеки и сервисы (python3, postgresql, psycopg2, network-manager и прочие). Все сопутствующие сервисы и библиотеки были установлены "вручную" и залиты на Docker Hub. 
Итоговый образ залит на Docker Hub (https://hub.docker.com/repository/docker/291290/lastversion). 
