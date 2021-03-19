
防火墙

    firewall-cmd --permanent --add-port=10026/tcp
    firewall-cmd --permanent --add-port=7000/tcp     
    firewall-cmd --reload
    firewall-cmd --zone=public --list-ports
    

查看tcp端口
    
    netstat -lnp|grep tcp
    netstat -lntp
    
安装netstat

    yum install -y net-tools

In server(外网机器):

    ./frps -c frps.ini

In client(内网机器):

    ./frpc -c frpc.ini
