ARG BUILD_ARCH=aarch64

# Selecteer de juiste image op basis van de architectuur linux/arm64=aarch64_image linux/amd64=amd64_image
FROM ghcr.io/bitfocus/companion/companion:4.2.4-8798-stable-f844bbb4fc@sha256:ffe3f2a8acb8500b135012307d6ee7f88142eb941e50e0d7a7f16224b47fdad0 AS aarch64_image
FROM ghcr.io/bitfocus/companion/companion:4.2.4-8798-stable-f844bbb4fc@sha256:f6487e88d25e4facfa9c05249a7a26a2f25e9dfd6b03221ded393cdfc99c22ed AS amd64_image

# De eigenlijke image die wordt gebruikt
FROM ${BUILD_ARCH}_image

USER root

# Kopieer het startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Verander het entrypoint
ENTRYPOINT ["/run_companion.sh"]
