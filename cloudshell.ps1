PS /home/danish> az group create --location southeastasia --name rg-terraformstate                                                               {                                  
  "id": "/subscriptions/9d93ef6e-f53f-4de8-ab35-59d6d5548b62/resourceGroups/rg-terraformstate",
  "location": "southeastasia",
  "managedBy": null,
  "name": "rg-terraformstate",
  "properties": {
    "provisioningState": "Succeeded"
  },
  "tags": null,
  "type": "Microsoft.Resources/resourceGroups"
}
PS /home/danish> az storage account create --name terrastatestorage2134 --resource-group rg-terraformstate --location westus2 --sku Standard_LRS ^[[DThe public access to all blobs or containers in the storage account will be disallowed by default in the future, which means default value for --allow-blob-public-access is still null but will be equivalent to false.
(StorageAccountAlreadyTaken) The storage account named terrastatestorage2134 is already taken.
Code: StorageAccountAlreadyTaken
Message: The storage account named terrastatestorage2134 is already taken.
PS /home/danish> az storage account create --name terrastatestorage198044 --resource-group rg-terraformstate --location southeastasia --sku Standard_LRS
The public access to all blobs or containers in the storage account will be disallowed by default in the future, which means default value for --allow-blob-public-access is still null but will be equivalent to false.
{
  "accessTier": "Hot",
  "allowBlobPublicAccess": true,
  "allowCrossTenantReplication": null,
  "allowSharedKeyAccess": null,
  "allowedCopyScope": null,
  "azureFilesIdentityBasedAuthentication": null,
  "blobRestoreStatus": null,
  "creationTime": "2023-10-24T08:16:48.896803+00:00",
  "customDomain": null,
  "defaultToOAuthAuthentication": null,
  "dnsEndpointType": null,
  "enableHttpsTrafficOnly": true,
  "enableNfsV3": null,
  "encryption": {
    "encryptionIdentity": null,
    "keySource": "Microsoft.Storage",
    "keyVaultProperties": null,
    "requireInfrastructureEncryption": null,
    "services": {
      "blob": {
        "enabled": true,
        "keyType": "Account",
        "lastEnabledTime": "2023-10-24T08:16:48.974901+00:00"
      },
      "file": {
        "enabled": true,
        "keyType": "Account",
        "lastEnabledTime": "2023-10-24T08:16:48.974901+00:00"
      },
      "queue": null,
      "table": null
    }
  },
  "extendedLocation": null,
  "failoverInProgress": null,
  "geoReplicationStats": null,
  "id": "/subscriptions/9d93ef6e-f53f-4de8-ab35-59d6d5548b62/resourceGroups/rg-terraformstate/providers/Microsoft.Storage/storageAccounts/terrastatestorage198044",
  "identity": null,
  "immutableStorageWithVersioning": null,
  "isHnsEnabled": null,
  "isLocalUserEnabled": null,
  "isSftpEnabled": null,
  "keyCreationTime": {
    "key1": "2023-10-24T08:16:48.974901+00:00",
    "key2": "2023-10-24T08:16:48.974901+00:00"
  },
  "keyPolicy": null,
  "kind": "StorageV2",
  "largeFileSharesState": null,
  "lastGeoFailoverTime": null,
  "location": "southeastasia",
  "minimumTlsVersion": "TLS1_0",
  "name": "terrastatestorage198044",
  "networkRuleSet": {
    "bypass": "AzureServices",
    "defaultAction": "Allow",
    "ipRules": [],
    "resourceAccessRules": null,
    "virtualNetworkRules": []
  },
  "primaryEndpoints": {
    "blob": "https://terrastatestorage198044.blob.core.windows.net/",
    "dfs": "https://terrastatestorage198044.dfs.core.windows.net/",
    "file": "https://terrastatestorage198044.file.core.windows.net/",
    "internetEndpoints": null,
    "microsoftEndpoints": null,
    "queue": "https://terrastatestorage198044.queue.core.windows.net/",
    "table": "https://terrastatestorage198044.table.core.windows.net/",
    "web": "https://terrastatestorage198044.z23.web.core.windows.net/"
  },
  "primaryLocation": "southeastasia",
  "privateEndpointConnections": [],
  "provisioningState": "Succeeded",
  "publicNetworkAccess": null,
  "resourceGroup": "rg-terraformstate",
  "routingPreference": null,
  "sasPolicy": null,
  "secondaryEndpoints": null,
  "secondaryLocation": null,
  "sku": {
    "name": "Standard_LRS",
    "tier": "Standard"
  },
  "statusOfPrimary": "available",
  "statusOfSecondary": null,
  "storageAccountSkuConversionStatus": null,
  "tags": {},
  "type": "Microsoft.Storage/storageAccounts"
}

PS /home/danish> az storage container create --name terraformdemo --account-name terrastatestorage198044

There are no credentials provided in your command and environment, we will query for account key for your storage account.
It is recommended to provide --connection-string, --account-key or --sas-token in your command as credentials.

You also can add `--auth-mode login` in your command to use Azure Active Directory (Azure AD) for authorization if your login account is assigned required RBAC roles.
For more information about RBAC roles in storage, visit https://docs.microsoft.com/azure/storage/common/storage-auth-aad-rbac-cli.

In addition, setting the corresponding environment variables can avoid inputting credentials in your command. Please use --help to get more information about environment variable usage.
{
  "created": true
}