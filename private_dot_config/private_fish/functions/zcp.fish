# Defined via `source`
function zcp --wraps='scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no' --description 'alias zcp scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
  scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $argv; 
end
