# Defined via `source`
function zzh --wraps='TERM=screen ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no' --description 'alias zzh TERM=screen ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
  TERM=screen ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $argv; 
end
