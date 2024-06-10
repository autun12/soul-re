# docker build --pull -t soul-re .
# docker run -t -i -v $PWD:/source soul-re /bin/bash

FROM --platform=amd64 ubuntu:latest
RUN apt update && apt install -y build-essential cpp-mips-linux-gnu binutils-mips-linux-gnu python3 python3-venv bchunk p7zip-full p7zip-rar
COPY . ./build
WORKDIR /build
RUN python3 -m venv ./env
ENV PATH="/build/env/bin:${PATH}"
RUN pip install -r requirements.txt
RUN make setup
RUN make
# RUN mkdir /output
# RUN make -C stage1 FW=$PS4FWVER clean && make -C stage1 FW=$PS4FWVER && cp stage1/stage1.bin /output
# RUN make -C stage2 FW=$PS4FWVER clean && make -C stage2 FW=$PS4FWVER && cp stage2/stage2.bin /output
# ENTRYPOINT ["/bin/sh", "-c", "cp -Rvr /output/* /host"]