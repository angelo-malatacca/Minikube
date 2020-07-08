### Requirements
* Helm
* Kubectl
* Minikube

To install Helm follow **[this](https://helm.sh/docs/intro/install/)** guide.

Passages:

```
kubectl create -f jenkins-namespace.yaml
```
```
kubectl create -f jenkins-volume.yaml
```
Install the pod using helm install ***name_of_pod*** -f jenkins-deployment.yaml
```
helm install jenkins -f jenkins-deployment.yaml

1. Get your 'admin' user password by running:
  printf $(kubectl get secret --namespace default jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo
2. Get the Jenkins URL to visit by running these commands in the same shell:
  export NODE_PORT=$(kubectl get --namespace default -o jsonpath="{.spec.ports[0].nodePort}" services jenkins)
  export NODE_IP=$(kubectl get nodes --namespace default -o jsonpath="{.items[0].status.addresses[0].address}")
  echo http://$NODE_IP:$NODE_PORT/login

3. Login with the password from step 1 and the username: admin

4. Use Jenkins Configuration as Code by specifying configScripts in your values.yaml file, see documentation: http:///configuration-as-code and examples: https://github.com/jenkinsci/configuration-as-code-plugin/tree/master/demos
```
verify if the deployment is gone
```
helm ls

NAME    NAMESPACE       REVISION        UPDATED                                 STATUS          CHART           APP VERSION
jenkins default         1               2020-07-08 15:09:01.5664316 +0200 CEST  deployed        jenkins-2.3.0   lts
```
```
kubectl get deployment
 
NAME      READY   UP-TO-DATE   AVAILABLE   AGE
jenkins   0/1     1            0           41s
```

wait until READY become 1/1

```
kubectl get deployment
 
NAME      READY   UP-TO-DATE   AVAILABLE   AGE
jenkins   1/1     1            1           22m
```
```
minikube service jenkins
 ```

 To delete the pod
 ```
 helm delete jenkins
 ```