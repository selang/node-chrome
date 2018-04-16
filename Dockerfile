FROM selenium/node-chrome
LABEL authors=selang

USER seluser

COPY generate_config /opt/bin/generate_config

RUN /opt/bin/generate_config > /opt/selenium/config.json
