# hellow
Kubernetes builder of the webapp hello world on the fly


Overview
--------

This is my implementation of a Kubernetes pod which contains two containers: one for the build on the fly and one for the webapp . The webapp is a simple nginx server that serves a static html page. The build container is based on alpine  that builds the html page on the fly.


Technologies Used
-----------------

*   **Kubernetes:** Container orchestration system.

*   **Containerd:** Container runtime.

*  **img:** A standalone, daemon-less, unprivileged container image builder.

*   **Alpine:** Lightweight Linux distribution.

*   **Nginx:** Web server.

*  **Helm**: Package manager for Kubernetes.

*  **Terrafom**: Infrastructure as Code (IaC) tool.

*  **Google Cloud Platform**: Cloud computing services.
    
Getting Started
---------------

To be run the project locally, you need to have git, helm, kubectl and access to a Kubernetes cluster.

Clone the repository
```console
git clone git@github.com:colonha/hellow.git
```
Go inside the helm chart folder
```console
cd my-chart
```
install the helm chart
```console
helm install my-chart . --values values.yaml
```
Check the pods
```console
kubectl get pods -n hellow
```

IaC Documentation
-------------
The infrastructure is deployed on Google Cloud Platform (GCP) using Terraform. The Terraform code is located in the terraform folder. The code is divided into files to facilitate the maintenance and scalability of the infrastructure. A real cluster was deployed using this code. The unique parameter thats requires to be ajusted is the **project_id** in the terraform.tfvars file.
Resources created:
* 1 VPC net
* 1 Subnet
* 1 GKE cluster
* 1 GKE node pool

In order to be able to deploy the infrastructure, you need to have Terraform installed and access to a GCP account. You will also need to enable the Kubernetes Engine API and the Compute API on your GCP project.
