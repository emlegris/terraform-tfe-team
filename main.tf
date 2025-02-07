resource "tfe_team" "this" {
  name                          = var.name
  organization                  = var.organization
  visibility                    = var.visibility
  sso_team_id                   = var.sso_team_id
  allow_member_token_management = var.allow_member_token_management

  dynamic "organization_access" {
    for_each = var.organization_access != null ? [true] : []
    content {
      read_workspaces            = var.organization_access.read_workspaces
      read_projects              = var.organization_access.read_projects
      manage_policies            = var.organization_access.manage_policies
      manage_policy_overrides    = var.organization_access.manage_policy_overrides
      manage_workspaces          = var.organization_access.manage_workspaces
      manage_vcs_settings        = var.organization_access.manage_vcs_settings
      manage_providers           = var.organization_access.manage_providers
      manage_modules             = var.organization_access.manage_modules
      manage_run_tasks           = var.organization_access.manage_run_tasks
      manage_projects            = var.organization_access.manage_projects
      manage_membership          = var.organization_access.manage_membership
      manage_teams               = var.organization_access.manage_teams
      manage_organization_access = var.organization_access.manage_organization_access
      access_secret_teams        = var.organization_access.access_secret_teams
      manage_agent_pools         = var.organization_access.manage_agent_pools
    }
  }
}

resource "tfe_team_token" "this" {
  count            = var.token ? 1 : 0
  team_id          = tfe_team.this.id
  force_regenerate = var.token_force_regenerate
  expired_at       = var.token_expired_at
}

resource "tfe_team_members" "this" {
  count     = var.members != null ? 1 : 0
  team_id   = tfe_team.this.id
  usernames = var.members
}
