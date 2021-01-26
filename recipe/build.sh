#!/bin/bash

export DISABLE_AUTOBREW=1

if [[ "$CONDA_BUILD_CROSS_COMPILATION" == 1 ]]; then
  rsync -a -I $BUILD_PREFIX/lib/R/library/ $PREFIX/lib/R/library/
fi

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
