echo -e "$GREEN Updating debian package repositories $NORMAL"
apt-get -y update

echo -e "$GREEN Installing essential prerquisites $NORMAL"
# some essential and less essential prerequisistes
sudo apt-get -y install build-essential git wget \
 sox alsa-tools alsa-utils \
 automake libtool mpg123 \
 libasound2 libasound2-dev \
 libmagickwand5 libmagickwand-dev \
 libjack-jackd2-dev jackd2 \
 ncdu vim ntp links cpufrequtils \
 libfftw3-dev

# this will install boost, cmake and a lot more
apt-get -y build-dep uhd
