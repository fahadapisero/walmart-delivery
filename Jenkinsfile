pipeline {
  agent any
  environment {
    DEPLOY_CREDS = credentials('deploy-anypoint-user')
    MULE_VERSION = '4.4.0'
    BG = "apisero"
    WORKER = "Micro"
  }
  stages {
    stage('Build') {
      steps {
            bat 'mvn -B -U -e -V clean -DskipTests package'
      }
    }
    stage('Deploy Development') {
      environment {
        ENVIRONMENT = 'Sandbox'
        APP_NAME = 'walmart-delivery'
      }
      steps {
            bat 'mvn -U -V -e -B -DskipTests deploy -DmuleDeploy -Dmule.version="%MULE_VERSION%" -Danypoint.username="riturajfahad" -Danypoint.password="Usecase1" -Dcloudhub.app="%APP_NAME%" -Dcloudhub.environment="%ENVIRONMENT%" -Dcloudhub.bg="%BG%" -Dcloudhub.worker="%WORKER%"'
      }
    }
    }
    
}
