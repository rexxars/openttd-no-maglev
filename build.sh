#!/bin/bash

rm -rf dist && \
  mkdir dist && \
  cd src && \
  nmlc -o ../dist/no-maglev.grf no-maglev.nml && \
  cd .. && \
  cp README.md dist/readme.txt && \
  cp CHANGELOG.md dist/changelog.txt && \
  tar -cf no-maglev.tar dist  && \
  mv no-maglev.tar dist
