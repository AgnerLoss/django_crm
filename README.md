# django_crm
### Repositório criado para o desafio técnico da empresa 360CRM Soluções.

### 1 - Primeiro passo foi realizar o fork do repositório:
Próxima etapa foi realizar o clone do reposítório para iniciar os testes na máquina local. Abaixo, print do browser localhost: 

<img src="https://github.com/AgnerLoss/django_crm/blob/develop/imagens/container.png">

### 2 - LocalStack 

Como não conhecia o LocalStack fui atrás de conhecimento, acessei a documentação no site oficial da solução disponível em: https://docs.localstack.cloud/overview/

--- Como o tempo é curto busquei vídeos raṕidos para entender a solução, encontrei dois interessantes:

1 - LocalStack e AWS CLI: Como desenvolver localmente com a AWS
Disponível em: https://www.youtube.com/watch?v=yOdp0wz5NeI

2 - Desenvolvimento local usando AWS com Localstack
Disponível em: https://www.youtube.com/watch?v=1ow0NQv5Fsk&t=993s

 --- Instalação e integração realizada com sucesso!!!

 <img src="https://github.com/AgnerLoss/django_crm/blob/develop/imagens/integracao%20localstack.png">

 ### 3 - Próxima etapa - Criar arquivo Terraform para interação com LocalStack

 Arquivos disponíveis na pasta "terraform para infra" no repo. 

 Página oficial da documentação Terraform: https://developer.hashicorp.com/terraform

 --- para entender como funciona a integração, além da documentação busquei no vídeo: https://www.youtube.com/watch?v=OMEf3XGyof8 mais informações...

 OBS: Nesta etapa como "melhores práticas" foram utilizadas variáveis de ambiente, gerando segurança no processo. O Bucket S3 e O DynamoDB foram utilizados para armazenar o ESTADO do arquivo terraform.state (Como não há ec2 no LocalStack, não foi possivel testar o arquivo backend.tf). Com esta prática  não haverá atualizações simultâneas que possam levar à corrupção do próprio arquivo, perda de dados e conflitos. 

 ### 4 - Próxima etapa - Criar arquivo Terraform para criar kubernetes com kind

 Utilizei a documentação oficial do terraform registry. Disponível em: https://registry.terraform.io/
 1 - Kind Cluster - https://registry.terraform.io/providers/tehcyx/kind/latest/docs/resources/cluster
 2 - Kubectl provider - https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs
 Para entender a integração segui os passos disponíveis no vídeo: https://www.youtube.com/watch?v=lK_VX_TpjCU
 3 - Arquivos de configuração disponíveis na pasta "kind" no repo. 

 



 
 










