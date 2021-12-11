#!/usr/bin/env bash

protoDir="../protos"
outDir="../languages/golang/lightweight"
protoc -I ${protoDir}/ ${protoDir}/*proto --go_out=plugins=grpc:${outDir}

# -I 指定import路径，可以指定多个-I参数，编译时按顺序查找，不指定默认当前目录
# -go_out：指定og语言的访问类
# plugins：指定依赖的插件
# 使用gofast将go_out=plugins=grpc:${outDir}改为gofast_out=plugins=grpc:${outDir}