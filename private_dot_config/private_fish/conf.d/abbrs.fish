# Docker
abbr --add dkrps "docker ps"
abbr --add dkrpsa "docker ps -a"
abbr --add dkri "docker images"
abbr --add dkrip "docker  inspect --format '{{ .NetworkSettings.IPAddress }}'"

# VPNs
abbr --add kng "nmcli -a con up KaloomNG"
abbr -a kngd "nmcli con down KaloomNG"

abbr -a kfn "nmcli -a con up kaloom-fibrenoire"
abbr -a kfnd nmcli "con down kaloom-fibrenoire"

# gradle
abbr -a gw "./gradlew"
abbr -a gwb "./gradlew build -si"
abbr -a gwc "./gradlew clean -si"
abbr -a gwt "./gradlew test -si"
abbr -a gwk "./gradlew tasks --all"


