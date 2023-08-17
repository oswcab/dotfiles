function format --wraps='shfmt -i 4 -ci -sr -w' --description 'alias format shfmt -i 4 -ci -sr -w'
  shfmt -i 4 -ci -sr -kp -w $argv; 
end
