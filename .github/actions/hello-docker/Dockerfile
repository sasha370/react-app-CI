FROM alpine:3.11

#перед запуском нам нужно скопировать скрипт внутрь контейнера
COPY entrypoint.sh /entrypoint.sh

#и уже внутри контейнера запустить его
ENTRYPOINT [ "/entrypoint.sh"]
