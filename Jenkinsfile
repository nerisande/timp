node ('ubuntu'){
    def app
    stage('Cloning Git') {
        checout scm
    }
    stage('Build-and-Tag') {
        app = docker.build("adolfhortler/timp")
    }
    stage('Post-to-dockerhub') {
        docker.withRegistry("https://registry.hub.docker.com", 'dockerhub_creds') {
            app.push("latest")
        }
    }
    stage('Pull-image-server') {
        sh "docker-compose down"
        sh "docker-compose up -d"
    }
}
    
