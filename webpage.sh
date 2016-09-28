#!/bin/bash


echo "runing webpage.sh";

echo "test begin"
#ab -n ${requests} -c ${concurrency} -w http://fir.im/8pe5:80 > "${report_dir}homepage.html"
echo "homepage test done"
#ab -n 1000 -c 250 -w -p postfile -T application/json http://139.129.208.77:8080/api/updateVersion > "${report_dir}updateVersion.html"
#ab -n 
#ab -n ${requests} -c ${concurrency} -p postfile -T application/json "http://${target_ip}:8080/api/updateVersion" > "${report_dir}updateVersion.report"

get_hot_raps_path="http://${target_ip}:8080/api/hot/raps?page=1&size=10"

ab -n ${requests} -c ${concurrency} ${get_hot_raps_path} > "${report_dir}get_hot_raps_path.report"

echo "requests: "${requests} "concurrency: "${concurrency}
echo "test webpage done"