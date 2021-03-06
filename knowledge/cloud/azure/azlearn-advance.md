# 高階版
## Enterprise applications
AAD is an IAM system. It provides a single place to store information about digital identities. You can configure your software applications to use Azure AD as the place where user information is stored.

AAD must be configured to integrate with an application. In other words, it needs to know what apps are using it for identities (身份). Making AAD aware of these apps, and how it should handle them, is known as application management.
<br><img src="https://docs.microsoft.com/zh-tw/azure/active-directory/manage-apps/media/what-is-application-management/app-management-overview.png">

## Azure SQL Database
- Firewall settings
    <br><img src="../../../img/cloud/azure/sql-firewall-settings.png">

## Azure Databricks SCIM Provisioning Connector
Azure Databricks SCIM Connector allows you to enable Users and Groups synchronization to a Databricks Workspace from Azure AD.
* Use Azure AD to manage user access, provision user accounts, and enable SSO with Azure Databricks SCIM Provisioning Connector. Requires an existing Azure Databricks SCIM Provisioning Connector subscription.

## Azure Databricks
Azure Databricks is a **data analytics** platform optimized for the Microsoft Azure cloud services platform. Azure Databricks offers two environments for developing data intensive applications: Azure Databricks SQL Analytics and Azure Databricks Workspace.
- 網段不能先建立?
    - [Deploy Azure Databricks in your Azure virtual network (VNet injection)](https://docs.microsoft.com/zh-tw/azure/databricks/administration-guide/cloud-configurations/azure/vnet-inject)

## Azure DevOps
Plan smarter, collaborate better, and ship faster with a set of modern (現代化) dev services.
- Azure Boards
- Azure Pipelines
    <br>Build, test, and deploy with **CI/CD** that works with any language, platform, and cloud. Connect to GitHub or any other Git provider and deploy continuously.
- Azure Repos
- Azure Test Plans
- Azure Artifacts

## Azure Machine Learning
### Virtual network isolation and privacy overview
<br><img src="https://docs.microsoft.com/en-us/azure/machine-learning/media/how-to-network-security-overview/secure-workspace-resources.png">
### Secure an Azure Machine Learning inferencing environment with virtual networks
<br><img src="https://docs.microsoft.com/en-us/azure/machine-learning/media/how-to-network-security-overview/secure-inferencing-environment.png">