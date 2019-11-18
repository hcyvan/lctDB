library(shiny)
library(ggplot2)  # for the diamonds dataset

ui <- fluidPage(
  div(
    h1("lctDB",style = "font-size:300%"),
    h4("LncRNA Cis and Trans transcriptional regulation  of Prostate Cancer",style = "font-size:150%"),
    sidebarLayout(
      sidebarPanel(
          p(strong("lctDB",style = "font-size:200%")," is a database about lncRNA cis and trans transcriptional regulation  of Prostate Cancer."),
          p("LncRNA plays an important role in the transcriptional regulation of prostate cancer. It can bind to DNA and form RNA:DNA:DNA triplex structure to regulate the transcription of other genes."),
          p("We simulated the cis- and trans-binding of lncRNA to DNA by bioinformatics methods to predict the potential cis- and trans-regulation of lncRNA to downstream genes. By calculating the Pearson correlation between these lncRNAs and genes, we can further confirm this regulatory relationship."),
          width=3
      ),
      mainPanel(
        tabsetPanel(
          id = 'dataset',
          tabPanel(
            "Home", 
            br(),
            p(strong("Cis:"),"LncRNA binds in situ to its NDA, regulating the transcription of nearby genes."),
            
            p(strong("Trans:"),"lncRNA binds to the distal DNA and regulates the transcription of genes near the triplex."),
            img(src="home.png"),
            
          ),
          tabPanel("Cis", DT::dataTableOutput("mytable2")),
          tabPanel("Trans", DT::dataTableOutput("mytable3"))
        )
      )
      
    ),
    style = "font-size:120%"
  )

)


