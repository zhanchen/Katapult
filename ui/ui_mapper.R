tabPanel("Mapper", value = 'tab_Mapper_Navbar',
         
         div(class="outer",
             tags$head(includeCSS("styles.css")),
             
             ### map ###
             leafletOutput("mymap", width="100%", height="100%"),
             
             #### Company info ####
             absolutePanel(id = "controls", class = "panel panel-default",
                           top = 75, left = 55, width = 300, fixed=TRUE,
                           draggable = TRUE, height = "auto",
                           
                           span(tags$i(h6("Company info are here")), style="color:#045a8d"),
                           htmlOutput('tab_Mapper_CompanyInfo')
                           
                           
             ),
             
             
             ### Keywords ####
             absolutePanel(id = "controls", class = "panel panel-default",
                           top = 75, right = 55, width = 150, fixed=TRUE,
                           draggable = TRUE, height = "auto",
                           
                           span(tags$i(h6("Keywords are here")), style="color:#045a8d"),
                           
             ),
             
             
         ), # end div
         
)