#! /bin/bash

function build {

    cp media/$1.jpg html/bg.jpg
    sed -i '' "s/specie/$1/" html/index.html
    docker build -t rodcloutie/zebrasoma:$1 .
    sed -i '' "s/$1/specie/" html/index.html
}

build flavescens
build xanthurum
build zebrus

# cp media/flavescens.jpg html/bg.jpg
# sed -i 's/specie/flavescens/' html/index.html
# docker build -t rodcloutie/zebrasoma:flavescens .
# sed -i 's/flavescens/specie' html/index.html

# cp media/xanthurum.jpg html/bg.jpg
# docker build -t rodcloutie/zebrasoma:xanthurum .

# cp media/zebrus.jpg html/bg.jpg
# docker build -t rodcloutie/zebrasoma:zebrus .
