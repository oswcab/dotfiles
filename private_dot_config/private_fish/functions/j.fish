function j --wraps='java -jar jenkins-cli.jar -s https://jenkins.kaloom.io/' --wraps='java -jar /home/oswcab/bin/jenkins-cli.jar -s https://jenkins.kaloom.io/' --description 'alias j java -jar /home/oswcab/bin/jenkins-cli.jar -s https://jenkins.kaloom.io/'
  java -jar /home/oswcab/bin/jenkins-cli.jar -s https://jenkins.kaloom.io/ $argv; 
end
