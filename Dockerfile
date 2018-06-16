From oharasi/coast-base

# shpec and entr dependencies
RUN \
  apt-get update && apt-get install -y \
  curl \
  gcc \
  make \
  mercurial

# install shpec
RUN \
  curl -L https://raw.github.com/rylnd/shpec/master/install.sh | sh

# install entr
RUN \
  hg clone https://bitbucket.org/eradman/entr /entr \
  && cd /entr \
  && ./configure \
  && make test \
  && make install \
  && cd - \
  && rm -rf /entr
