FROM quay.io/openshift/origin-cli:4.8

WORKDIR ~
COPY deploy-submariner.sh deploy-submariner.sh
RUN chmod +x deploy-submariner.sh
CMD ["./deploy-submariner.sh"]