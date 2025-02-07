variable "name" {
  type        = string
  description = "(Required) Name of the team."
}

variable "organization" {
  type        = string
  description = "(Optional) Name of the organization. If omitted, organization must be defined in the provider config."
  default     = null
}

variable "visibility" {
  type        = string
  description = "(Optional) The visibility of the team ('secret' or 'organization'). Defaults to 'secret'."
  default     = "secret"
}

variable "allow_member_token_management" {
  type        = bool
  description = "(Optional) Used by Owners and users with 'Manage Teams' permissions to control whether team members can manage team tokens. Defaults to true."
  default     = true
}

variable "sso_team_id" {
  type        = string
  description = "(Optional) Unique Identifier to control team membership via SAML. Defaults to null"
  default     = null
}

variable "organization_access" {
  type = object({
    read_workspaces            = optional(bool, false)
    read_projects              = optional(bool, false)
    manage_policies            = optional(bool, false)
    manage_policy_overrides    = optional(bool, false)
    manage_workspaces          = optional(bool, false)
    manage_vcs_settings        = optional(bool, false)
    manage_providers           = optional(bool, false)
    manage_modules             = optional(bool, false)
    manage_run_tasks           = optional(bool, false)
    manage_projects            = optional(bool, false)
    manage_membership          = optional(bool, false)
    manage_teams               = optional(bool, false)
    manage_organization_access = optional(bool, false)
    access_secret_teams        = optional(bool, false)
    manage_agent_pools         = optional(bool, false)
  })
  description = <<EOT
    read_workspaces             : (Optional) Allow members to view all workspaces in this organization.
    read_projects               : (Optional) Allow members to view all projects within the organization. Requires read_workspaces to be set to true.
    manage_policies             : (Optional) Allows members to create, edit, and delete the organization's Sentinel policies.
    manage_policy_overrides     : (Optional) Allows members to override soft-mandatory policy checks.
    manage_workspaces           : (Optional) Allows members to create and administrate all workspaces within the organization.
    manage_vcs_settings         : (Optional) Allows members to manage the organization's VCS Providers and SSH keys.
    manage_providers            : (Optional) Allow members to publish and delete providers in the organization's private registry.
    manage_modules              : (Optional) Allow members to publish and delete modules in the organization's private registry.
    manage_run_tasks            : (Optional) Allow members to create, edit, and delete the organization's run tasks.
    manage_projects             : (Optional) Allow members to create and administrate all projects within the organization.
    manage_membership           : (Optional) Allow members to add/remove users from the organization, and to add/remove users from visible teams.
    manage_teams                : (Optional) Allow members to create, update, and delete teams.
    manage_organization_access  : (Optional) Allow members to update the organization access settings of teams.
    access_secret_teams         : (Optional) Allow members access to secret teams up to the level of permissions granted by their team permissions setting.
    manage_agent_pools          : (Optional) Allow members to create, edit, and delete agent pools within their organization.
  EOT
  default     = null
}

variable "token" {
  type        = bool
  description = "Enable or not an API team token."
  default     = false
}

variable "token_expired_at" {
  type        = string
  description = "(Optional) If set to true, a new token will be generated even if a token already exists. This will invalidate the existing token!"
  default     = null
}

variable "token_force_regenerate" {
  description = "(Optional) The token's expiration date. The expiration date must be a date/time string in RFC3339 format (e.g., '2024-12-31T23:59:59Z'). If no expiration date is supplied, the expiration date will default to null and never expire."
  default     = false
}

variable "members" {
  type = list(string)
  description = "(Optional) Names of the users to add."
  default = null
}
