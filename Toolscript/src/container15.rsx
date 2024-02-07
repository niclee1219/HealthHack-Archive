<Container
  id="container15"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle15"
      value="#### Cost Savings"
      verticalAlign="center"
    />
  </Header>
  <View id="7290c" viewKey="View 1">
    <Icon
      id="icon12"
      horizontalAlign="right"
      icon="bold/interface-time-clock-nine-to-five"
      style={{ ordered: [{ color: "rgb(41, 203, 151)" }] }}
      styleVariant="transparent"
    />
    <Text
      id="containerTitle18"
      value="#### Electricity Expenditure"
      verticalAlign="center"
    />
    <Icon
      id="icon7"
      horizontalAlign="right"
      icon="bold/image-flash-1"
      style={{ ordered: [{ color: "rgb(41, 203, 151)" }] }}
      styleVariant="transparent"
    />
    <Text
      id="containerTitle16"
      value="#### Energy Used This Month"
      verticalAlign="center"
    />
    <PlotlyChart
      id="chart8"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "id" },
                { datasource: "{{getDailyUsage2.data['id']}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: null },
                { colors: { ordered: [{ 0: "#1E3A8A" }, { 1: "#3170F9" }] } },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            1: {
              ordered: [
                { label: "energy_used" },
                { datasource: "{{getDailyUsage2.data['energy_used']}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: null },
                { colors: { ordered: [{ 0: "#1E3A8A" }, { 1: "#F59E0B" }] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceJS="{{getDailyUsage2.data}}"
      datasourcePluginId="getDailyUsage2"
      datasourcePluginType="plugin"
      groupByDropdown="archive_on"
      groupByJS="{{getDailyUsage2.data['archive_on']}}"
      isDataTemplateDirty={true}
      isStackSeriesEnabled={true}
      skipDatasourceUpdate={true}
      xAxis="{{getDailyUsage2.data.day}}"
      xAxisDropdown="day"
    />
    <PlotlyChart
      id="chart10"
      chartType="line"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "id" },
                { datasource: "{{query9.data['id']}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#1E3A8A" },
                { colors: { ordered: [] } },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            1: {
              ordered: [
                { label: "carbon_kg" },
                { datasource: "{{query9.data['carbon_kg']}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#3170F9" },
                { colors: { ordered: [] } },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            2: {
              ordered: [
                { label: "With Archive" },
                { datasource: "{{query9.data['expenditure']}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#60A5FA" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            3: {
              ordered: [
                { label: "Predicted Normal Usage" },
                { datasource: "{{query9.data['normal']}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#F59E0B" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            4: {
              ordered: [
                { label: "savings" },
                { datasource: "{{query9.data['savings']}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#FDE68A" },
                { colors: { ordered: [] } },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceJS="{{query9.data}}"
      datasourcePluginId="query9"
      datasourcePluginType="plugin"
      isDataTemplateDirty={true}
      skipDatasourceUpdate={true}
      xAxis="{{query9.data.date}}"
      xAxisDropdown="date"
    />
  </View>
</Container>
