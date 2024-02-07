<GlobalFunctions>
  <SqlQueryUnified
    id="getData"
    query={include("./lib/getData.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="22e50d11-f0ca-4f09-96e4-50e5b99a2b52"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <JavascriptQuery
    id="chartData"
    query={include("./lib/chartData.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="getDailyUsage"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/getDailyUsage.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="22e50d11-f0ca-4f09-96e4-50e5b99a2b52"
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getTopRooms"
    notificationDuration={4.5}
    query={include("./lib/getTopRooms.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="22e50d11-f0ca-4f09-96e4-50e5b99a2b52"
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <RESTQuery
    id="getTemperature"
    query="https://api.data.gov.sg/v1/environment/air-temperature"
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
  />
  <RESTQuery
    id="getHumidity"
    query="https://api.data.gov.sg/v1/environment/relative-humidity"
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
  />
  <RESTQuery
    id="getWeather"
    query="https://api.data.gov.sg/v1/environment/2-hour-weather-forecast"
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
  />
  <SqlQueryUnified
    id="getDailyUsage2"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/getDailyUsage2.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="22e50d11-f0ca-4f09-96e4-50e5b99a2b52"
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query9"
    notificationDuration={4.5}
    query={include("./lib/query9.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="22e50d11-f0ca-4f09-96e4-50e5b99a2b52"
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query10"
    notificationDuration={4.5}
    query={include("./lib/query10.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="22e50d11-f0ca-4f09-96e4-50e5b99a2b52"
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <JavascriptQuery
    id="LinearRegression"
    notificationDuration={4.5}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="getRoomStats"
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="22e50d11-f0ca-4f09-96e4-50e5b99a2b52"
    showSuccessToaster={false}
  />
  <Function id="transformer1" />
  <WorkflowRun
    id="try1"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceName="WorkflowRun"
    runWhenModelUpdates={true}
    showSuccessToaster={false}
    workflowId="abf283c3-a838-4cf8-9d75-87f98ce0a738"
    workflowParams=""
  />
  <WorkflowRun
    id="query14"
    notificationDuration={4.5}
    resourceName="WorkflowRun"
    showSuccessToaster={false}
    workflowId="a2ca7ece-b19b-48d9-8c32-ea0b66c33c7b"
    workflowParams=""
  />
  <SqlQueryUnified
    id="query15"
    notificationDuration={4.5}
    query={include("./lib/query15.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="22e50d11-f0ca-4f09-96e4-50e5b99a2b52"
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <WorkflowRun
    id="query16"
    resourceName="WorkflowRun"
    resourceTypeOverride=""
    workflowId="abf283c3-a838-4cf8-9d75-87f98ce0a738"
    workflowParams={include("./lib/query16.json", "string")}
  />
  <WorkflowRun
    id="query17"
    isMultiplayerEdited={false}
    resourceName="WorkflowRun"
    resourceTypeOverride=""
    runWhenModelUpdates={true}
    workflowId="df33040f-5151-4df2-bce2-ae923342bceb"
    workflowParams={include("./lib/query17.json", "string")}
  />
</GlobalFunctions>
