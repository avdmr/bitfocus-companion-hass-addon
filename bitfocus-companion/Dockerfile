ARG BUILD_ARCH=aarch64

# Selecteer de juiste image op basis van de architectuur linux/arm64=aarch64_image linux/amd64=amd64_image
FROM ghcr.io/bitfocus/companion/companion:5.0.3-9703-stable-2daa0d7670@sha256:60f405aeceeff4816c0d8dcd60e63a8743e5e57337d2faf6292f52bf6b19c39c AS aarch64_image
FROM ghcr.io/bitfocus/companion/companion:5.0.3-9703-stable-2daa0d7670@sha256:1809f4fecc6db36d9bb81bdbf6e5a0b47260fed30047eb38faaed120130fe5dc AS amd64_image

# De eigenlijke image die wordt gebruikt
FROM ${BUILD_ARCH}_image

USER root

# Kopieer het startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Verander het entrypoint
ENTRYPOINT ["/run_companion.sh"]
