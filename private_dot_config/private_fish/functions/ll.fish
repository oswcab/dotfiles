function ll --wraps=ls --wraps='eza -lgh' --description 'alias ll=eza -lgh'
  eza -lgh $argv;
end
