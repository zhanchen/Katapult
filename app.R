#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
# Author: Dr. Chen Zhan
# Email: Chen.Zhan@unisa.edu.au
# Katapult Project
# Date 2022-03-02


# sudo cp app.R /srv/shiny-server/CRC-P/
# sudo chmod -R 775 ./CRC-P/
# sudo su - -c "R -e \"install.packages('')\""
# sudo su - -c "R -e \"update.packages(ask = FALSE, checkBuilt = TRUE)\""
# sudo systemctl restart shiny-server
#
#####


library(shiny)
library(tidyverse)
library(leaflet)
library(geojsonio)
library(shinythemes)
library(hpackedbubble)


ui <- bootstrapPage(
  
  navbarPage(
    
    theme = shinytheme("flatly"), collapsible = TRUE,
    HTML('<a style="text-decoration:none;cursor:default;color:#FFFFFF;" class="active" href="#">Katapult Project</a>'),
    windowTitle = "Katapult",id = 'navbar',
    
    #### tabPanel #####
    
    source(file.path("ui", "ui_mapper.R"),  local = TRUE)$value,
    source(file.path("ui", "ui_bubble.R"),  local = TRUE)$value
    
    ) # end navbarPage
    
)
  
server <- function(input, output, session) {

  source(file.path("server", "server_mapper.R"),  local = TRUE)$value
  source(file.path("server", "server_bubble.R"),  local = TRUE)$value
  
}

# Run the application 
shinyApp(ui = ui, server = server)
