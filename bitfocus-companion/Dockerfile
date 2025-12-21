ARG BUILD_ARCH=aarch64

# Selecteer de juiste image op basis van de architectuur linux/arm64=aarch64_image linux/amd64=amd64_image
FROM ghcr.io/bitfocus/companion/companion:4.2.1-8738-stable-3edf7ecdf4@sha256:066c62ace5c777bdf8c07f04473eed0789642ce7b195d9be7723da396eee572e AS aarch64_image
FROM ghcr.io/bitfocus/companion/companion:4.2.1-8738-stable-3edf7ecdf4@sha256:c4385eaef5b13eefb39586f0ec6e51f1c06c090f46fe4dbd42be0ea210c90f57 AS amd64_image

# De eigenlijke image die wordt gebruikt
FROM ${BUILD_ARCH}_image

USER root

# Kopieer het startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Verander het entrypoint
ENTRYPOINT ["/run_companion.sh"]
