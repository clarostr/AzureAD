# A role definition is a collection of permissions. A role definition lists the operations that can be performed, such as read,
# write, and delete. It can also list the operations that can't be performed or operations related to underlying data.
# Owner, which has full access to all resources, including the right to delegate access to others.
# Contributor, which can create and manage all types of Azure resources but can’t grant access to others.
# Reader, which can view existing Azure resources.
# By utilizing the following command we get an output regarding the role we want to check!
Get-AzRoleDefinition Owner
# More info on Actions, NotActions and scopes can be found on
# https://learn.microsoft.com/en-us/training/modules/manage-users-and-groups-in-aad/5-manage-aad-roles
