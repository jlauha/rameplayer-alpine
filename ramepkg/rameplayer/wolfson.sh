#!/bin/sh
amixer -q -Dhw:sndrpiwsp --stdin <<EOF
cset name='Noise Generator Volume' 0

cset name='HPOUT1 Digital Volume' 116
cset name='HPOUT1L Input 1' AIF1RX1
cset name='HPOUT1L Input 1 Volume' 32
cset name='HPOUT1R Input 1' AIF1RX2
cset name='HPOUT1R Input 1 Volume' 32
cset name='HPOUT1L Input 2' 'Noise Generator'
cset name='HPOUT1R Input 2' 'Noise Generator'
cset name='HPOUT1 Digital Switch' on

cset name='HPOUT2L Input 1' AIF1RX1
cset name='HPOUT2L Input 1 Volume' 32
cset name='HPOUT2R Input 1' AIF1RX2
cset name='HPOUT2R Input 1 Volume' 32
cset name='HPOUT2L Input 2' 'Noise Generator'
cset name='HPOUT2R Input 2' 'Noise Generator'
cset name='HPOUT2 Digital Switch' on

cset name='Speaker Digital Switch' on
cset name='Speaker Digital Volume' 100
cset name='SPKOUTL Input 1' 'AIF1RX1'
cset name='SPKOUTR Input 1' 'AIF1RX2'
cset name='SPKOUTL Input 2' 'Noise Generator'
cset name='SPKOUTR Input 2' 'Noise Generator'
EOF
