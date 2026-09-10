ARG BUILD_ARCH=aarch64

# Selecteer de juiste image op basis van de architectuur linux/arm64=aarch64_image linux/amd64=amd64_image
FROM ghcr.io/bitfocus/companion/companion:5.0.5-9736-stable-0293f0d1ee@sha256:5e6cda19350e87cc423095a9c95e2743b5ebd24f4dd54caef8b2939510b47867 AS aarch64_image
FROM ghcr.io/bitfocus/companion/companion:5.0.5-9736-stable-0293f0d1ee@sha256:9fb6139c1358f24e8bd50ba8c8027ed840f3fc84732f6cd72c8da2ab5f8c3c25 AS amd64_image

# De eigenlijke image die wordt gebruikt
FROM ${BUILD_ARCH}_image

USER root

# Kopieer het startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Verander het entrypoint
ENTRYPOINT ["/run_companion.sh"]
