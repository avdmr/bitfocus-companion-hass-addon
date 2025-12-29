ARG BUILD_ARCH=aarch64

# Selecteer de juiste image op basis van de architectuur linux/arm64=aarch64_image linux/amd64=amd64_image
FROM ghcr.io/bitfocus/companion/companion:4.2.2-8755-stable-6b5530ac3d@sha256:7626ef583d3696b0c3a87c7a8f36dced48b9d312b08db1ef47caacfd603b05d4 AS aarch64_image
FROM ghcr.io/bitfocus/companion/companion:4.2.2-8755-stable-6b5530ac3d@sha256:fcc77ff42ad67976b4da60bc92b0b348311d118632bace08b6759a6b4ab39e9f AS amd64_image

# De eigenlijke image die wordt gebruikt
FROM ${BUILD_ARCH}_image

USER root

# Kopieer het startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Verander het entrypoint
ENTRYPOINT ["/run_companion.sh"]
