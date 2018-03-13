# Miami Hotline in Docker

1. Download the Hotline Miami installer for Linux from GOG.com

2. Extract game content directory

    ```sh
    bsdtar -xf gog_hotline_miami_2.0.0.4.sh data/noarch
    ```

3. Build image

    ```sh
    docker build -t miami-hotline .
    ```

4. Grant X server access to Docker

    ```sh
    xhost +local:docker
    ```

5. Run and enjoy
    ```sh
    docker run --rm -ti \
       -v $HOME/.local/share/HotlineMiami:/root/.local/share/HotlineMiami \
       -v /etc/localtime:/etc/localtime \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       --device /dev/snd \
       --device /dev/dri \
       --read-only \
       -e DISPLAY=unix$DISPLAY \
       --name hotline-miami \
       miami-hotline
    ```
