# Automatically generated by nMigen 0.2.dev74+g6c5afdc. Do not edit.
set -e
[ -n "$NMIGEN_ENV_IceStorm" ] && . "$NMIGEN_ENV_IceStorm"
: ${YOSYS:=yosys}
: ${NEXTPNR_ICE40:=nextpnr-ice40}
: ${ICEPACK:=icepack}
"$YOSYS" -q -l top.rpt top.ys
"$NEXTPNR_ICE40" --quiet --log top.tim --hx8k --package cb132 --json top.json --pcf top.pcf --asc top.asc
"$ICEPACK" top.asc top.bin