<?php
header("Access-Control-Allow-Origin: *");
exec("getent hosts host.docker.internal | awk '{print $1}'", $out);
$url = "http://" . $out[0] . ":8090/json/list?t=" . (time() * 1000); // change this line if youre using different port
passthru("curl -s $url");
?>