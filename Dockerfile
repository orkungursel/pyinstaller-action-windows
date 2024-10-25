FROM jackmckew/pyinstaller-windows

RUN set -x \
    && apt-get install git -y \
    && apt-get clean

# Add git to path
ENV PATH="/usr/bin/git:${PATH}"

# Install git
RUN git --version

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
