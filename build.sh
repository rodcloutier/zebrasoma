#! /bin/bash

cp media/flavescens.jpg html/bg.jpg
docker build -t rodcloutie/zebrasoma:flavescens .

cp media/xanthurum.jpg html/bg.jpg
docker build -t rodcloutie/zebrasoma:xanthurum .

cp media/zebrus.jpg html/bg.jpg
docker build -t rodcloutie/zebrasoma:zebrus .
