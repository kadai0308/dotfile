alias s="subl ."
alias o="open ."
alias ll="ls -lhAF"
alias ts="trans -shell -brief :zh-TW"
alias vpn="sudo openconnect -u s106062522@wlan.nthu.edu.tw --juniper https://sslvpn.twaren.net/nthu"
alias fixx="for i in \$(wmctrl -l | awk '{print \$1}'); do wmctrl -i -r \$i -e 0,0,0,800,600; done"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export CLICOLOR=1
