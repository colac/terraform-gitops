# terraform-gitops
This terraform project was created to test github actions and terraform

### About this repo
**Goal**: 

**Actions performed by this project**:


### To use this project:
 - Terraform 1.4 or higher installed
 - Azure subscription
 - Replace values in backend.tf file (tenantID, subscriptionID, storage account
 - Replace values in vars.tf file (resource name, tags, tenantID, subscriptionID, accountIDs, etc)
 - Create GitHub secrets, ARM_TENANT_ID, ARM_SUBSCRIPTION_ID, ARM_CLIENT_ID, ARM_CLIENT_SECRET. To obtain these values follow these instructions https://github.com/nccgroup/ScoutSuite/wiki/Azure#service-principal