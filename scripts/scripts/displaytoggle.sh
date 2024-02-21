#!/bin/bash

CURRENT_RES=$(displayplacer list | tail -n1)
SUB='1920x1080'

if [[ "$CURRENT_RES" == *"$SUB"* ]]; then


displayplacer "id:1861F586-7B18-45F9-A982-C0D5CEFD6CE0 res:3008x1692 hz:30 color_depth:8 enabled:true scaling:on origin:(0,0) degree:0" "id:37D8832A-2D66-02CA-B9F7-8F30A301B230 res:1512x982 hz:120 color_depth:8 enabled:true scaling:on origin:(-1512,378) degree:0"



else


  displayplacer "id:1861F586-7B18-45F9-A982-C0D5CEFD6CE0 res:1920x1080 hz:30 color_depth:8 enabled:true scaling:on origin:(0,0) degree:0" "id:37D8832A-2D66-02CA-B9F7-8F30A301B230 res:1352x878 hz:120 color_depth:8 enabled:true scaling:on origin:(-1352,378) degree:0"
fi

