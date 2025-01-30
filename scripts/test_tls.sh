#!/bin/bash

# Copyright 2024 孔令飞 <colin404@foxmail.com>. All rights reserved.
# Use of this source code is governed by a MIT style
# license that can be found in the LICENSE file. The original repo for
# this file is https://github.com/onexstack/miniblog. The professional
# version of this repository is https://github.com/onexstack/onex.


# 1. 通过 HTTP 协议访问 /healthz，协议不对报错
curl http://127.0.0.1:5555/healthz
# 2. 通过 HTTPS 协议访问 /healthz，不指定根证书，无法认证服务端证书报错
curl https://127.0.0.1:5555/healthz
# 3. 通过 HTTPS 协议访问 /healthz，指定根证书
curl https://127.0.0.1:5555/healthz --ciphers DEFAULT@SECLEVEL=1 --cacert $HOME/.miniblog/cert/ca.crt
# 4. 忽略 HTTPS 证书参数，指定跳过 SSL 检测
curl https://127.0.0.1:5555/healthz -k
