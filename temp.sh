#!/bin/bash

echo 'pi temperature'
echo '70˚C is good max.  CPU is throttled at 80˚C and the GPU at 85˚C'

/opt/vc/bin/vcgencmd measure_temp
