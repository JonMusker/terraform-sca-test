resource "sca_policy" "rmg-demo-az-muskernet" {
  name         = "RMG-Demo-Azure-Muskernet"
  description  = "Grants access to roles for subscriptions in Azure tenant Muskernet"
  csp          = "AZURE"
  roles        = [
     {
      entity_id        = "/subscriptions/1d1f0af3-44c7-4ee3-ab28-3f41eefa34b7/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"   #Contributor
      entity_source_id = "subscriptions/1d1f0af3-44c7-4ee3-ab28-3f41eefa34b7" #Muskernet-Subscription 2
      workspace_type   = "subscription"
      organization_id  = "2c6fb0b2-1423-4643-bb59-28243dbe4011"
    },
    {
      entity_id        = "/subscriptions/1d1f0af3-44c7-4ee3-ab28-3f41eefa34b7/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"   #Reader
      entity_source_id = "subscriptions/1d1f0af3-44c7-4ee3-ab28-3f41eefa34b7" #Muskernet-Subscription 2
      workspace_type   = "subscription"
      organization_id  = "2c6fb0b2-1423-4643-bb59-28243dbe4011"
    },
    {
      entity_id        = "/subscriptions/d66270fc-630f-4ade-b4d3-e2c134a1cae5/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"   #Reader
      entity_source_id = "subscriptions/d66270fc-630f-4ade-b4d3-e2c134a1cae5" #Muskernet-Subscription1
      workspace_type   = "subscription"
      organization_id  = "2c6fb0b2-1423-4643-bb59-28243dbe4011"
    } /*,
    {
      entity_id        = "/subscriptions/d66270fc-630f-4ade-b4d3-e2c134a1cae5/providers/Microsoft.Authorization/roleDefinitions/8e3af657-a8ff-443c-a75c-2fe8c4bcb635"   #Owner
      entity_source_id = "subscriptions/d66270fc-630f-4ade-b4d3-e2c134a1cae5" #Muskernet-Subscription1
      workspace_type   = "subscription"
      organization_id  = "2c6fb0b2-1423-4643-bb59-28243dbe4011"
    } */
    
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