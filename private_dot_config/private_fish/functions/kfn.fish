function kfn --wraps='nmcli -a con up kaloom-fibrenoire' --description 'alias kfn nmcli -a con up kaloom-fibrenoire'
  nmcli -a con up kaloom-fibrenoire $argv; 
end
