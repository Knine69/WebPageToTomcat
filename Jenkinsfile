node {
    environment {
        PATH = "$PATH:/usr/share/maven/bin"
    }
    tools {
        git "Default"
    }
    stages{
      stage('SCM') {
        checkout scm
      }
      stage('GetCode'){
          steps{
              git(branch: 'helloWorld',
                  url: "https://github.com/Knine69/WebPageToTomcat.git")
      }
    }
  stage('SonarQube Analysis') {
    def mvn = tool 'Default Maven';
    withSonarQubeEnv('sonarqube-server') {
      sh "${scannerHome}/bin/sonar-scanner"
              sh "mvn sonar:sonar -Dsonar.host.url=http://172.17.0.3:9000 -Dsonar.login=sqa_c68e8de52d6aa45ad89f5f7f0d50b8f44b8a2254"
    }
  }
}
