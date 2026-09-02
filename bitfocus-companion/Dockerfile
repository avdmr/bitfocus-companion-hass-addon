ARG BUILD_ARCH=aarch64

# Selecteer de juiste image op basis van de architectuur linux/arm64=aarch64_image linux/amd64=amd64_image
FROM ghcr.io/bitfocus/companion/companion:5.0.4-9717-stable-a69c14dec2@sha256:16175d259497c70189ba710ed2e70e17558ae721ca67c87bc79d087d961ffe19 AS aarch64_image
FROM ghcr.io/bitfocus/companion/companion:5.0.4-9717-stable-a69c14dec2@sha256:37d60f9edeb4b51feb47a5e1e45e73e551cc3bfb800fd79ab54924fd632e26f4 AS amd64_image

# De eigenlijke image die wordt gebruikt
FROM ${BUILD_ARCH}_image

USER root

# Kopieer het startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Verander het entrypoint
ENTRYPOINT ["/run_companion.sh"]
