
## 端口准备

防火墙

    # 开放某端口：
    firewall-cmd --permanent --add-port=22/tcp
    
    # 需要开放的端口
     7000( bind_prot in frps.ini/ server_port in frpc.ini)
     10026( remote_port in frpc.ini)
    
    # 关闭某端口：
    firewall-cmd --permanent --remove-port=22/tcp
    
    firewall-cmd --reload
    firewall-cmd --zone=public --list-ports
    
查看tcp端口
    
    netstat -lnp|grep tcp
    netstat -lntp
    
安装netstat

    yum install -y net-tools

## In server(外网机器):
    
    vim frps.ini
    nohup ./.frp/frps -c ~/.frp/frps.ini >/dev/null 2>&1 &

## In client(内网机器):
    
    vim frpc.ini
    nohup ./.frp/frpc -c ~/.frp/frpc.ini >/dev/null 2>&1 &
