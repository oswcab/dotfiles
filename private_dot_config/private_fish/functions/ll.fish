function ll --wraps=ls --wraps='exa -lgh' --description 'alias ll=exa -lgh'
  exa -lgh $argv; 
end
