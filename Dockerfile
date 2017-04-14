FROM microsoft/vsts-agent:ubuntu-16.04-docker-17.03.0-ce-standard

COPY ./start.sh .
RUN chmod +x start.sh

CMD ["./start.sh"]
