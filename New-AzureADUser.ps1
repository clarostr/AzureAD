# Create an object for the password profile
$AzAdPwdProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile

# Assign the password to the user
# Must define a password that meet restrictions listed on https://learn.microsoft.com/en-us/azure/active-directory/authentication/concept-sspr-policy#azure-ad-password-policies
$AzAdPwdProfile.Password = "<StrongPassword>"


# Create the new Azure AD user
New-AzureADUser -AccountEnabled $True -DisplayName "Ismet Dumlupinar" -PasswordProfile $AzAdPwdProfile -MailNickName "idumlupinar" -UserPrincipalName "idumlupinar@clarosdevops.com"
