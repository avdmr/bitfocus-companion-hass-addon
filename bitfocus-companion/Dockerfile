ARG BUILD_ARCH=aarch64

# Selecteer de juiste image op basis van de architectuur linux/arm64=aarch64_image linux/amd64=amd64_image
FROM ghcr.io/bitfocus/companion/companion:4.2.5-8815-stable-8821dfa519@sha256:cd1936de86f794f2799ab3e7b34a843441d8ece363866bdb08a11d3876a472c1 AS aarch64_image
FROM ghcr.io/bitfocus/companion/companion:4.2.5-8815-stable-8821dfa519@sha256:6a923023274cf03e22b0e346b7bd5b54836340cfb41e5426bcf76b52023ada50 AS amd64_image

# De eigenlijke image die wordt gebruikt
FROM ${BUILD_ARCH}_image

USER root

# Kopieer het startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Verander het entrypoint
ENTRYPOINT ["/run_companion.sh"]
