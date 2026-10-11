ARG BUILD_ARCH=aarch64

# Selecteer de juiste image op basis van de architectuur linux/arm64=aarch64_image linux/amd64=amd64_image
FROM ghcr.io/bitfocus/companion/companion:5.0.7-9763-stable-cec2f88e6f@sha256:9f8019345ca1410180b7e5036bd5d96a5dfe74e9940820d50f4e83ba544fb0c8 AS aarch64_image
FROM ghcr.io/bitfocus/companion/companion:5.0.7-9763-stable-cec2f88e6f@sha256:01721a4cdf58d569b5bc8f46aa7ea9f3e9802e29c0672cbcf67a78ea0e56f11f AS amd64_image

# De eigenlijke image die wordt gebruikt
FROM ${BUILD_ARCH}_image

USER root

# Kopieer het startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Verander het entrypoint
ENTRYPOINT ["/run_companion.sh"]
