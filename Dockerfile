FROM debian:stretch
COPY deps.sh .
RUN chmod +x ./deps.sh && ./deps.sh
COPY build.sh .
RUN chmod +x ./build.sh && ./build.sh
