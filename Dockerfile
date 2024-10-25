FROM jackmckew/pyinstaller-windows

RUN set -x \
    && apt-get install git -y \
    && apt-get clean

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
