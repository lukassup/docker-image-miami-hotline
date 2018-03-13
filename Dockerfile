FROM ubuntu:xenial
LABEL maintainer 'Lukas Šupienis <lukassup@yahoo.com>'
RUN dpkg --add-architecture i386 && apt-get update -y && apt-get install -y \
    lib32gcc1 \
    lib32stdc++6 \
    libc6-i386 \
    libcg:i386 \
    libcggl:i386 \
    libfontconfig1:i386 \
    libfreetype6:i386 \
    libgl1-mesa-glx:i386 \
    libglu1-mesa:i386 \
    libogg0:i386 \
    libopenal1:i386 \
    libvorbis0a:i386 \
    libvorbisfile3:i386 \
    libx11-6:i386 \
    libx11-xcb1:i386 \
    libxcb1:i386 \
    libxext6:i386 \
    libxi6:i386 \
    libxrandr2:i386 \
    libxrender1:i386 \
    && rm -rf /var/lib/apt/lists/*
COPY data/noarch /opt/hotline-miami/
WORKDIR /opt/hotline-miami/game
ENTRYPOINT ["/opt/hotline-miami/game/hotline_launcher"]
