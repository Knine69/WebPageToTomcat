node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    def mvn = tool 'Default Maven';
    withSonarQubeEnv('sonarqube-server') {
          sh "${scannerHome}/bin/sonar-scanner"
                  sh "mvn sonar:sonar -Dsonar.host.url=http://172.17.0.3:9000 -Dsonar.login=sqa_c68e8de52d6aa45ad89f5f7f0d50b8f44b8a2254"
          }
  }
}
