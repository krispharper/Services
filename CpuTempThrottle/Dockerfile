FROM debian

RUN apt-get update && apt-get install -y cpufrequtils

COPY ./temp_throttle.sh /temp_throttle.sh

CMD /temp_throttle.sh 75
