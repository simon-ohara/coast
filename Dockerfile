From oharasi/coast-base

RUN \
  apt-get update && apt-get install -y \
  make \
  curl

RUN \
  sh -c "`curl -L https://raw.github.com/rylnd/shpec/master/install.sh`"
