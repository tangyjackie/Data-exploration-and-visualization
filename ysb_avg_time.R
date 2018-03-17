#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


library(dplyr)
library(ggplot2)
library(magrittr)
library(xts)
library(shiny)

#C:/Users/Jackie/Documents/YSB/simple_app.R/
full_file <- read.csv("mergedDataV1.csv", header = TRUE, check.names = FALSE)


full_file$diff_days <- difftime(as.POSIXct(full_file$ExitDate), as.POSIXct(full_file$EntryDate, tz="UTC"), units="days")
full_file$ProgramCategory <- as.character(full_file$ProgamSubCategory)


full_file$entry_year <- substring(full_file$EntryDate, 1, 4)

full_file$exit_year <- substring(full_file$ExitDate, 1, 4)


# Define UI for application that plots features of movies 
ui <- fluidPage(
  fluidRow(column(width = 10, align = "center", style = "font-size: 20pt; 
                                     line-height: 40pt; 
                  width = 100",
                  tags$strong("YSB - Average # of days spent in program subcategory by exit year"))),
  
  # Sidebar layout with a input and output definitions 
  sidebarLayout(
    
    # Inputs
    sidebarPanel(
      
      # Select variable for y-axis
      selectInput(inputId = "y", 
                  label = "Program",
                  choices = c("Housing", "School Program", "Shelter", "Outreach", "Mobile Crisis", "Mobile Intensive", "Custody", "Short-term Housing", "Long-term Housing", "Counselling", "Trusteeship", "Case Management", "Intake", "Legal", "Intensive"), 
                  selected = "Housing"),
      
      # Select variable for starting time
      selectInput(inputId = "y1", 
                  label = "From",
                  choices = c(1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017), 
                  selected = 2008),
      
      
      # Select variable for ending time
      selectInput(inputId = "y2", 
                  label = "To",
                  choices = c(1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017), 
                  selected = 2017)
      
      
      

    ),
    
    # Outputs
    mainPanel(
      plotOutput(outputId = "bubbleplot")
    )
  )
)


# Define server function required to create the scatterplot
server <- function(input, output) {
  
  # Create scatterplot object the plotOutput function is expecting
  output$bubbleplot <- renderPlot({
    p1 <- reactive(subset(full_file, diff_days >= 0 & Active.y == 1 & ProgamSubCategory == input$y & exit_year <= input$y2 & exit_year >= input$y1 ) %>% group_by(Program, exit_year)%>%
                       summarise(mean = mean(diff_days)) %>%
                       mutate(mean = round(as.numeric(mean), 0))
                     )

    
    ggplot(data = p1(), aes(x = exit_year, y = Program, 
                     label=mean)) + 
      geom_point(aes(size = mean*10, colour = mean),  alpha = 0.7) +
      #labs(title = "Average number of days spent in program by exit year") + 
      labs(x = "Exit Year") + 
      labs(y= "Average number of days spent in program")  + 
      theme(plot.title = element_text(hjust = 0.5)) + 
      scale_colour_gradient(low = "lightblue", high = "magenta") +
      geom_text(hjust = 0.4, vjust = 0.2, size = 4) + 
      scale_size(range = c(1,50), guide = "none") +
      theme(legend.title = element_blank())
  })
}

# Create a Shiny app object
shinyApp(ui = ui, server = server)
