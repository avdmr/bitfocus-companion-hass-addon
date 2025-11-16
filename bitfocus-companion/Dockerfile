ARG BUILD_ARCH=aarch64

# Selecteer de juiste image op basis van de architectuur linux/arm64=aarch64_image linux/amd64=amd64_image
FROM ghcr.io/bitfocus/companion/companion:4.1.4-8492-stable-4cb4314544@sha256:7bfe1c2e0150080d341005241a81780877b701ac168f4554afd774c3434ad95f AS aarch64_image
FROM ghcr.io/bitfocus/companion/companion:4.1.4-8492-stable-4cb4314544@sha256:31b7238d226778298cdcee2943c7b7c0cd386f7ad7166060670c768b16536d97 AS amd64_image

# De eigenlijke image die wordt gebruikt
FROM ${BUILD_ARCH}_image

USER root

# Kopieer het startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Verander het entrypoint
ENTRYPOINT ["/run_companion.sh"]
