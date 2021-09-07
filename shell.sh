#!/bin/bash

function httpRequest()
{
    #curl 请求
    info=`curl -s -m 10 --connect-timeout 10 -I $1`
 
    #获取返回码
    code=`echo $info|grep "HTTP"|awk '{print $2}'`
    #对响应码进行判断
    if [ "$code" == "200" ];then
        echo "请求成功，响应码是$code"
    else
        echo "请求失败，响应码是$code"
    fi
}
 
httpRequest "http://vhost680.0070.xyz/api.php/timming/index.html?enforce=1&name=%E7%99%BE%E5%BA%A6%E8%A7%86%E9%A2%91"
