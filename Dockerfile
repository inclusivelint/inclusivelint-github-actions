FROM node:10.22.0-jessie

RUN npm install -g inclusivelint

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]