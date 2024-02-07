<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <View id="6b2f6" viewKey="Home">
    <Text
      id="text14"
      _defaultValue=""
      _disclosedFields={{ array: ["color"] }}
      style={{
        ordered: [
          { color: "rgb(56, 73, 136)" },
          { background: "" },
          { links: "" },
        ],
      }}
      value="# Home"
      verticalAlign="center"
    />
    <Include src="./container9.rsx" />
    <Container
      id="container6"
      footerPaddingType="normal"
      headerPaddingType="normal"
      heightType="fixed"
      hoistFetching={true}
      paddingType="normal"
      showBody={true}
      style={{ ordered: [{ border: "rgba(255, 255, 255, 1)" }] }}
    >
      <View id="bbeb8" viewKey="View 1">
        <Text
          id="containerTitle9"
          _disclosedFields={{ array: ["color"] }}
          style={{ ordered: [{ color: "rgb(56, 73, 136)" }] }}
          value="### Energy Consumption Hourly"
          verticalAlign="center"
        />
        <PlotlyChart
          id="transactionsChart2"
          chartType="line"
          data={include("../lib/transactionsChart2.data.json", "string")}
          dataseries={{
            ordered: [
              {
                0: {
                  ordered: [
                    { label: "transactions" },
                    { datasource: "{{getData.data}}" },
                    { chartType: "line" },
                    { aggregationType: "none" },
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
          datasourceDataType="object"
          datasourceJS="{{getData.data}}"
          datasourcePluginId="getData"
          datasourcePluginType="plugin"
          groupByDropdown="onARCHIVE"
          groupByJS="{{getData.data['onARCHIVE']}}"
          isDataTemplateDirty={true}
          isJsonTemplateDirty={true}
          isStackSeriesEnabled={true}
          layout={include("../lib/transactionsChart2.layout.json", "string")}
          xAxis="{{getData.data['time']}}"
          xAxisDropdown="time"
        />
        <Divider id="divider6" _disclosedFields={{ array: [] }} />
      </View>
    </Container>
    <Container
      id="container14"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Icon
          id="icon5"
          horizontalAlign="center"
          icon="bold/interface-home-4"
          style={{ ordered: [{ color: "rgb(41, 203, 151)" }] }}
          styleVariant="transparent"
        />
        <Text
          id="containerTitle14"
          value="#### Highest Usage"
          verticalAlign="center"
        />
      </Header>
      <View id="807e2" viewKey="View 1">
        <PlotlyChart
          id="chart5"
          dataseries={{
            ordered: [
              {
                0: {
                  ordered: [
                    { label: "Energy Used (kWh)" },
                    { datasource: "{{getTopRooms.data['energy_used']}}" },
                    { chartType: "bar" },
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
                    { datasource: "{{getTopRooms.data['floor_area']}}" },
                    { chartType: "bar" },
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
                    { datasource: "{{getTopRooms.data['energy_perm_2']}}" },
                    { chartType: "bar" },
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
            ],
          }}
          datasourceDataType="object"
          datasourceJS="{{getTopRooms.data}}"
          datasourcePluginId="getTopRooms"
          datasourcePluginType="plugin"
          isDataTemplateDirty={true}
          skipDatasourceUpdate={true}
          xAxis="{{getTopRooms.data['id'].}}"
          xAxisDropdown="id"
          xAxisMode="javascript"
        />
      </View>
    </Container>
    <Container
      id="container12"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Icon
          id="icon3"
          horizontalAlign="center"
          icon="bold/image-flash-2"
          style={{ ordered: [{ color: "rgb(41, 203, 151)" }] }}
          styleVariant="transparent"
        />
        <Text
          id="containerTitle12"
          value="#### Energy Used This Week"
          verticalAlign="center"
        />
      </Header>
      <View id="807e2" viewKey="View 1">
        <PlotlyChart
          id="chart7"
          dataseries={{
            ordered: [
              {
                0: {
                  ordered: [
                    { label: "id" },
                    { datasource: "{{getDailyUsage.data['id']}}" },
                    { chartType: "bar" },
                    { aggregationType: "sum" },
                    { color: null },
                    {
                      colors: { ordered: [{ 0: "#1E3A8A" }, { 1: "#3170F9" }] },
                    },
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
                    { datasource: "{{getDailyUsage.data['energy_used']}}" },
                    { chartType: "bar" },
                    { aggregationType: "sum" },
                    { color: null },
                    {
                      colors: { ordered: [{ 0: "#1E3A8A" }, { 1: "#F59E0B" }] },
                    },
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
          datasourceInputMode="javascript"
          datasourceJS="{{getDailyUsage.data}}"
          datasourcePluginId="getDailyUsage"
          datasourcePluginType="plugin"
          groupByDropdown="archive_on"
          groupByJS="{{getDailyUsage.data['archive_on']}}"
          isDataTemplateDirty={true}
          isStackSeriesEnabled={true}
          skipDatasourceUpdate={true}
          xAxis="{{getDailyUsage.data.day}}"
          xAxisDropdown="day"
        />
      </View>
    </Container>
  </View>
  <View id="cacfd" viewKey="Savings">
    <Text
      id="text15"
      _defaultValue=""
      _disclosedFields={{ array: ["color"] }}
      style={{
        ordered: [
          { color: "rgb(56, 73, 136)" },
          { background: "" },
          { links: "" },
        ],
      }}
      value="# Savings"
      verticalAlign="center"
    />
    <Include src="./container15.rsx" />
    <Container
      id="container16"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Icon
          id="icon8"
          horizontalAlign="center"
          icon="line/image-flash-1"
          style={{ ordered: [{ color: "rgb(41, 203, 151)" }] }}
          styleVariant="transparent"
        />
      </Header>
      <View id="a618a" viewKey="View 1">
        <Statistic
          id="statistic3"
          align="center"
          currency="mWh"
          label="Energy Saved"
          labelCaption="Saved This Month"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue={0.08}
          showSeparators={true}
          suffix="MWh"
          value="57"
        />
      </View>
    </Container>
    <Container
      id="container17"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Icon
          id="icon9"
          altText="Co2 Saved"
          horizontalAlign="center"
          icon="bold/interface-weather-cloud-1"
          style={{ ordered: [{ color: "rgb(41, 203, 151)" }] }}
          styleVariant="transparent"
        />
      </Header>
      <View id="a618a" viewKey="View 1">
        <Statistic
          id="statistic4"
          align="center"
          currency="mWh"
          label="Carbon Emissions"
          labelCaption="Reduction in CO2 emissions"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue="0.03"
          showSeparators={true}
          suffix="tonnes"
          value="2.94"
        />
      </View>
    </Container>
    <Container
      id="container20"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle17"
          value="#### Carbon Footprint"
          verticalAlign="center"
        />
      </Header>
      <View id="a618a" viewKey="View 1">
        <PlotlyChart
          id="chart9"
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
                    { label: "Carbon Emissions" },
                    { datasource: "{{query9.data['carbon_kg']}}" },
                    { chartType: "line" },
                    { aggregationType: "sum" },
                    { color: "#29CB97" },
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
          datasourceDataType="object"
          datasourceJS="{{query9.data}}"
          datasourcePluginId="query9"
          datasourcePluginType="plugin"
          groupByDropdown={null}
          isDataTemplateDirty={true}
          skipDatasourceUpdate={true}
          xAxis="{{query9.data.date}}"
          xAxisDropdown="date"
        />
      </View>
    </Container>
    <Container
      id="container18"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Icon
          id="icon10"
          altText="Co2 Saved"
          horizontalAlign="center"
          icon="bold/money-cash-dollar-coin"
          style={{ ordered: [{ color: "rgb(41, 203, 151)" }] }}
          styleVariant="transparent"
        />
      </Header>
      <View id="a618a" viewKey="View 1">
        <Statistic
          id="statistic5"
          align="center"
          currency="SGD"
          label="Cost Savings"
          labelCaption="Reduction in bills"
          positiveTrend="{{ self.value >= 0 }}"
          prefix="$"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue="0.06"
          showSeparators={true}
          value="10283"
        />
      </View>
    </Container>
    <Container
      id="container19"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Icon
          id="icon11"
          altText="Co2 Saved"
          horizontalAlign="center"
          icon="bold/interface-lighting-light-bulb-on"
          style={{ ordered: [{ color: "rgb(41, 203, 151)" }] }}
          styleVariant="transparent"
        />
      </Header>
      <View id="a618a" viewKey="View 1">
        <Statistic
          id="statistic6"
          align="center"
          currency="SGD"
          formattingStyle="percent"
          label="Cost Savings"
          labelCaption="Energy Savings"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue="0.02"
          showSeparators={true}
          value="0.362"
        />
      </View>
    </Container>
  </View>
  <View id="2437a" viewKey="Insights">
    <Text
      id="text16"
      _defaultValue=""
      _disclosedFields={{ array: ["color"] }}
      style={{
        ordered: [
          { color: "rgb(56, 73, 136)" },
          { background: "" },
          { links: "" },
        ],
      }}
      value="# Insights"
      verticalAlign="center"
    />
    <Container
      id="container21"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle19"
          value="#### Floor Plan"
          verticalAlign="center"
        />
      </Header>
      <View id="96f64" viewKey="View 1">
        <Image
          id="image2"
          horizontalAlign="center"
          retoolStorageFileId="af65b5c2-db37-4d6a-a742-5cc310aa09ec"
          src="https://placekitten.com/400/300"
          srcType="retoolStorageFileId"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="query14"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Image>
      </View>
    </Container>
    <Include src="./container22.rsx" />
  </View>
</Container>
