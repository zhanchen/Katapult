tabPanel("Bubble", value = 'tab_Bubble_Navbar',
         
         
         tabsetPanel(type = "pills", id = 'tab_Bubble_tabsets',
                     
                     tabPanel("Keywords", 
                              
                              
                              hpackedbubbleOutput('tab_Bubble_keywords')
                              
                              
                              ), # end tab keywords
                     
                     tabPanel("Entities" ),
                     
                     ) # end tabsetPanel
         
         
)