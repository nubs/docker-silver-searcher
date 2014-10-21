FROM base/devel

RUN pacman --sync --refresh --noconfirm --noprogressbar --quiet && pacman --sync --refresh --sysupgrade --noconfirm --noprogressbar --quiet && pacman --sync --noconfirm --noprogressbar --quiet git

RUN git clone https://github.com/ggreer/the_silver_searcher.git /ag

RUN cd /ag && ./build.sh && make install

WORKDIR /workdir
