output "name" {
  value       = tfe_team.this.name
  description = "The name of the team."
}

output "id" {
  value       = tfe_team.this.id
  description = "The ID of the team."
}

output "token" {
  value       = try(tfe_team_token.this[0].token, null)
  description = "The API team token."
  sensitive   = true
}
