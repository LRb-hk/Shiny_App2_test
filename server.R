
library(shiny)
library(ggplot2)
library(DT)

# Sys.setlocale(category="LC_ALL", locale="cht")

#commitment <- read.csv("commitment.csv",sep="\t")

# datatable(expenditure) %>% formatCurrency(10:13, '$', digits = 0) 


function(input, output) {
  
  
  # choose columns to display
  # diamonds2 = diamonds[sample(nrow(diamonds), 1000), ]
  output$mytable1 <- DT::renderDataTable({
    #DT::datatable(expenditure[, input$show_vars, drop = FALSE])
    #DT::datatable(expenditure3[, input$show_vars, drop = FALSE])
    DT::datatable(expenditure, filter = 'top',options = list(orderClasses = TRUE, pageLength = 50) ) 
  })
  
  
}
