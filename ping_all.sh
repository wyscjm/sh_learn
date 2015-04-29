#!/bin/bash
#2013-01-06 14:00:00 wanggy exp
#note:ping monitor
set -u
#set -x
ping_fun()
{
    d_network=192.168.0
    echo -n "input the network(default $d_network):"
    read network
    : ${network:=$d_network}
    echo "network:$network"
    d_hostip_beg=1
    d_hostip_end=254
    echo -n "input the hostip(default $d_hostip_beg $d_hostip_end):"
    read hostip_beg hostip_end
    : ${hostip_beg:=$d_hostip_beg}
    : ${hostip_end:=$d_hostip_end}
    echo "hostip_beg:$hostip_beg"
    echo "hostip_end:$hostip_end"
    count=3
    for ((hostip=$hostip_beg;hostip<=$hostip_end;hostip++));do
            host=$network.$hostip
            echo "开始ping检测$host"
            ping -c $count $host &>/dev/null
                    if [ $? = 0 ];then
                            echo "$host is up"
                    else
                            sleep 3
                            ping -c $count $host &>/dev/null
                            if [ $? = 0 ];then
                                    echo "$host is up"
                            else
                                    echo "$host is down"
                            fi
                    fi
            done
    #echo "执行完毕"
    exit 0
    }
    main()
    {
    echo "----开始执行ping程序----"
    ping_fun
    }
    main
    exit 0
