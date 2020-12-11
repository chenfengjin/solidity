FROM xuperchain:dev
# TODO @fengjin fix boost
RUN sed -i 's#http://deb.debian.org#https://mirrors.163.com#g' /etc/apt/sources.list && apt update
RUN  apt-get install  -y cmake make cvc4 libcvc4-dev libboost-*
RUN ldconfig
COPY . .
# RUN cd z3-z3-4.6.0  && mkdir build  && cd build ;cmake ..;make -j 8 && make install
RUN mkdir build && cd build && cmake  -DCMAKE_BUILD_TYPE=Debug -DUSE_Z3=off -DUSE_CVC4=on  ..
RUN make -j 8