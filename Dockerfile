# Dockerfile for scottabernethy/clojure-dev
FROM scottabernethy/java:8

# Set to allow running lein as root without warnings.
ENV LEIN_ROOT 1

RUN \
	curl -o /usr/local/bin/lein -sSL "https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein" && \
	chmod +x /usr/local/bin/lein && \
	lein
