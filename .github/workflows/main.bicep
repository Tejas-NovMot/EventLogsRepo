param workspaces_law_eventlogsmanagement_name string = 'bicep-law-eventlogsmanagement' 

resource workspaces_law_eventlogsmanagement_name_resource 'Microsoft.OperationalInsights/workspaces@2023-09-01' = {
  name: workspaces_law_eventlogsmanagement_name
  location: 'northeurope'
  properties: {
    sku: {
      name: 'pergb2018'
    }
    retentionInDays: 30
    features: {
      legacy: 0
      searchVersion: 1
      enableLogAccessUsingOnlyResourcePermissions: true
    }
    workspaceCapping: {
      dailyQuotaGb: json('-1')
    }
    publicNetworkAccessForIngestion: 'Enabled'
    publicNetworkAccessForQuery: 'Enabled'
  }
}

resource workspaces_law_eventlogsmanagement_name_2b9bb2a8_1340_47a3_8b21_faaad9303bd5_officeactivityfunction 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_law_eventlogsmanagement_name_resource
  name: '2b9bb2a8-1340-47a3-8b21-faaad9303bd5_officeactivityfunction'
  properties: {
    category: 'Event Logs_Office'
    displayName: 'OfficeActivityFunction'
    version: 2
    functionAlias: 'OfficeActivityFunction'
    query: 'workspace("3811ac78-86e7-489c-aedf-4fa669a70aca").OfficeActivity'
  }
}
