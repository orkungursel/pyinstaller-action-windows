FROM jackmckew/pyinstaller-windows

RUN apk update && apk add git

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
