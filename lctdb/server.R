source("helpers.R")

lnc.cis.cor <- readRDS("data/lnc.cis.cor.rds")

server <- function(input, output) {
  
  # choose columns to display
  diamonds2 = diamonds[sample(nrow(diamonds), 1000), ]
  output$mytable1 <- DT::renderDataTable({
    DT::datatable(diamonds2[, input$show_vars, drop = FALSE])
  })
  
  # sorted columns are colored now because CSS are attached to them ### mtcars
  output$mytable2 <- DT::renderDataTable({
    DT::datatable(lnc.cis.cor, options = list(orderClasses = TRUE),rownames = FALSE)
  })
  
  # customize the length drop-down menu; display 5 rows per page by default
  output$mytable3 <- DT::renderDataTable({
    DT::datatable(iris, options = list(lengthMenu = c(5, 30, 50), pageLength = 5))
  })
  
}