# Defined via `source`
function top --wraps=htop --description 'alias top htop'
  htop $argv; 
end
