# Custom role creation requires Azure AD Premium P1 or P2, and cannot be done in the free tier.
# Azure account Connection setup
Connect-AzAccount

# Custom Role Definition
$roleName = "DevOpsExperts"          # Replace DevOpsExperts with your desired role name
$roleDescription = "Custom Role Description"  # Replace with your desired role description
$actions = @("Microsoft.Storage/storageAccounts/read",    # Add or remove Data Actions.
             "Microsoft.Storage/storageAccounts/write",
             "Microsoft.Network/networkInterfaces/read",
             "Microsoft.Network/networkInterfaces/write")
$notActions = @()  # Include any actions you want to explicitly deny
$roleDataActions = @()
$roleNotDataActions = @()

# Setup the custom role definition object
$roleDefinition = New-AzRoleDefinition -RoleName $roleName `
                                       -Description $roleDescription `
                                       -Actions $actions `
                                       -NotActions $notActions `
                                       -DataActions $roleDataActions `
                                       -NotDataActions $roleNotDataActions

# Register the custom role definition with Azure
New-AzRoleDefinition -InputObject $roleDefinition

# Optionally, view the created role definition
$createdRole = Get-AzRoleDefinition -Name $roleName
$createdRole
