
terraform {
  required_providers {
      azurerm = {
          source  = "hashicorp/azurerm"
          version = "~> 2.65"
      }
  }

  required_version = ">= 0.14.19"
}

variable client_secret {}

provider "azurerm" {
  features {}
  subscription_id = "97e895bf-0112-4294-8e8b-e5ad0401b6da"
  tenant_id       = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"
  client_id       = "3d9551f2-3d6d-4fda-858d-1e27ca0cda43"
  client_secret   = var.client_secret
}


resource "azurerm_resource_group" "myrg" {
  name     = "rg-test-bytf"
  location = "westus"
  tags = {
      env = "dev"
      team = "devops"
  }
}  


/*
1) описали main.tf
2) инициируем terraform
tf init

a. Authentication using az login command
  Убрать блок variables "client_secret"
  Убрать все переменные из блока provider "azurerm"
  az login
  tf plan
  tf apply

b. Authentication using environment variables

In Azure portal 
- save subscription id as environment variable     export ARM_SUBSCRIPTION_ID="97e895bf-0112-4294-8e8b-e5ad0401b6da"
- create service principal in AAD -> App registration
- save its app (client) id as environment variable export ARM_CLIENT_ID="3d9551f2-3d6d-4fda-858d-1e27ca0cda43"
- save its tenant id as environment variable       export ARM_TENANT_ID="b41b72d0-4e9f-4c26-8a69-f949f367c91d"
- create and save secret as environment variable   export ARM_CLIENT_SECRET="ncq7Q~rIg3R4i6~gOjN63D8vmIOv69wGGjK1l"
- grant service principal "contributor" role

Теперь на всякий случай отключаем подписку, которую подключили ранее через az login:
  az logout   
Теперь az group list ничего не покажет.
Применяем конфиг:
  tf plan
  tf apply -auto-approve
 
c. Authentication using inline hardcoded secrets
- удаляем все environment variables: 
  unset ARM_SUBSCRIPTION_ID
  unset ARM_CLIENT_ID
  unset ARM_TENANT_ID
  unset ARM_CLIENT_SECRET

- добавляем блок variables
  variable "client_secret" {}

- указываем в блоке provider "azurerm" следующие переменные:
  subscription_id = "97e895bf-0112-4294-8e8b-e5ad0401b6da"
  tenant_id       = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"
  client_id       = "3d9551f2-3d6d-4fda-858d-1e27ca0cda43"
  client_secret   = var.client_secret

- выполняем tf plan:
 tf plan -var 'client_secret=myTopSuperSecretkey'
 tf apply -var 'client_secret=myTopSuperSecretkey' -auto-approve
*/