FROM selenium/node-chrome
LABEL authors=selang

USER root
RUN rm -rf /opt/bin/generate_config
RUN rm -rf /opt/selenium/config.json
COPY generate_config /opt/bin/generate_config
RUN chmod +x /opt/bin/generate_config

USER seluser

RUN /opt/bin/generate_config > /opt/selenium/config.json
