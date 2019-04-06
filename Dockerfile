FROM python:2.7
ARG espressif32_version
RUN pip install -U platformio
RUN platformio platform install espressif32@${espressif32_version}
WORKDIR /workspace
ENTRYPOINT [ "platformio" ]