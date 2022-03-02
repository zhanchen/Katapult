
# worldcountry = geojson_read("https://raw.githubusercontent.com/eparker12/nCoV_tracker/master/input_data/50m.geojson", what = "sp")

locations = read_csv('data/locations.csv')


basemap = leaflet(locations) %>% addTiles() %>% addMarkers(popup = ~name, label = ~name) %>% addProviderTiles(providers$CartoDB.Positron)

output$mymap <- renderLeaflet({basemap})
output$tab_Mapper_CompanyInfo <- renderUI({HTML(paste(locations$name, collapse = "<br/>"))})