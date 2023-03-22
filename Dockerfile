FROM jenkins/jenkins
RUN jenkins-plugin-cli --plugins configuration-as-code
ENV JENKINS_JAVA_OPTS=-Dhudson.Main.development=true
ADD casc.yaml /usr/share/jenkins/ref/jenkins.yaml
