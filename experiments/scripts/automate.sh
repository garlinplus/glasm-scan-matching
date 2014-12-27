#!/bin/bash

#  5 deg = 0.0872664626 rad
# 10 deg = 0.174532925  rad
# 20 deg = 0.3490658504 rad
# 30 deg = 0.5235987756 rad
# 40 deg = 0.698131701 rad
# 50 deg = 0.872664626 rad
# 60 deg = 1.04719755 rad
# 70 deg = 1.22173048
# 80 deg = 1.3962634 rad
# 90 deg = 1.57079633
# 100 deg = 1.74532925
# 110 deg = 1.91986218
# 120 deg = 2.0943951
# 130 deg = 2.26892803
# 140 deg = 2.44346095
# 150 deg = 2.61799388
# 160 deg = 2.7925268
# 170 deg = 2.96705973
# 180 deg = 3.14159265


WD="experiments/current/"

cd "/home/klenac/workspace/sm"
touch $WD/results

function test {
	echo -n "starting $1 $2 $3 ..."
	echo "---" >> $WD/results
	echo "$1 $2 $3" >> $WD/results
	pushd $WD > /dev/null && \
	cp sm.ini.template sm.ini && \
	sed -i "s/<mfex>/$1/g" sm.ini && \
	sed -i "s/<mfey>/$2/g" sm.ini && \
	sed -i "s/<mfer>/$3/g" sm.ini && \
	popd > /dev/null && \
	./Release/sm >> $WD/results
	echo "finished"
}


#test 0.1 0.1 0.0872664626
#test 0.2 0.2 0.0872664626
#test 0.3 0.3 0.0872664626
#test 0.4 0.4 0.0872664626
#test 0.5 0.5 0.0872664626
#test 1.0 1.0 0.0872664626
#test 1.5 1.5 0.0872664626
#test 2.0 2.0 0.0872664626

#test 0.1 0.1 0.174532925
#test 0.2 0.2 0.174532925
#test 0.3 0.3 0.174532925
#test 0.4 0.4 0.174532925
#test 0.5 0.5 0.174532925
#test 1.0 1.0 0.174532925
#test 1.5 1.5 0.174532925
#test 2.0 2.0 0.174532925

#test 0.1 0.1 0.3490658504
#test 0.2 0.2 0.3490658504
#test 0.3 0.3 0.3490658504
#test 0.4 0.4 0.3490658504
#test 0.5 0.5 0.3490658504
#test 1.0 1.0 0.3490658504
#test 1.5 1.5 0.3490658504
#test 2.0 2.0 0.3490658504

#test 0.1 0.1 0.5235987756
#test 0.2 0.2 0.5235987756
#test 0.3 0.3 0.5235987756
#test 0.4 0.4 0.5235987756
#test 0.5 0.5 0.5235987756
#test 1.0 1.0 0.5235987756
#test 1.5 1.5 0.5235987756
#test 2.0 2.0 0.5235987756

#test 0.1 0.1 0.698131701
#test 0.2 0.2 0.698131701
#test 0.3 0.3 0.698131701
#test 0.4 0.4 0.698131701
#test 0.5 0.5 0.698131701
#test 1.0 1.0 0.698131701
#test 1.5 1.5 0.698131701
#test 2.0 2.0 0.698131701

#test 0.1 0.1 1.04719755
#test 0.2 0.2 1.04719755
#test 0.3 0.3 1.04719755
test 0.4 0.4 1.04719755
#test 0.5 0.5 1.04719755
#test 1.0 1.0 1.04719755
#test 1.5 1.5 1.04719755
#test 2.0 2.0 1.04719755

#test 0.1 0.1 1.91986218
#test 0.2 0.2 1.91986218
#test 0.3 0.3 1.91986218
#test 0.4 0.4 1.91986218
#test 0.5 0.5 1.91986218
#test 1.0 1.0 1.91986218
#test 1.5 1.5 1.91986218
#test 2.0 2.0 1.91986218

#test 0.1 0.1 2.7925268
#test 0.2 0.2 2.7925268
#test 0.3 0.3 2.7925268
#test 0.4 0.4 2.7925268
#test 0.5 0.5 2.7925268
#test 1.0 1.0 2.7925268
#test 1.5 1.5 2.7925268
#test 2.0 2.0 2.7925268
