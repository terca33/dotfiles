#!/bin/zsh

compress() {
    tar cvzf $1.tar.gz $1
}

# Docker Containers as shell functions

pandoc() {
    echo pandoc $@
    docker run -it --rm -v $PWD:/work -w /work pandoc/latex pandoc "$@"
}
