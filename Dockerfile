FROM selenium/node-chrome
LABEL authors=selang

USER seluser

RUN rm -rf /opt/bin/generate_config
COPY generate_config /opt/bin/generate_config
RUN rm -rf /opt/selenium/config.json
RUN /opt/bin/generate_config > /opt/selenium/config.json


