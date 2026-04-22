# Auth with Microsoft Graph PowerShell

The Microsoft Graph PowerShell module supports two types of authentication:

- Delegated Access
- App-only Access

## Delegated Access

Delegated access uses a public client to get an access token and consume Microsoft Graph resources on behalf of the signed-in user.

Microsoft Graph PowerShell module supports the following delegated access scenarios:

### Interactive Browser

```PowerShell
Connect-MgGraph -Scopes "User.ReadBasic.All", "Calendars.Read.Shared"
```

### Device Code

```PowerShell
Connect-MgGraph -Scopes "User.ReadBasic.All", "Calendars.Read.Shared" -UseDeviceCode
```

## App-only Access

App-only access uses a confidential client to get an access token and consume Microsoft Graph resources without a user context (uses an app's context).

Microsoft Graph PowerShell module supports the following app-only access scenarios:

### Client credential via a certificate

Load certificate from store using a certificate's thumbprint.

```PowerShell
Connect-MgGraph -ClientId "Client_Id" -TenantId "Tenant_Id" -CertificateThumbprint "Cert_Thumbprint"
```

Load certificate from store using a certificate's subject name.

```PowerShell
Connect-MgGraph -ClientId "Client_Id" -TenantId "Tenant_Id" -CertificateSubjectName "Cert_Subject_Name"
```

Load certificate from file.

```PowerShell
$Cert = Get-ChildItem Cert:\LocalMachine\My\$CertThumbprint
Connect-MgGraph -ClientId "Client_Id" -TenantId "Tenant_Id" -Certificate $Cert
```

Using environment variables.

```PowerShell
# Add environment variables to be used by Connect-MgGraph.
$Env:AZURE_CLIENT_ID = "application id of the client app"
$Env:AZURE_TENANT_ID = "Id of your tenant"
$Env:AZURE_CLIENT_CERTIFICATE_PATH = "path to a PFX or PEM-encoded certificate file including private key"

# Tell Connect-MgGraph to use your environment variables.
Connect-MgGraph -EnvironmentVariable
```

### Client credential via client secret

Using PSCredential object.

```PowerShell
$ClientSecretCredential = Get-Credential -Username "Client_Id"
# Enter client_secret in the password prompt.
Connect-MgGraph -TenantId "Tenant_Id" -ClientSecretCredential $ClientSecretCredential
```

Using environment variables.

```PowerShell
# Add environment variables to be used by Connect-MgGraph.
$Env:AZURE_CLIENT_ID = "application id of the client app"
$Env:AZURE_TENANT_ID = "Id of your tenant"
$Env:AZURE_CLIENT_SECRET = "secret of the client app"

# Tell Connect-MgGraph to use your environment variables.
Connect-MgGraph -EnvironmentVariable
```

### Managed Identity

System-assigned managed identity

```PowerShell
Connect-MgGraph -Identity
```

User-assigned managed identity

```PowerShell
Connect-MgGraph -Identity -ClientId "User_Assigned_Managed_identity_Client_Id"
```

## Bring Your Own Token

Customers can acquire an access token using their preferred auth library and pass the access token to the Microsoft Graph PowerShell module using `-AccessToken` parameter on `Connect-MgGraph`. The module will then use the provided access token to consume Microsoft Graph resources.

The following considerations should be made before using `-AccessToken`:

### Access Token Expiry

When using `-AccessToken`, we won't have access to the refresh token and the client id needed to refresh an access token when it has expired. Customers should ensure that the task they are running using the provided access token will finish within the access token's `exp` claim (expiry time). This is typically 60 minutes for most access tokens. The expiry time may vary depending on the CAE policy in place.

### Access Token Scopes (scp) Claims

Before using the provided `-AccessToken` to get Microsoft Graph resources, customers should ensure that the access token has the necessary scopes/ permissions needed to access/modify a resource.

## Web Account Manager (WAM)

WAM is a Windows 10+ component that acts as an authentication broker allowing the users of an app benefit from integration with accounts known to Windows, such as the account already signed into an active Windows session.

Microsoft Graph PowerShell module supports WAM in the following scenario:

- To enable WAM on supported devices

```PowerShell
Set-MgGraphOption -EnableLoginByWAM $true
```

- To disable WAM on supported devices

```PowerShell
Set-MgGraphOption -EnableLoginByWAM $false
```

**Note: Signin by Web Account Manager (WAM) is enabled by default on Windows and cannot be disabled. Setting this option to $False will have no effect on Windows systems. Except if you use your own app (see below)**

Starting with v2.35.1, to disable WAM on Windows, use `Set-MgGraphOption -DisableLoginByWAM $true` and then connect with a custom `-ClientId` (see [Custom App Registration](#custom-app-registration) below):

```PowerShell
Set-MgGraphOption -DisableLoginByWAM $true
Connect-MgGraph -ClientId "<YOUR-APP-CLIENT-ID>" -TenantId "<YOUR-TENANT-ID>" -Scopes "User.Read"
```

### Custom App Registration

By default, `Connect-MgGraph` uses Microsoft's own built-in app registration, but you can use your own app registration.

#### 1. Register the app in the Entra admin center

1. Go to **Entra admin center** → **App registrations** → **New registration**.
2. Give it a name (e.g., `MyGraphPowerShellApp`).
3. Set **Supported account types** to match your needs (e.g., *Single tenant*).
4. Skip the redirect URI here — you will add it in the next step.
5. Click **Register**, then copy the **Application (client) ID**.

#### 2. Configure authentication

In the **Authentication** blade of your new app registration:

1. Click **Add Redirect URI** → **Mobile and desktop applications**.
2. Add the following redirect URIs:
   - `https://login.microsoftonline.com/common/oauth2/nativeclient`
   - `ms-appx-web://Microsoft.AAD.BrokerPlugin/<YOUR-APP-CLIENT-ID>` (replace with **your own app's client ID**)
3. Validate with **Configure**
4. Open the **Settings** tab
5. Set **Allow public client flows** to **Enabled**.
6. Click **Save**.
