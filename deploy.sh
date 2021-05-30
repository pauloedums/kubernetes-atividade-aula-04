# login azure (primeira execução)
az login

# criar chaves de acesso ao Azure para o terraform (primeira execução)
az ad sp create-for-rbac --skip-assignment

# pasta terraform (primeira execução)
cd terraform

# iniciar terraform (primeira execução)
terraform init

# planejar alterações
terraform plan

# alterar ambiente
terraform apply

# obter credenciais do AKS
az aks get-credentials --resource-group rg-atividadeAula --name atividadeAula-aks

# subir configuração da aplicação
kubectl apply -f ./aks/1-config

# subir configuração do mysql
kubectl apply -f ./aks/2-db

# subir configuração do nginx
kubectl apply -f ./aks/3-nginx

# executar códigos abaixo no shell da máquina
# Comando pra ver tudo o que tem no namespace e poder pegar o IP do pod mysql (mysqldb-stfs)
#kubectl get pod -n atividade-aula-04 -o wide

# Comando pra acessar de dentro pod do nginx o pod do mysql
#kubectl exec -n atividade-aula-04 -it nginx -- ping 10.244.0.5