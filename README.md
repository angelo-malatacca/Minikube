# Target

- Based on Minikube
- Deploy tomcat v8 to minikube
- Deploy sample.war to tomcat (use this: https://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/ )
- Bind tomcat service to hostport 8090
- Deploy nginx/apache to minikube
- Bind nginx/apache to hostport 8080
- Include simple "hello world" in index.html of nginx

## Deploy the projects

## Minikube

### Requirements
* Docker
* Kubectl
* Minikube
* An Hypervisor (**[HyperKit](https://github.com/moby/hyperkit)** - **[VirtualBox](https://www.virtualbox.org/wiki/Downloads)** - **[VMware Fusion](https://www.vmware.com/products/fusion.html)**)

To install Docker follow **[this](https://docs.docker.com/docker-for-mac/install/)** guide.

To install Kubectl and Minikube on MacOS run
```
cd scripts
./minikube.sh 
```
If the minikube cluster is not running, run this command
```
minikube start --driver=name_of_the_hypervisor
```
 - For Jenkins follow the **[README](./jenkins/README.MD)** file in the related folder.
### Docker images
Two docker images were created and made public on Docker Hub using their respective Dockerfiles

### Deployment
To deploy nginx run
```
cd scripts
./deploy-nginx.sh 
```
and to deploy tomcat run
```
cd scripts
./deploy-tomcat.sh
```
to deploy both in the same time run
```
cd scripts
./deploy-on-minikube.sh 
```
