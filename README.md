<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >=0.63.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | >=0.63.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_team.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team) | resource |
| [tfe_team_members.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_members) | resource |
| [tfe_team_token.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_token) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_member_token_management"></a> [allow\_member\_token\_management](#input\_allow\_member\_token\_management) | (Optional) Used by Owners and users with 'Manage Teams' permissions to control whether team members can manage team tokens. Defaults to true. | `bool` | `true` | no |
| <a name="input_members"></a> [members](#input\_members) | (Optional) Names of the users to add. | `list(string)` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Name of the team. | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | (Optional) Name of the organization. If omitted, organization must be defined in the provider config. | `string` | `null` | no |
| <a name="input_organization_access"></a> [organization\_access](#input\_organization\_access) | read\_workspaces             : (Optional) Allow members to view all workspaces in this organization.<br/>    read\_projects               : (Optional) Allow members to view all projects within the organization. Requires read\_workspaces to be set to true.<br/>    manage\_policies             : (Optional) Allows members to create, edit, and delete the organization's Sentinel policies.<br/>    manage\_policy\_overrides     : (Optional) Allows members to override soft-mandatory policy checks.<br/>    manage\_workspaces           : (Optional) Allows members to create and administrate all workspaces within the organization.<br/>    manage\_vcs\_settings         : (Optional) Allows members to manage the organization's VCS Providers and SSH keys.<br/>    manage\_providers            : (Optional) Allow members to publish and delete providers in the organization's private registry.<br/>    manage\_modules              : (Optional) Allow members to publish and delete modules in the organization's private registry.<br/>    manage\_run\_tasks            : (Optional) Allow members to create, edit, and delete the organization's run tasks.<br/>    manage\_projects             : (Optional) Allow members to create and administrate all projects within the organization.<br/>    manage\_membership           : (Optional) Allow members to add/remove users from the organization, and to add/remove users from visible teams.<br/>    manage\_teams                : (Optional) Allow members to create, update, and delete teams.<br/>    manage\_organization\_access  : (Optional) Allow members to update the organization access settings of teams.<br/>    access\_secret\_teams         : (Optional) Allow members access to secret teams up to the level of permissions granted by their team permissions setting.<br/>    manage\_agent\_pools          : (Optional) Allow members to create, edit, and delete agent pools within their organization. | <pre>object({<br/>    read_workspaces            = optional(bool, false)<br/>    read_projects              = optional(bool, false)<br/>    manage_policies            = optional(bool, false)<br/>    manage_policy_overrides    = optional(bool, false)<br/>    manage_workspaces          = optional(bool, false)<br/>    manage_vcs_settings        = optional(bool, false)<br/>    manage_providers           = optional(bool, false)<br/>    manage_modules             = optional(bool, false)<br/>    manage_run_tasks           = optional(bool, false)<br/>    manage_projects            = optional(bool, false)<br/>    manage_membership          = optional(bool, false)<br/>    manage_teams               = optional(bool, false)<br/>    manage_organization_access = optional(bool, false)<br/>    access_secret_teams        = optional(bool, false)<br/>    manage_agent_pools         = optional(bool, false)<br/>  })</pre> | `null` | no |
| <a name="input_sso_team_id"></a> [sso\_team\_id](#input\_sso\_team\_id) | (Optional) Unique Identifier to control team membership via SAML. Defaults to null | `string` | `null` | no |
| <a name="input_token"></a> [token](#input\_token) | Enable or not an API team token. | `bool` | `false` | no |
| <a name="input_token_expired_at"></a> [token\_expired\_at](#input\_token\_expired\_at) | (Optional) The token's expiration date. The expiration date must be a date/time string in RFC3339 format (e.g., '2024-12-31T23:59:59Z'). If no expiration date is supplied, the expiration date will default to null and never expire. | `string` | `null` | no |
| <a name="input_token_force_regenerate"></a> [token\_force\_regenerate](#input\_token\_force\_regenerate) | (Optional) If set to true, a new token will be generated even if a token already exists. This will invalidate the existing token! | `bool` | `false` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | (Optional) The visibility of the team ('secret' or 'organization'). Defaults to 'secret'. | `string` | `"secret"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the team. |
| <a name="output_name"></a> [name](#output\_name) | The name of the team. |
| <a name="output_token"></a> [token](#output\_token) | The API team token. |
<!-- END_TF_DOCS -->