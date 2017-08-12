
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(ggplot2)  


fluidPage(
  title = 'Testing',
  sidebarLayout(
    sidebarPanel(
      # selectInput(inputId = "YR",
      #             label = "Year of Financial Budget:",
      #             choices = c(2015, 2016, 2017),
      #             selected = 2017),
      conditionalPanel(
        'input.dataset === "expenditure"',
        helpText("Expenditure 支出; in thousands")
        #checkboxGroupInput('show_vars', 'Columns in expenditure3 to show:',
        #                   names(expenditure), selected = names(expenditure))
      )
      ,width=1),
    mainPanel(
      tabsetPanel(
        id = 'dataset',
        tabPanel('expenditure', DT::dataTableOutput('mytable1'))### will be referred by the side panel
       )
    )
  )
)
