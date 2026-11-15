ARG BUILD_ARCH=aarch64

# Selecteer de juiste image op basis van de architectuur linux/arm64=aarch64_image linux/amd64=amd64_image
FROM ghcr.io/bitfocus/companion/companion:5.1.3-10036-stable-93ea3fa61c@sha256:e11bf9568b4ba6915fea5a7cddfb365711926a85c0e83b681c9140044003c1a5 AS aarch64_image
FROM ghcr.io/bitfocus/companion/companion:5.1.3-10036-stable-93ea3fa61c@sha256:5d2a59bca7aa533d114ac021da68871270359199b9273fe579d283da75673e36 AS amd64_image

# De eigenlijke image die wordt gebruikt
FROM ${BUILD_ARCH}_image

USER root

# Kopieer het startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Verander het entrypoint
ENTRYPOINT ["/run_companion.sh"]
