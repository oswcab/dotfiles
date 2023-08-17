function kng --wraps='nmcli --ask con up KaloomNG' --description 'alias kng=nmcli --ask con up KaloomNG'
  nmcli --ask con up KaloomNG $argv; 
end
