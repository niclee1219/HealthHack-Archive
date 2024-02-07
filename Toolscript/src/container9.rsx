<Container
  id="container9"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader="false"
>
  <View id="1b25d" viewKey="View 1">
    <ProgressCircle
      id="progressCircle1"
      horizontalAlign="center"
      tooltipText="Optimisation Level"
      value="85"
    />
    <Text id="text18" value="**Weather**" verticalAlign="center" />
    <Statistic
      id="statistic1"
      currency="USD"
      enableTrend={true}
      icon="bold/interface-weather-temperature"
      label="Temperature"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [
          { color: "" },
          { iconBackground: "rgb(41, 203, 151)" },
          { positive: "rgb(41, 203, 151)" },
        ],
      }}
      value="{{getTemperature.rawData.items[0].readings[0].value}}"
    >
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="getTemperature"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getWeather"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getHumidity"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Statistic>
    <Statistic
      id="statistic2"
      currency="USD"
      enableTrend={true}
      icon="bold/interface-weather-cloud-2-alternate"
      label="Humidity"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [
          { color: "" },
          { iconBackground: "rgb(41, 203, 151)" },
          { positive: "rgb(41, 203, 151)" },
        ],
      }}
      value="{{getHumidity.rawData.items[0].readings[0].value}}
"
    >
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="getHumidity"
        type="datasource"
        waitMs="1000"
        waitType="throttle"
      />
    </Statistic>
    <Icon
      id="icon6"
      horizontalAlign="center"
      icon="bold/interface-weather-cloud-1-alternate"
      style={{ ordered: [{ color: "rgb(41, 203, 151)" }] }}
      styleVariant="transparent"
    />
    <Text
      id="text19"
      horizontalAlign="right"
      value="**Optimisation Level**"
      verticalAlign="center"
    />
    <Text
      id="text17"
      value="{{getWeather.rawData.items[0].forecasts[18].forecast}}"
      verticalAlign="center"
    />
  </View>
</Container>
