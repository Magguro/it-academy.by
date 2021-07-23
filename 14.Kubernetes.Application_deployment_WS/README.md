```groovy
pipeline {
  agent {
    kubernetes {
      label 'sample-app'
      idleMinutes 5
      yaml """
apiVersion: v1
kind: Pod
metadata:
  name: curltest
  namespace: ci-cd
spec:
  containers:
  - name: curltest
    image: tutum/curl
    imagePullPolicy: IfNotPresent
    command:
    - cat
    tty: true
  restartPolicy: Always
"""
}
  }
  stages {
    stage('Test') {
      steps {
        container('curltest') {
          sh 'curl --version'
        }
      }
    }
  }
}

```bash

flux create source git jenkins \
  --url=https://github.com/Magguro/flux-demo.git \
  --branch=main \
  --interval=1m \
  --export > ./clusters/jenkins-source.yaml
  
  ```