The above three dashboards show the number of available / unavailable application replicas and the status of containers in the pods of these applications, and trace containers’ restarts.

## Installation
Go to the plugins directory in Grafana:
```
cd $GRAFANA_PATH/data/plugins
```
Copy the repository:
```
git clone https://github.com/devopsprodigy/kubegraf  /var/lib/grafana/plugins/devopsprodigy-kubegraf-app and restart grafana-server
```
or
```
grafana-cli plugins install devopsprodigy-kubegraf-app and restart grafana-server.
```
Create namespace "kubegraf" and apply Kubernetes manifests from kubernetes/ directory to give required permissions to the user grafana-kubegraf:
```
kubectl create ns kubegraf
kubectl apply -f https://raw.githubusercontent.com/devopsprodigy/kubegraf/master/kubernetes/serviceaccount.yaml
kubectl apply -f https://raw.githubusercontent.com/devopsprodigy/kubegraf/master/kubernetes/clusterrole.yaml
kubectl apply -f https://raw.githubusercontent.com/devopsprodigy/kubegraf/master/kubernetes/clusterrolebinding.yaml
kubectl apply -f https://raw.githubusercontent.com/devopsprodigy/kubegraf/master/kubernetes/secret.yaml
```
Create a grafana-kubegraf user private key and certificate on one of the master nodes:
```
kubectl get secret grafana-kubegraf-secret -o jsonpath={.data.token} -n kubegraf | base64 -d
```
Go to /configuration-plugins in Grafana and click on the plugin. Then click “enable”.

Go to the plugin and select “create cluster”.

Enter the settings of http-access to the Kubernetes api server:

Kubernetes master's url from kubectl cluster-info
Enter the certificate and key from step #4 "TLS Client Auth" section Or The token from step #4 in "Bearer token access" section
Open the “additional datasources” drop-down list and select the prometheus that is used in this cluster.