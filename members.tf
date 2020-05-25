# members.tf

/*
   A Heroku Team Member receives access to everything owned by the Team. To create a
   Heroku Team, use the New Team feature of Heroku Dashboard.

   Reference: https://www.terraform.io/docs/providers/heroku/r/team_member.html
*/

# Adds a Heroku user to a Heroku team as a member.
resource "heroku_team_member" "team-member" {
  team  = var.heroku_team_name
  email = var.heroku_email
  role  = "admin"
}