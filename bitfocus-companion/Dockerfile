ARG BUILD_ARCH=aarch64

# Selecteer de juiste image op basis van de architectuur linux/arm64=aarch64_image linux/amd64=amd64_image
FROM ghcr.io/bitfocus/companion/companion:5.0.2-9665-stable-5eb89669c6@sha256:61b4bfe50ed8604cf5bc267012bd5ba3718c6fd806751f966032c73efaecae5f AS aarch64_image
FROM ghcr.io/bitfocus/companion/companion:5.0.2-9665-stable-5eb89669c6@sha256:36d9dd646e7f49f01b984de6cb05e5d07e3c47f049591f108874c57724915393 AS amd64_image

# De eigenlijke image die wordt gebruikt
FROM ${BUILD_ARCH}_image

USER root

# Kopieer het startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Verander het entrypoint
ENTRYPOINT ["/run_companion.sh"]
