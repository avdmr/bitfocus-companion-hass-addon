ARG BUILD_ARCH=aarch64

# Selecteer de juiste image op basis van de architectuur linux/arm64=aarch64_image linux/amd64=amd64_image
FROM ghcr.io/bitfocus/companion/companion:4.3.4-9244-stable-c14e5e3334@sha256:16eb1c4740b903746c1d3a8da45d4adfcb1e8a8a1c5e51850fc06cc86fc4a83d AS aarch64_image
FROM ghcr.io/bitfocus/companion/companion:4.3.4-9244-stable-c14e5e3334@sha256:97154dfec3a5786c9c36ae49c2a97493c5877579beacc6bc55c877a692cd4c01 AS amd64_image

# De eigenlijke image die wordt gebruikt
FROM ${BUILD_ARCH}_image

USER root

# Kopieer het startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Verander het entrypoint
ENTRYPOINT ["/run_companion.sh"]
