resource "sca_policy" "rmg-demo-gcp-muskernetgcp001" {
  name         = "RMG-Demo-Azure-GCP"
  description  = "Grants access to roles for subscriptions in GCP Org"
  csp          = "GCP"
  roles        = [
     {
      entity_id        = "roles/editor"  
      entity_source_id = "curious-idea-449314-v7"   #muskernetgcp001
      workspace_type   = "project"
      organization_id  = "836050760446"   #muskernetgcp001.gcp.muskernet.com
    },
    {
      entity_id        = "roles/viewer"   
      entity_source_id = "curious-idea-449314-v7"   #muskernetgcp001
      workspace_type   = "project"
      organization_id  = "836050760446"   #muskernetgcp001.gcp.muskernet.com
    }
  ]
  identities   = [
    {
      entity_name       = "ACME Cloud Admins"
      entity_source_id  = "id"
      entity_class      = "role"
    }
  ]
  access_rules = {
    days = [
      "monday",
      "tuesday",
      "wednesday",
      "thursday",
      "friday"
    ]
    from_time            = "09:00"
    to_time              = "21:00"
    max_session_duration = 2
    time_zone            = "Europe/London"
  }
}