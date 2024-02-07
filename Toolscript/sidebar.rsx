<SidebarFrame
  id="sidebarFrame1"
  footerPaddingType="normal"
  headerPaddingType="normal"
  isHiddenOnMobile={true}
  isInEditMode={false}
  paddingType="normal"
  style={{
    ordered: [
      { background: "rgb(56, 73, 136)" },
      { border: "rgb(250, 250, 250)" },
    ],
  }}
>
  <Image
    id="image1"
    fit="contain"
    heightType="fixed"
    horizontalAlign="center"
    retoolStorageFileId="a3c235f7-0c61-4d3b-a414-7c1b0a5e7fc5"
    src="https://placekitten.com/400/300"
    srcType="retoolStorageFileId"
  />
  <Tabs
    id="tabs1"
    alignment="center"
    itemMode="static"
    navigateContainer={true}
    targetContainerId="tabbedContainer1"
    value="{{ self.values[0] }}"
  >
    <Option id="a7456" value="Tab 1" />
    <Option id="6aba1" value="Tab 2" />
    <Option id="1d37f" value="Tab 3" />
  </Tabs>
</SidebarFrame>
