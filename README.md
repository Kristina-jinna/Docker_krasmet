Запускать контейнер командой 
sudo docker run --rm --name test1 -p 5432:5432 (имя образа)

Описание 

В репозитории 2а файла (Dokerfile scriptdb.py). 

Исходный образ убунты был скачен с докерхаба + на него были доустановлены сопутствующие библиотеки и сервисы (python3, postgresql, psycopg2, network-manager и прочие).
Итоговый образ залит на Docker Hub (https://hub.docker.com/repository/docker/291290/lastversion).

Также scriptdb.py файл хранится в образе (исходной папке убунты (/home/)). При запуске локально (с контейнера файл также работает). 

Пользовалась литературой: https://docs.docker.com/engine/examples/postgresql_service/
