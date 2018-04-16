FROM selenium/node-chrome
LABEL authors=selang

USER root

COPY generate_config /opt/bin/generate_config

RUN chmod +x /opt/bin/generate_config && /opt/bin/generate_config > /opt/selenium/config.json

USER seluser
