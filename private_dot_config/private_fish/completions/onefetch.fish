complete -c onefetch -l ascii-input -d 'Takes a non-empty STRING as input to replace the ASCII logo' -r -f -a "(__fish_complete_command)"
complete -c onefetch -s a -l ascii-language -d 'Which LANGUAGE\'s ascii art to print' -r -f -a "{abnf	,abap	,ada	,assembly	,autohotkey	,bash	,c	,cmake	,c#	,ceylon	,clojure	,coffeescript	,coq	,c++	,crystal	,css	,d	,dart	,dockerfile	,emacs-lisp	,elixir	,elm	,emojicode	,erlang	,f#	,fish	,forth	,fortran	,fortranmodern	,gdscript	,go	,graphql	,groovy	,haskell	,haxe	,hcl	,holyc	,html	,idris	,java	,javascript	,json	,jsonnet	,jsx	,julia	,jupyter-notebooks	,kotlin	,llvm	,lisp	,lua	,markdown	,nim	,nix	,ocaml	,objective-c	,org	,perl	,raku	,php	,powershell	,processing	,prolog	,protocol-buffers	,purescript	,python	,qml	,r	,racket	,renpy	,ruby	,rust	,sass	,scala	,scheme	,shell	,solidity	,sql	,svelte	,swift	,systemverilog	,tcl	,tex	,toml	,tsx	,typescript	,vala	,verilog	,vhdl	,vimscript	,vue	,webassembly	,wolfram	,xsl	,xaml	,xml	,yaml	,zig	,zsh	}"
complete -c onefetch -s c -l ascii-colors -d 'Colors (X X X...) to print the ascii art' -r
complete -c onefetch -s d -l disabled-fields -d 'Allows you to disable FIELD(s) from appearing in the output' -r -f -a "{title	,project	,head	,pending	,version	,created	,languages	,dependencies	,authors	,last-change	,contributors	,repo	,commits	,lines-of-code	,size	,license	}"
complete -c onefetch -s i -l image -d 'Path to the IMAGE file' -r -F
complete -c onefetch -l image-protocol -d 'Which image protocol to use' -r -f -a "{kitty	,sixel	,iterm	}"
complete -c onefetch -l color-resolution -d 'VALUE of color resolution to use with SIXEL backend' -r -f -a "{16	,32	,64	,128	,256	}"
complete -c onefetch -s n -l number-of-authors -d 'NUM of authors to be shown' -r
complete -c onefetch -s e -l exclude -d 'gnore all files & directories matching EXCLUDE' -r -F
complete -c onefetch -l no-bots -d 'Exclude [bot] commits. Use <REGEX> to override the default pattern' -r
complete -c onefetch -s o -l output -d 'Outputs Onefetch in a specific format' -r -f -a "{json	,yaml	}"
complete -c onefetch -l true-color -d 'Specify when to use true color' -r -f -a "{auto	,never	,always	}"
complete -c onefetch -l show-logo -d 'Specify when to show the logo' -r -f -a "{auto	,never	,always	}"
complete -c onefetch -s t -l text-colors -d 'Changes the text colors (X X X...)' -r
complete -c onefetch -s T -l type -d 'Filters output by language type' -r -f -a "{programming	,markup	,prose	,data	}"
complete -c onefetch -l generate -d 'If provided, outputs the completion file for given SHELL' -r -f -a "{bash	,elvish	,fish	,powershell	,zsh	}"
complete -c onefetch -l no-bold -d 'Turns off bold formatting'
complete -c onefetch -l no-merges -d 'Ignores merge commits'
complete -c onefetch -l no-color-palette -d 'Hides the color palette'
complete -c onefetch -s l -l languages -d 'Prints out supported languages'
complete -c onefetch -s p -l package-managers -d 'Prints out supported package managers'
complete -c onefetch -s z -l iso-time -d 'Use ISO 8601 formatted timestamps'
complete -c onefetch -s E -l email -d 'Show the email address of each author'
complete -c onefetch -l include-hidden -d 'Count hidden files and directories'
complete -c onefetch -s h -l help -d 'Print help information (use `--help` for more detail)'
complete -c onefetch -s V -l version -d 'Print version information'
