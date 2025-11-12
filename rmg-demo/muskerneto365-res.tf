resource "sca_policy" "rmg-demo-az-muskernetO365" {
  name         = "RMG-Demo-Azure-MuskernetO365"
  description  = "Grants access to roles for subscriptions in Azure tenant MuskernetO365"
  csp          = "AZURE"
  roles        = [
     {
      entity_id        = "/subscriptions/78e4f18f-7011-4870-af85-e5c33d019b63/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"   #Contributor
      entity_source_id = "subscriptions/78e4f18f-7011-4870-af85-e5c33d019b63"
      workspace_type   = "subscription"
      organization_id  = "d8a8541b-d35c-4c6b-9be7-553bd08213d9"
    },
    {
      entity_id        = "/subscriptions/78e4f18f-7011-4870-af85-e5c33d019b63/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"   #Reader
      entity_source_id = "subscriptions/78e4f18f-7011-4870-af85-e5c33d019b63" #MuskernetO365-Sub1
      workspace_type   = "subscription"
      organization_id  = "d8a8541b-d35c-4c6b-9be7-553bd08213d9"
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
    to_time              = "19:00"
    max_session_duration = 2
    time_zone            = "Europe/London"
  }
}