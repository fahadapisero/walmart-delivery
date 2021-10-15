pipeline {
  agent any
  environment {    //Error 
    DEPLOY_CREDS = credentials('deploy-anypoint-user')
    MULE_VERSION = '4.4.0'
    BG = "Apisero"
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
        APP_NAME = 'walmart-delivery-app'
      }
      steps {
            bat 'mvn -U -V -e -B -DskipTests deploy -DmuleDeploy -Dmule.version="%MULE_VERSION%" -Danypoint.username="%DEPLOY_CREDS_USR%" -Danypoint.password="%DEPLOY_CREDS_PSW%" -Dcloudhub.app="%APP_NAME%" -Dcloudhub.environment="%ENVIRONMENT%" -Dcloudhub.bg="%BG%" -Dcloudhub.worker="%WORKER%" -M-Danypoint.platform.client_id="b0012ce6ba5747c3a1715a5c6a10598b" -M-Danypoint.platform.client_secret="4F9Db95C6Ee94497A4EB0D00144ae85a"'
      }
    }
    }
    
}
