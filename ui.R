suppressMessages(library(shiny))
suppressMessages(library(RCurl))
suppressMessages(library(ggmap))
suppressMessages(library(markdown))
suppressMessages(library(rCharts))
suppressMessages(library(rMaps))

shinyUI(navbarPage(title = "R User Groups Around the World",
                   
                   ## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                   ## HTML Layout Settings
                   ## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                   
                   ## Use a customized bootstrap theme
                   theme = 'bootstrap.css',
                   collapsable = TRUE,
                   
                   ## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                   ## Tab "About"
                   ## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                      
                   tabPanel("About", includeMarkdown("doc/intro.md")),
                   
                   ## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                   ## Tab "Maps"
                   ## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                      
                   navbarMenu("Maps",
                              tabPanel("All R User Groups",
                                       tags$style('.leaflet {height: 600px;}'),
                                       showOutput('map_all', 'leaflet')),
                              tabPanel("Europe",
                                       tags$style('.leaflet {height: 600px;}'),
                                       showOutput('map_europe', 'leaflet')),
                              tabPanel("United States",
                                       tags$style('.leaflet {height: 600px;}'),
                                       showOutput('map_usa', 'leaflet')),
                              
                              tabPanel("--------------------"),
                              
                              tabPanel("Asia",
                                       tags$style('.leaflet {height: 600px;}'),
                                       showOutput('map_asia', 'leaflet')),
                              tabPanel("North America",
                                       tags$style('.leaflet {height: 600px;}'),
                                       showOutput('map_n_america', 'leaflet')),
                              tabPanel("Middle East / Africa",
                                       tags$style('.leaflet {height: 600px;}'),
                                       showOutput('map_mea', 'leaflet')),
                              tabPanel("Oceania",
                                       tags$style('.leaflet {height: 600px;}'),
                                       showOutput('map_oceania', 'leaflet')),
                              tabPanel("South / Central America",
                                       tags$style('.leaflet {height: 600px;}'),
                                       showOutput('map_sc_america', 'leaflet')),
                              
                              tabPanel("--------------------"),
                              
                              tabPanel("Australia",
                                       tags$style('.leaflet {height: 600px;}'),
                                       showOutput('map_australia', 'leaflet')),
                              tabPanel("Canada",
                                       tags$style('.leaflet {height: 600px;}'),
                                       showOutput('map_canada', 'leaflet')),
                              tabPanel("Germany",
                                       tags$style('.leaflet {height: 600px;}'),
                                       showOutput('map_germany', 'leaflet')),
                              tabPanel("India",
                                       tags$style('.leaflet {height: 600px;}'),
                                       showOutput('map_india', 'leaflet')),
                              tabPanel("Japan",
                                       tags$style('.leaflet {height: 600px;}'),
                                       showOutput('map_japan', 'leaflet')),
                              tabPanel("United Kingdom",
                                       tags$style('.leaflet {height: 600px;}'),
                                       showOutput('map_uk', 'leaflet'))
                              
                   ),
                   
                   ## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                   ## Tab "Data"
                   ## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                   
                   navbarMenu("Data", 
                              tabPanel("Data (Original)",
                                       HTML("<h3>Original RUGs Data from Revolution Analytics</h3>"),
                                       downloadButton('dl_ori', 'Download CSV'),
                                       HTML("<p> <br></p>"),
                                       dataTableOutput("data_original")
                              ),
                              tabPanel("Data (Modified)",
                                       HTML("<h3>Modified RUGs Data with Lat/Lon Info</h3>"),
                                       downloadButton('dl_mod', 'Download CSV'),
                                       HTML("<p> <br></p>"),
                                       dataTableOutput("data_modified")
                              )
                   ),
                   
                   ## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                   ## Tab "More"
                   ## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                   
                   navbarMenu("More", 
                              tabPanel("Code", includeMarkdown("doc/code.md")),
                              tabPanel("Contact", includeMarkdown("doc/contact.md"))
                   )

))
