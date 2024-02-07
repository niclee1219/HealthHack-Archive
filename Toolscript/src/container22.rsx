<Container
  id="container22"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle20"
      value="#### Room Energy Performance"
      verticalAlign="center"
    />
  </Header>
  <View id="dd633" viewKey="View 1">
    <Statistic
      id="statistic7"
      currency="USD"
      label="Requires Optimization"
      labelCaption="This month"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue <= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue="0.12"
      showSeparators={true}
      value="{{query16.data.outliers.length}}"
    />
    <PlotlyChart
      id="chart11"
      chartType="scatter"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "Energy Consumed (kWh)" },
                { datasource: "{{query15.data['energy_used']}}" },
                { chartType: "scatter" },
                { aggregationType: "sum" },
                { color: "#1E3A8A" },
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
            1: {
              ordered: [
                { label: "floor_area" },
                { datasource: "{{query15.data['floor_area']}}" },
                { chartType: "scatter" },
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
                { label: "energy_perm_2" },
                { datasource: "{{query15.data['energy_perm_2']}}" },
                { chartType: "scatter" },
                { aggregationType: "sum" },
                { color: "#60A5FA" },
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
            3: {
              ordered: [
                { label: "Temperature" },
                { datasource: "{{query15.data['Temperature']}}" },
                { chartType: "scatter" },
                { aggregationType: "sum" },
                { color: "#DBEAFE" },
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
            4: {
              ordered: [
                { label: "Humidity" },
                { datasource: "{{query15.data['Humidity']}}" },
                { chartType: "scatter" },
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
      datasourceJS="{{query15.data}}"
      datasourcePluginId="query15"
      datasourcePluginType="plugin"
      events={[
        {
          ordered: [
            { event: "select" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "query16" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      groupByDropdown={null}
      isDataTemplateDirty={true}
      skipDatasourceUpdate={true}
      xAxis="{{query15.data['energy_perm_2']}}"
      xAxisDropdown="energy_perm_2"
    />
    <Statistic
      id="statistic8"
      currency="USD"
      label="Operating Normally"
      labelCaption="This month"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue <= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue="-0.01"
      showSeparators={true}
      value="94"
    />
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query15.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "88335" },
            { columnId: "93533" },
            { operator: "isOneOf" },
            { value: "{{query16.data.outliers}}" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="93533"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="93533"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={31.546875}
        summaryAggregationMode="none"
      />
      <Column
        id="274cd"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="energy_used"
        label="Energy used"
        placeholder="Enter value"
        position="center"
        size={88.171875}
        summaryAggregationMode="none"
      />
      <Column
        id="5e010"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="floor_area"
        label="Floor area"
        placeholder="Enter value"
        position="center"
        size={73.875}
        summaryAggregationMode="none"
      />
      <Column
        id="407f2"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="energy_perm_2"
        label="Energy perm 2"
        placeholder="Enter value"
        position="center"
        size={100.78125}
        summaryAggregationMode="none"
      />
      <Column
        id="a24ed"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Temperature"
        label="Temperature"
        placeholder="Enter value"
        position="center"
        size={90.453125}
        summaryAggregationMode="none"
      />
      <Column
        id="a4be7"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Humidity"
        label="Humidity"
        placeholder="Enter value"
        position="center"
        size={68.296875}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="selectRow"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query16"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Container
      id="container23"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle21"
          value="#### Current Energy Usage"
          verticalAlign="center"
        />
      </Header>
      <View id="dd633" viewKey="View 1">
        <PlotlyChart
          id="chart12"
          chartType="line"
          dataseries={{
            ordered: [
              {
                0: {
                  ordered: [
                    { label: "Energy Consumption (kWh)" },
                    {
                      datasource:
                        "{{formatDataAsObject(query17.data)['Energy_consumption_k_wh']}}",
                    },
                    { chartType: "line" },
                    { aggregationType: "sum" },
                    { color: "#1E3A8A" },
                    { colors: { ordered: [] } },
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
          datasourceDataType="array"
          datasourceInputMode="javascript"
          datasourceJS="{{query17.data}}"
          datasourcePluginId="query17"
          datasourcePluginType="plugin"
          events={[
            {
              ordered: [
                { event: "select" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "query16" },
                { targetId: null },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "0" },
              ],
            },
          ]}
          isDataTemplateDirty={true}
          skipDatasourceUpdate={true}
          xAxis="{{formatDataAsObject(query17.data).Time}}"
          xAxisDropdown="Time"
        />
      </View>
    </Container>
  </View>
</Container>
